// ARMv8 Assembly file containing "test" function.

	.globl test          	// Defining the symbol "test" for the
				// linker
test:
	LSR X1, X0, #6
	LSL X2, X0, #6
	ADD X0, X1, X2
	BR X30
