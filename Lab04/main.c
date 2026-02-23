#include <stdio.h>

extern long long int factorial(long long int n);//factorial function defenition 
int main(void)
{
    long long int fact = factorial(0);//capture result
    printf("Result of factorial: %lld\n", fact);
    return 0;
}
