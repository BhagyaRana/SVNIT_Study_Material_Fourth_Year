#include <stdio.h>

// Unused variables

// Global Variables [Uninitialized]
int global_var_1, global_var_2;

int main()
{
    printf("Global Variables are Declared but Not Initialized\n");
    printf("Return this Uninitialized variable in Main Program\n");
    return global_var_1;
}