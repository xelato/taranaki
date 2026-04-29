package main

import (
	"fmt"

	"github.com/spf13/cobra"
	"log"
	"os"
)

var taranakiHost string
var taranakiPort int
var taranakiDb int

// target key
var targetKey string

var rootCmd = &cobra.Command{
	Use:   "taranaki-proxy",
	Short: "Taranaki proxy server",
	Long:  `Forward HTTP traffic to handlers that run on Taranaki Server`,
}

var runCmd = &cobra.Command{
	Use:   "run",
	Short: "run proxy server",
	Long:  `Run proxy server`,
	Run: func(cmd *cobra.Command, args []string) {
		if !isValidPort(taranakiPort) {
			log.Fatalf("invalid port: %d", taranakiPort)
		}
		if !isValidDb(taranakiDb) {
			log.Fatalf("invalid db number %d", taranakiDb)
		}
		fmt.Println(args)
		fmt.Printf("Starting proxy for %s:%d #%d\n", taranakiHost, taranakiPort, taranakiDb)
		fmt.Printf("Target key: %s\n", targetKey)
	},
}

func init() {
	// global flags
	rootCmd.PersistentFlags().StringVar(&taranakiHost, "taranaki-host", "localhost", "Taranaki host")
	rootCmd.PersistentFlags().IntVar(&taranakiPort, "taranaki-port", 6379, "Taranaki port")
	rootCmd.PersistentFlags().IntVar(&taranakiDb, "taranaki-db", 0, "Taranaki db number (default 0)")

	// run
	runCmd.Flags().StringVar(&targetKey, "key", "", "Target key")
	runCmd.MarkFlagRequired("key")

	// subcommands
	rootCmd.AddCommand(runCmd)
}

func isValidPort(port int) bool {
	return port > 0 && port <= 65535
}

func isValidDb(db int) bool {
	return db >= 0 && db < 16
}

func main() {
	err := rootCmd.Execute()
	if err != nil {
		os.Exit(1)
	}
}
