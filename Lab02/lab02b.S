.section .text

.globl lab02b

lab02b: ADRP X0, msg1
	ADD X0,X0, :lo12:msg1
	LDURB W1, [X0,3]
	add W1, W1, -0x20//subtracting 32 or 0x20 from lowercase letter in ascii capitalizes it
	sturb W1, [X0,3]
nomodify:
	BR X30

.section	.data
msg1:	.asciz "This is the test sentence"
