/* main.c simple program to test assembler program */

#include <stdio.h>

extern long long* lab03c();//ours is configured to return my_array address 
int main(void)
{
    long long* my_array = lab03c();//returns address of beginning of array
    printf("Result of lab03c, my_address is = %p\n", (void*)my_array);
    for(int i=0;i<10;i++){
	printf("my_array[%d]=  %lld\n",i,*(my_array+i));//print value at my_array[i]
    }
    return 0;
}
