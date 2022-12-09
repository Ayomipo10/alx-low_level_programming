#include <stdio.h>

/**
 * main - prints the size of various types
 * Return: 0 if exited properly, non-zero otherwise
 */
int main(void)
{
	int size = 1;

	printf("Size of a char:%d byte(s)\n", size);

		size = 4;
	printf("Size of an int:%d bytes(s)\n", size);
		size = 8;
		printf("Size of a long int:%d byte(s)\n", size);
		size = 8;
		printf("Size of a long long int:%d byte(s)\n", size);
		size = 4;
		printf("Size of a float:%d byte(s)\n", size);
		return (0);
}

