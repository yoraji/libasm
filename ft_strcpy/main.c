
#include <stdio.h>
extern char *ft_strcpy(char *dest, const char *src);

int main()
{
	char str[] = "Youssef_raji";
	char ptr[sizeof(str)];
	ft_strcpy(ptr,str);
	printf("%s\n", ptr);
	return 0;
}
