#include <stdio.h>
#include <stdbool.h>

int main()
{
    int number = 10;
    int *ptr = &number;

    // Mark this Flag as true when you want to dereference a NULL pointer
    bool deref_null_pointer = false;

    if (deref_null_pointer)
        ptr = NULL;

    // ! Dereferencing a null pointer always results in undefined behavior and can cause crashes.
    printf("%d", *ptr);

    return 0;
}
