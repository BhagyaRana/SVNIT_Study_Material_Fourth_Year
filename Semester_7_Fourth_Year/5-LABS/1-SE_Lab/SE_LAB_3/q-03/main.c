#include <stdio.h>

#define abs(i) ((i) >= 0 ? (i) : -(i))

int main()
{
    int x = -5;

    // Should return 4 but returns 3
    printf("Macro expected value: 4\nActual value: %d\n", abs(++x));

    return 0;
}