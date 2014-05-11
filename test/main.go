package main

import (
	"fmt"
	"net/http"
)

func main() {
	response, err := http.Get("https://google.com/")
	if err != nil {
		panic(err)
	}
	fmt.Println(response)
}
