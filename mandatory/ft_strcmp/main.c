#include <stdio.h>
#include <string.h>

// extern int ft_strcmp(const char *s1, const char *s2);

int main() {
    printf("NULL vs NULL: %d (expected: 0)\n", strcmp(NULL, NULL));
    printf("NULL vs 'abc': %d (expected: -1)\n", strcmp(NULL, "abc"));
    printf("'abc' vs NULL: %d (expected: 1)\n", strcmp("abc", NULL));
    printf("Equal strings: %d (expected: 0)\n", strcmp("hello", "hello"));
    printf("s1 < s2: %d (expected: -)\n", strcmp("apple", "banana"));
    printf("s1 > s2: %d (expected: +)\n", strcmp("zebra", "apple"));
    return 0;
}