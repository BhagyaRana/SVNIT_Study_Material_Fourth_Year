#include <stdio.h>
#include <string.h>

// Example of Buffer OverFlow

int main(int argc, char const *argv[])
{
    char str[4];

    // write past end of buffer (buffer overflow)
    strcpy(str, "a string longer than 4 characters");

    // read past end of buffer (also not a good idea)
    printf("%s\n", str[6]);

    return 0;
}