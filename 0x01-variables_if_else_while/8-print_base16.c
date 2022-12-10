#include <stdio.h>

/**
 * main - prints all the numbers of base 16 in lowercase,
 * followed by a new line
 * Return - Always 0 (success)
 */

int main(void)
{
	int a;
	char b;

	for (a = 48; a < 58; a++)
	{
		putchar(a);
	}
	for (b = 'a'; b < 'g'; b++)
	{
		putchar(b);
	}
	putchar('\n');
	return (0);
}
