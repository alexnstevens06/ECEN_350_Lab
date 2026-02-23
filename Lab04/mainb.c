#include <stdio.h>

extern long long int lab04b(long long int n);//factorial function defenition 
int main(void)
{
    long long int factorial = lab04b(3);//capture result
    printf("Result of factorial: %lld", factorial);
    return 0;
}
