int res = 1;

proctype fac(int n) {
    if
    :: (n == 0 || n == 1) -> printf("%d\n", res)
    :: (n >=2 ) -> res = res * n; run fac(n-1)
    fi
}

init 
{
    // Replace with Number whose Factorial Needs to be Found
    int number = 10;
    printf("%d! = ",number);
    run fac(number);
}