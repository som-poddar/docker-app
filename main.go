package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/gorilla/mux"
)

func main() {
	r := mux.NewRouter()

	r.HandleFunc("/", status)
	http.Handle("/", r)

	fmt.Println("Starting up on 8080")
	log.Fatal(http.ListenAndServe(":8080", nil))
}

func status(w http.ResponseWriter, req *http.Request) {
	w.WriteHeader(200)
	fmt.Fprintln(w, "alive")
}
