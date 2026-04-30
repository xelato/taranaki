package main

import "fmt"

type Proxy struct {
	host string
	port int
	db   int
}

func NewProxy(host string, port int, db int) *Proxy {
	return &Proxy{
		host: host,
		port: port,
		db:   db,
	}
}

func (s *Proxy) AddRoute(path string, key string) {
	fmt.Printf("Route: %s -> %s:%d%s\n", path, s.host, s.port, key)
}

func (s *Proxy) Run(address string) {
	fmt.Printf("Starting proxy on %s\n", address)
}
