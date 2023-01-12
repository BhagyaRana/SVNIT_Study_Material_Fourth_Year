#include <stdio.h>
#include <stdlib.h>

// Deallocating a memory pointed by ptr causes dangling pointer
void dangling_pointer()
{
    int *ptr = (int *)malloc(sizeof(int));

    // After below free call, ptr becomes a dangling pointer
    free(ptr);

    // No more a dangling pointer
    ptr = NULL;
}

// F(x) with memory leak
void func_to_show_mem_leak()
{
    int *ptr2 = (int *)malloc(sizeof(int));
    // return without deallocating ptr2
    return;
}

int main()
{
    dangling_pointer();

    func_to_show_mem_leak();

    return 0;
}
