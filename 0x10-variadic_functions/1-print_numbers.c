#include <stdarg.h>

#include <string.h>

#include <stdio.h>


/**
 * print_numbers - function to print numbers
 * @separator: holds the string values
 * @n: last parameter
 * Return: Always numbers
 */


void print_numbers(const char *separator, const unsigned int n, ...)
{
	unsigned int i;

	va_list args;

	va_start(args, n);

	for (i = 0; i < n; i++)
	{
		int j = va_arg(args, int);

		printf("%d", j);

		if (i < n - 1 && separator)
		{
			printf("%s", separator);
		}
	}
	printf("\n");
	va_end(args);
}
