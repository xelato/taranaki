package main

func isValidPort(port int) bool {
	return port > 0 && port <= 65535
}

func isValidDb(db int) bool {
	return db >= 0 && db < 16
}
