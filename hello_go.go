package main

import (
    "io"
    "net/http"
)

func hello(w http.ResponseWriter, r *http.Request) {
    io.WriteString(w, "Hello world!\n")
}

func main() {
    http.HandleFunc("/", hello)
    http.ListenAndServe(":8000", nil)
}

/*
Install Go:

$ brew install go

Build with:

$ go build hello_go.go

run with:

$ ./hello_go
*/
