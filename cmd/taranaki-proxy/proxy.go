package main

import (
	"context"
	"fmt"
	"io"
	"net/http"
	"strconv"
	"strings"

	"github.com/go-chi/chi/v5"
	"github.com/go-chi/chi/v5/middleware"
	"github.com/redis/go-redis/v9"
)

type Proxy struct {
	host   string
	port   int
	db     int
	routes []Route
	client *redis.Client
}

type Route struct {
	pattern  string
	key      string
	readonly bool
}

func NewProxy(host string, port int, db int) *Proxy {
	client := redis.NewClient(&redis.Options{
		Addr:     host + ":" + strconv.Itoa(port),
		Password: "",
		DB:       db,
		Protocol: 3,
	})

	return &Proxy{
		host:   host,
		port:   port,
		db:     db,
		routes: []Route{},
		client: client,
	}
}

func (s *Proxy) AddRoute(pattern string, key string, readonly bool) {
	fmt.Printf("Route: %s -> %s:%d%s\n", pattern, s.host, s.port, key)
	s.routes = append(s.routes, Route{pattern: pattern, key: key, readonly: readonly})
}

func (s *Proxy) Run(address string) {
	fmt.Printf("Starting proxy on %s\n", address)

	router := chi.NewRouter()
	router.Use(middleware.Logger)

	for _, route := range s.routes {

		// catch-all route for the pattern provided
		router.HandleFunc(route.pattern, func(w http.ResponseWriter, r *http.Request) {
			s.handleRequest(route, r, w)
		})
	}

	http.ListenAndServe(address, router)
}

func (s *Proxy) handleRequest(route Route, request *http.Request, responseWriter http.ResponseWriter) {

	// command
	var args []interface{}

	// command name
	if route.readonly {
		args = append(args, "PY.HTTP_RO")
	} else {
		args = append(args, "PY.HTTP")
	}

	// key
	args = append(args, route.key)

	// method
	args = append(args, request.Method)

	// url/path + query
	value := request.URL.Path
	if len(request.URL.RawQuery) > 0 {
		value = value + "?" + request.URL.RawQuery
	}
	args = append(args, value)

	// headers
	for name, values := range request.Header {
		for _, value := range values {
			args = append(args, "HEADER")
			args = append(args, name+": "+value)
		}
	}

	// content
	body, err := io.ReadAll(request.Body)
	if err != nil {
		http.Error(responseWriter, "failed to read body", http.StatusBadRequest)
		return
	}
	defer request.Body.Close()
	if len(body) > 0 {
		args = append(args, "CONTENT")
		args = append(args, body)
	}

	// send command
	// todo: which context?
	var ctx = context.Background()
	items, err := s.client.Do(ctx, args...).Slice()
	if err != nil {
		http.Error(responseWriter, "failed to read RESPonse", http.StatusBadRequest)
	}

	var status int64 = 0
	var rawHeaders []string
	var content []byte
	for i, item := range items {
		fmt.Println(item)
		if i == 0 {
			// status
			int64Item, ok := item.(int64)
			if !ok {
				http.Error(responseWriter, "status type mismatch", http.StatusBadRequest)
			}
			status = int64Item
		} else {
			switch v := item.(type) {
			case string:
				// header
				rawHeaders = append(rawHeaders, v)
			case []interface{}:
				if len(v) > 0 {
					fmt.Printf("%T\n", v[0])
					switch v0 := v[0].(type) {
					case string:
						content = []byte(v0)
					case []byte:
						content = v0
					}
				}
			}
		}
	}

	// response
	for _, header := range rawHeaders {
		key, value, found := strings.Cut(header, ":")
		if found {
			responseWriter.Header().Add(strings.TrimRight(key, " "), strings.TrimLeft(value, " "))
		}
	}
	responseWriter.WriteHeader(int(status))
	responseWriter.Write(content)
}
