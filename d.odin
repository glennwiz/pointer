package main

import "core:fmt"

swap :: proc(a: ^int, b: ^int) {
	temp: int = a^
	a^ = b^
	b^ = temp
}

main :: proc() {
	x: int = 5
	y: int = 10

	fmt.println("før swap: x =", x, ", y =", y)
	swap(&x, &y)
	fmt.println("etter: swap: x =", x, ", y =", y)
}
