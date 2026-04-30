package main

import (
	"fmt"

	"github.com/spf13/cobra"
	"log"
	"os"
)

var rootCmd = &cobra.Command{
	Use:   "taranaki-proxy <command>",
	Short: "Taranaki proxy server",
	Long:  `Forward HTTP traffic to handlers that run on Taranaki Server`,
}

var runCmd = &cobra.Command{
	Use:   "run <options>",
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

var versionCmd = &cobra.Command{
	Use:   "version",
	Short: "Print the program version",
	Run: func(cmd *cobra.Command, args []string) {
		fmt.Printf("%s\n", Version)
	},
}

func init() {
	// global flags
	rootCmd.PersistentFlags().StringVar(&taranakiHost, "taranaki-host", DefaultTaranakiHost, "Taranaki host")
	rootCmd.PersistentFlags().IntVar(&taranakiPort, "taranaki-port", DefaultTaranakiPort, "Taranaki port")
	rootCmd.PersistentFlags().IntVar(&taranakiDb, "taranaki-db", DefaultTaranakiDb, "Taranaki db number (default 0)")

	// run
	runCmd.Flags().StringVar(&targetKey, "key", "", "Target key")
	runCmd.MarkFlagRequired("key")

	// subcommands
	rootCmd.AddCommand(runCmd)
	rootCmd.AddCommand(versionCmd)
}

func Execute() {
	err := rootCmd.Execute()
	if err != nil {
		os.Exit(1)
	}
}
