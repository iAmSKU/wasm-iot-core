package main

import (
	"syscall/js"
)

func hello(this js.Value, p []js.Value) interface{} {
	result := "Hello from golang!"
	return js.ValueOf(result)
}

func registerCallbacks() {
	js.Global().Set("hello", js.FuncOf(hello))
}

func main() {
	c := make(chan struct{}, 0)

	registerCallbacks()

	<-c
}
