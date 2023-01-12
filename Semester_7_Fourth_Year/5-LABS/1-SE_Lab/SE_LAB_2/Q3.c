#include <stdio.h>

// Unused variables

// Global Variables [Uninitialized]
int global_var_1, global_var_2;

int main()
{
    printf("Global Variables are Declared but Not Initialized\n");
    printf("Initialize the Local Variables with Uninitialized Global Variables\n");
    
    int local_var_1;
    local_var_1 = global_var_1;

    printf("local_var_1 = %d\n", local_var_1);

    return 0;
}