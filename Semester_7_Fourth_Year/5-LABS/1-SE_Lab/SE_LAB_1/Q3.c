#include <stdio.h>
#include <stdbool.h>

bool type_mismatch(int val)
{
    // int comparison with bool
    if (val == true)
    {
        return true;
    }

    // Instead of False, returned 0
    return 0;
}

int main()
{
    type_mismatch(1);
    return 0;
}