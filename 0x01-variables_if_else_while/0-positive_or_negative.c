#include <stdlib.h>
#include <time.h>
#include <stdio.h>

/**
 * main will allocate a certain number to int n
 * it excutes and print
 * Return: (0) equals succes
 */

int main(void)
{
	int n;

	srand(time(0));
	n = rand() - RAND_MAX / 2;

	if (n > 0)
		printf("n is positive = %d\n", n);
	else if (n == 0)
		printf("n is zero = %d\n", n);
	else if (n < 0)
		printf("n is negative = %d\n", n);
	return (0);
}
