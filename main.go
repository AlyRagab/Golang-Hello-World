package main


import (
 "net/http"
 "fmt"
 "log"
)
func main() {
 http.HandleFunc("/", func(writer http.ResponseWriter, request *http.Request) {
  fmt.Fprint(writer, "Hello, My-World")
 })
 log.Fatal(http.ListenAndServe(":8080", nil))
}
