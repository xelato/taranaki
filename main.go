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
		fmt.Println(args)
		fmt.Println("Starting proxy...")
	},
}

func init() {
	// global flags
	rootCmd.PersistentFlags().StringVar(&taranakiHost, "host", "localhost", "Taranaki host")
	rootCmd.PersistentFlags().IntVar(&taranakiPort, "port", 6379, "Taranaki port")
	rootCmd.PersistentFlags().IntVar(&taranakiDb, "db", 0, "Taranaki db number")

	// run
	runCmd.Flags().StringP("key", "", "", "Target key")
	rootCmd.AddCommand(runCmd)
}

func validate() {
	if !isValidPort(taranakiPort) {
		log.Fatalf("invalid port: %d", taranakiPort)
	}
	if !isValidDb(taranakiDb) {
		log.Fatalf("invalid db number %d", taranakiDb)
	}
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

	validate()
}
