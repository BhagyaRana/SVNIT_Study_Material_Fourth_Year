/* A "Hello World" Promela model for SPIN. */

proctype Hello()
{   
    printf("[Inside] Hello() Process \n");
    printf("Hello() pid : %d \n", _pid);
}

init
{
    printf("[Inside] init() Process \n");
    printf("init() pid : %d \n", _pid);
    
    int lastpid=-1;
    lastpid = run Hello();
    printf("Last Process ID : %d \n", lastpid);
}

