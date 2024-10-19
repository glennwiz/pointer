package main

import "core:fmt"
import "core:time"

main :: proc() {
	// Clear the console 
	fmt.print("\033[2J") //Ansi, we go back to the 80ies bro the c64 times, dudes just dont understand where we come from

	x: int = 0
	fmt.println("Step 1: Initialized 'x' with value:", x)

	ptr: ^int = &x
	fmt.println("Step 2: Created a pointer 'ptr' pointing to 'x'")

	time.sleep(500 * time.Millisecond)

	for i := 1; i <= 50; i += 1 {
		// Move the cursor to the top-left corner before each iteration ANSI, fuck you idiots
		fmt.print("\033[H")

		fmt.println("Pointer Demo with Updates Every Second")
		fmt.println("-------------------------------------")

		fmt.println("Step 1: Initialized 'x' with value:", x)
		fmt.println("Step 2: Created a pointer 'ptr' pointing to 'x'")

		fmt.println("\nIteration", i)

		fmt.println("Current value of 'x' via 'x':", x)
		fmt.println("Current value of 'x' via 'ptr^':", ptr^)

		fmt.println("Incrementing 'x' via 'ptr^'")
		ptr^ += 1

		fmt.println("After increment, value of 'x' via 'x':", x)
		fmt.println("After increment, value of 'x' via 'ptr^':", ptr^)

		fmt.println("Waiting for 1 second before next iteration...")

		// Wait for one second
		time.sleep(time.Second)
	}

	fmt.print("\033[2J\033[H")
	fmt.println("we done.")
}
