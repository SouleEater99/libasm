#include <stdio.h>
#include <string.h>
#include <stdlib.h>

extern char *ft_strcpy(char *dest, char *src);

void print_test_header(const char *title) {
    printf("\n\033[1;34m===== %s =====\033[0m\n", title);
}

void print_test_result(const char *description, int passed) {
    printf("%-40s [%s]\n", description, passed ? "\033[1;32mPASS\033[0m" : "\033[1;31mFAIL\033[0m");
}

int main() {
    char buffer[50];
    char *result;

    /* Test 1: Basic string copy */
    print_test_header("BASIC FUNCTIONALITY");
    result = ft_strcpy(buffer, "Hello World");
    print_test_result("Correct string copied", strcmp(buffer, "Hello World") == 0);
    print_test_result("Return value matches dest", result == buffer);

    /* Test 2: Empty string */
    print_test_header("EDGE CASES");
    result = ft_strcpy(buffer, "");
    print_test_result("Empty string handled", buffer[0] == '\0');

    /* Test 3: NULL pointer checks */
    result = ft_strcpy(NULL, "test");
    print_test_result("NULL dest returns NULL", result == NULL);
    result = ft_strcpy(buffer, NULL);
    print_test_result("NULL src returns NULL", result == NULL);

    // /* Test 4: Overlapping memory */
    // print_test_header("SPECIAL CASES");
    // char overlap_str[] = "overlap_test";
    // ft_strcpy(overlap_str + 4, overlap_str);
    // print_test_result("Overlapping copy doesn't crash", 1);  // Just check for no crash

    /* Test 5: Large string */
    print_test_header("PERFORMANCE");
    char *big_src = malloc(1000000);
    char *big_dest = malloc(1000000);
    memset(big_src, 'A', 999999);
    big_src[999999] = '\0';
    
    result = ft_strcpy(big_dest, big_src);
    int large_ok = (big_dest[0] == 'A') && 
                  (big_dest[999999] == '\0') && 
                  (result == big_dest);
    print_test_result("1MB string copied correctly", large_ok);
    
    free(big_src);
    free(big_dest);

    /* Test 6: Return value verification */
    print_test_header("RETURN VALUE");
    char dest[50];
    result = ft_strcpy(dest, "return_test");
    print_test_result("Returns destination pointer", result == dest);

    printf("\n\033[1;34m===== SUMMARY =====\033[0m\n");
    printf("All critical test cases covered\n");
    return 0;
}