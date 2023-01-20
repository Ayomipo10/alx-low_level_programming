#include <stdarg.h>

#include <string.h>

#include <stdio.h>



/**
 * print_strings - function that prints string
 * @separator: a pointer to string
 * @n: last parameter
 * Return: Always the string
 */



void print_strings(const char *separator, const unsigned int n, ...)
{
	unsigned int i;
	char *j;
	va_list args;

	va_start(args, n);

	for (i = 0; i < n; i++)
	{
		j = va_arg(args, char *);

		if (j != NULL)
		{
			printf("%s", j);
		}
		else
		{
			printf("(nil)");
		}
		if (i < n - 1 && separator)
		{
			printf("%s", separator);
		}
	}
	printf("\n");

	va_end(args);
}
