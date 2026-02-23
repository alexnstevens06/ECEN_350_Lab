.section .text
.globl lab04b

lab04b:
	CBZ X0, default
	//n currently stored in X0
multiply:
	//need to implement stuff for multiply
	B end
default:
	ADD X0, XZR, #1
end:
	BR X30


//SUB SP, SP, #16//must be 16 byte aligned!!
//LDUR X0, [SP, 0]
//
//LDUR X19, [SP, 0]
//ADD SP, SP, #16
