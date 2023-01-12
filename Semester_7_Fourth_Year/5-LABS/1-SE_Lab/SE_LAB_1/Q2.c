#include <stdio.h>
extern void set_value(/*@out@*/ int *x);
extern int get_value(/*@in@*/ int *x);

int get_value(int *x)
{
    return 12;
}

int compute(/*@out@*/ int *x, int id)
{
    if (id > 1)
        return *x;
    else if (id > 5)
        return get_value(x);
    else
    {
        set_value(x);
        return *x;
    }
}

int main()
{
    int k = 10;
    int *p = &k;

    int ans = compute(p, k);

    return 0;
}
