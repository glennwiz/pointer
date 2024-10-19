package main

import "core:fmt"

main :: proc() {
	x: int = 42
	ptr: ^int = &x

	fmt.println("Value of x:", x)
	fmt.println("Address of x (ptr):", ptr)
	fmt.println("Value at ptr (dereferenced):", ptr^)

	// Modify the value of x via the pointer
	ptr^ = 100

	fmt.println("New value of x after modification:", x)
}
