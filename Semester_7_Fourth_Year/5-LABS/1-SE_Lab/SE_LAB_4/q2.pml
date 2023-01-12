/* Euclid GCD algorithm Implementation. */

proctype gcd(int x;int y) 
{
    if
    :: (y == 0) -> printf("%d\n",x);
    :: (y != 0) -> run gcd(y, x % y)
    fi
}

init 
{
    int number1=12319; // 12319 = 97*127
    int number2=21631; // 21631 = 97*223
    printf("gcd(%d, %d) = ",number1,number2);
    run gcd(number1, number2);
}
 
/* Approach 2 : TC is Higher*/ 

// init
// {
//     int x = 12319;
//     int y = 21631;

//     do 
//     :: x > y -> x = x - y;
//     :: y > x -> y = x - y;
//     :: x == y -> break;
//     od

//     printf("gcd(%d, %d) : %d\n",x,y, x);
// }

