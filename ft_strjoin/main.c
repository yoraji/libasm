#include <stdio.h>
#include <stdlib.h>

char *strjoin(const char *s1, const char *s2);

int main(){
	const char *s1 = "Hello, ";
	const char *s2 = "world!";
	char *result = strjoin(s1, s2);
	if (result){
		printf("Result : %s \n", result);
		free(result);
	}else
		printf("Memory allocation failed !");
	return 0;
}
