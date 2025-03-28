#include <stdio.h>

extern  char *ft_strcpy(char *dest, char *src);

int main()
{
    char dest[100];
    char *s = "Abdeliali";

    ft_strcpy(dest, s);
    printf("===================\n");
    for (int i = 0; s[i]; i++)
        printf("%c", dest[i]);
    printf("\ndest : %s\n", ft_strcpy(dest, s));
}