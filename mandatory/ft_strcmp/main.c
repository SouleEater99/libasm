#include <stdio.h>

extern int ft_strcmp(const char *s1, const char *s2);

int main() {
    printf("NULL vs NULL: %d (expected: 0)\n", ft_strcmp(NULL, NULL));
    printf("NULL vs 'abc': %d (expected: -1)\n", ft_strcmp(NULL, "abc"));
    printf("'abc' vs NULL: %d (expected: 1)\n", ft_strcmp("abc", NULL));
    printf("Equal strings: %d (expected: 0)\n", ft_strcmp("hellohellohello", "hellohellohell"));
    printf("s1 < s2: %d (expected: -)\n", ft_strcmp("apple", "banana"));
    printf("s1 > s2: %d (expected: +)\n", ft_strcmp("acra", "aaple"));
    return 0;
}