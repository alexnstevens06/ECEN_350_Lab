/* main.c simple program to test assembler program */

#include <stdio.h>

extern long long int lab03b();//function for UIN loop
int main(void)
{
    long long int a = lab03b();
    printf("Result of lab03b() = %lld\n", a);
    return 0;
}
