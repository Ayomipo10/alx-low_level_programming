#include "main.h"

/**
 *  prints the alphabet, in lowercase, followed by a new line
 */

void print_alphabet(void);
{
	char x = 'a';

	while (x <= 'z')
	{
		putchar(x);
		x++;
	}
	putchar('\n');
}
