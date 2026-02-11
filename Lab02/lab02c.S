.section .text
.globl lab02c
//this was retyped, We didn't bother to redo the comments
//and ended up replacing the comments with notes on meaning and impact of the assembly
lab02c://X0 argument register, known to be between 0 and 255, so all bits 0 save bottom eight bits
	ADRP X3, hextable
	ADD X3,X3, :lo12: hextable//load hextable
	ADRP X5, result
	ADD X5,X5, :lo12:result//load result location
	LSR X1, X0, 4//isolate second nibble in X0 for hextable offset
	ADD X2, X1, X3//use offset to find X0 ascii translation
	LDURB W4, [X2, 0]//load character
	STURB W4, [X5,0]//save character
	AND X1, X0, 0xf//use mask to isolate bottom four bits
	ADD X2, X3, X1//apply offset
	LDURB W4, [X2,0]//load character	
	STURB W4, [X5,1]//store character
	BR X30//return to main function

.section .data

hextable:
.asciz "0123456789abcdef"//translation table, offset from starting address used to find character

msg1:
.asciz "Your number in Hex is: "//Unused, why is this here?

result:
.byte 2//only reserved one byte, technically line 17 will write into unreserved memory
