#include <stdio.h>

// Global Structure
struct student
{
    char *name;
    int age;
    float per;
};

float get_percent()
{
    // Local Structure
    struct mark
    {
        float m1, m2, m3;
    } s;

    s.m1 = 80.5;
    s.m2 = 84.5;
    s.m3 = 90;
    printf("Physics     : %f\n", s.m1);
    printf("Chemistry   : %f\n", s.m2);
    printf("Mathematics : %f\n", s.m3);

    float percent = (s.m1 + s.m2 + s.m3) / 3;
    return percent;
}

int main()
{
    printf("Structure as Global Variable\n");
    printf("Except one field, you can initialize values to all fields in the structure.\n");

    struct student o =
        {
            .name = "Raju",
            .age = 20,
        };

    o.per = get_percent();

    printf("\nName    : %s", o.name);
    printf("\nAge     : %d", o.age);
    printf("\nPercent : %f", o.per);

    return 0;
}
