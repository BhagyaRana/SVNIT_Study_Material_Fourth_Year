#include <stdio.h>

// Fall through switch cases

int main()
{
    int x = 1;

    switch (x)
    {
    case 2:
        printf("2");
    case 3:
        printf("2");
    }
    return 0;
}