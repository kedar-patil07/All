#include <stdio.h>
#include <string.h>

int main() {
    char str[100];
    int i, len;

    // Input from user
    printf("Enter a string: ");
    scanf("%s", str);  // For strings without spaces

    len = strlen(str);

    // Reverse the string in-place
    for (i = 0; i < len / 2; i++) {
        char temp = str[i];
        str[i] = str[len - i - 1];
        str[len - i - 1] = temp;
    }

    printf("Reversed string: %s\n", str);

    return 0;
}