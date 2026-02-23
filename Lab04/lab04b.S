.section .text
.global factorial

factorial:
    // perform recursion if n != 0
    CBNZ X0, recurse

    // return 1 if n == 0
    MOV X0, #1
    BR X30

recurse:
    // Prologue: Allocate 16 bytes on the stack.
    SUB SP, SP, #16
    
    // Save n (X0) and the Link Register (X30).
    STUR X0, [SP, #0]
    STUR X30, [SP, #8]

    // Compute n - 1 and store in X0 as the argument for the recursive call.
    SUB X0, X0, #1

    // Call factorial(n - 1)
    // The return value 'm' will be stored in X0.
    BL factorial

    // Retrieve the original 'n' from the stack into X1.
    // X0 currently holds 'm'.
    LDUR X1, [SP, #0]

    // Call my_mul(m, n)
    // Arguments: X0 = m, X1 = n. The return value will be stored in X0.
    BL my_mul

    // Epilogue: Restore the Link Register (X30) from the stack.
    LDUR X30, [SP, #8]
    
    // Deallocate the 16 bytes from the stack.
    ADD SP, SP, #16

    // Return to the caller with the final result in X0.
    BR X30
