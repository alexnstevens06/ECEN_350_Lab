.section .text
.globl lab02c

lab02c:
	ADRP X3, hextable
	ADD X3,X3, :lo12: hextable
	ADRP X5, result
	ADD X5,X5, :lo12:result
	LSR X1, X0, 4
	ADD X2, X1, X3
	LDURB W4, [X2, 0]
	STURB W4, [X5,0]
	AND X1, X0, 0xf
	ADD X2, X3, X1
	LDURB W4, [X2,0]
	STURB W4, [X5,1]
	BR X30

.section .data

hextable:
.asciz "0123456789abcdef"

msg1:
.asciz "Your number in Hex is: "

result:
.byte 2
