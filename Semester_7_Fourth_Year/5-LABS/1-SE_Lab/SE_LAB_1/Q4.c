#include <stdio.h>
#include <stdbool.h>
#include <string.h>

// Added this Header file
#include "mystrings.h"

bool isPalindrome(mystring s)
{
    char *current = (char *)s;
    int i, len = (int)strlen(s);
    for (i = 0; i <= (len + 1) / 2; i++)
    {
        if (current[i] != s[len - i - 1])
            return false;
    }
    return true;
}

bool callPal(void)
{
    return (isPalindrome("bob"));
}

int main()
{
    printf("Checking Information Abstractions\n");
    // callPal();
    return 0;
}