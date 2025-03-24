#include <stdio.h>
#include <stdlib.h>

char *ft_strchr(const char *s, int c);

int main()
{
	const char *str = "hello, World!";
	char c = 'o';

	char *result = ft_strchr(str,c);
	if(result)
		printf("character '%c' found at position %ld\n", c , result -str);
	else
		printf("character '%c' not found", c);
	return 0;
}
