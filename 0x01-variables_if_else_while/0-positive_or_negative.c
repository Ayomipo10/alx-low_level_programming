#include <stdlib.h>
#include <time.h>
#include <stdio.h>

/**
 * main will allocate a certain number to int n
 * it excutes and print
 * Return: Always 0 (Success)
 */

int main(void)
{
	int n;

	srand(time(0));
	n = rand() - RAND_MAX / 2;

	if (n > 0)
		printf(" %d is positive\n", n);
	else if (n == 0)
		printf(" %d is zero\n", n);
	else if (n < 0)
		printf(" %d is negative\n", n);
	return (0);
}
