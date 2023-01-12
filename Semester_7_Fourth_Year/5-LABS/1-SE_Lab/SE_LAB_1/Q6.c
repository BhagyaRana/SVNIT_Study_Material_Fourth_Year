#include <stdio.h>
#include <ctype.h>
#include <string.h>

// Aliasing refers to the situation where the same memory location can be accessed using different names.

void dangerous_alias(char *s, char *t)
{
    // Copying t to s
    strcpy(s, t);
    *s = toupper(*s);
}

int main()
{
    char *x = "hello";
    char *y = "world";

    dangerous_alias(x, y);

    printf("x = %c", *x);
    printf("y = %c", *y);

    return 0;
}
