#include <stdio.h>

extern long long int lab02d(long long int);

int main(void)
{
    long long int a=lab02d(1);//call part d function
    printf("Result is: 0x%llx",a);//print the returned address in hex
    return 0;
}

