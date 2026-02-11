.section .text
.globl lab02d

lab02d:
	ORR X1, XZR, X0 //copy X0
	ADRP X0, myvalue
	ADD X0, X0, :lo12:myvalue //load address that will be returned into X0
	ADD X1, X1, #1000 //update original argument value
	STR X1, [X0] //load updated value into memory
	BR X30


.section .data

myvalue:
.quad 0 //reserve the necessary 64 bits for address
