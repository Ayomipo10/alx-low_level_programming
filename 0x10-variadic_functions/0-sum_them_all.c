#include <stdarg.h>


/**
 * sum_them_all - function that returns sum
 * @n: last known parameter
 * Return: Always sum
 */

int sum_them_all(const unsigned int n, ...)
{
	unsigned int i;
	int sum = 0;

	va_list args;

	va_start(args, n);

	for (i = 0; i < n; i++)
	{
		if (n == 0)
		{
			return (0);
		}
		else
		{
		sum += va_arg(args, int);
		}
	}
	va_end(args);
	return (sum);
}
