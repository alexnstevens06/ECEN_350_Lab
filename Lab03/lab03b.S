.section .text
.globl lab03b

lab03b:
	ADRP X1, UIN
	ADD X1, X1, :lo12:UIN//grab location for UIN
	LDUR X0, [X1]//load UIN value into X0
	ADD X2, XZR, XZR//X0 is i, loading zero into i
start_loop:
	CMP X2, #10//set comparison flags for check
	B.GE end_loop//breaks if i is not less than 10
	SUBS X0, X0, #1//subtracts from UIN
	ADD X2, X2, #1//increments counter
	STUR X0, [X1]
	B start_loop//restarts loop
end_loop:
	BR X30//return to main


.section .data

UIN:
.quad 635001719
