#include <stdio.h>

// Global Structure having More than Two Fields
struct student
{
    char *name;
    int age;
    float per;
};

float get_percent();

int main()
{
    printf("Structure as Global Variable\n");
    printf("Except one field, you can Initialize values to all fields in the structure.\n");

    struct student o =
        {
            .name = "Nobita",
            .age = 20,
        };

    // One Field where Intialization is performed Later
    o.per = get_percent();

    printf("\nName    : %s", o.name);
    printf("\nAge     : %d", o.age);
    printf("\nPercent : %f", o.per);

    return 0;
}

float get_percent()
{
    // Marks Related to Student can be Entered (For Sample Calculation, taken as shown below)
    float physic_marks = 95;
    float chemistry_marks = 90;
    float maths_marks = 100;

    printf("Physics     : %f\n", physic_marks);
    printf("Chemistry   : %f\n", chemistry_marks);
    printf("Mathematics : %f\n", maths_marks);

    float percent = (physic_marks + chemistry_marks + maths_marks) / 3;
    return percent;
}
