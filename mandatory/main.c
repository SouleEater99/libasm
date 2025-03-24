#include <stdio.h>

// Declare your assembly function
extern size_t ft_strlen(const char *s);

int main() {
    const char *str = "Hello, World!";
    printf("Length: %zu\n", ft_strlen(str));
    return 0;
}