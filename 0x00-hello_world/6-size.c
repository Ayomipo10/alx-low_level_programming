#include <stdio.h>
/*Printing size of compiler*/
int main(void)
{
       	int size = 1;
       	printf("Size of a char : %d byte(s)\n", size);
	 size = 4;
	 printf("Size of a int : %d byte(s)\n", size);
	 size = 8;
	 printf("Size of a long int : %d byte(s)\n", size);
	 size = 8;
	 printf("Size of a long long int : %d byte(s)\n", size);
	 size = 4;
	 printf("size of a float : %d byte(s)\n", size);
	 return (0);                                
}
