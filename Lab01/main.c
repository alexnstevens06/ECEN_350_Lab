/* main.c simple program to test compilation and assembly */

#include <stdio.h>

/* "test" is our function that is written in ARMv8 Assembly */
extern long long int test(long long int b);

int main(void)
{
    long long int a = test(3); /* Calling assembly funct test from
				     a C program */
    printf("Result is = %d\n", a);
    return 0;
}
