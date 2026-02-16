.section .text
.globl lab03c

lab03c:
	ADRP X0, my_array
	ADD X0, X0, :lo12:my_array//load address of my_array
	ADRP X1, initial_value
	ADD X1, X1, :lo12:initial_value//load address of initial_value
	LDUR X1, [X1]//load value of initial_value
	ADD X2, XZR, XZR//set i = 0

start_loop:
	CMP X2, #10 //check condition for if i < 10
	B.GE end_loop //break if condition fails
	//loop body
	//get 8*i
	LSL X3, X2,3//get byte offset
	ADD X3, X3, X0 //get address of element in my_array
	STUR X1, [X3]// perform my_array[i]=j
	ADD X1, X1, #1//increment j
	ADD X2, X2, #1//increment i
	B start_loop

end_loop:
	BR X30


.section .data

my_array:
.space 80
initial_value: 
.quad 5 
