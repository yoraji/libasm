#include <stdio.h>

extern size_t ft_strlen(const char *str);

int	main()
{
	const char *str = "Hello, World!";
	size_t len = ft_strlen(str);
	printf("Length of '%s' is %zu\n", str, len);
	return 0;
}
