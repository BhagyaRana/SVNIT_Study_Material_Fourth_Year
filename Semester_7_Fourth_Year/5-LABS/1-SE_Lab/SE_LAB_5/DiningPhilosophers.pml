/*Dining Philosophers Problem [U19CS012]*/

#define NUM_PHIL 4
int forks[NUM_PHIL];

proctype phil(int id) 
{
end: 
  /*The philosopher is allowed to be in any state*/
  do
    :: printf("Philosopher %d is thinking\n", id);

       /*Deduce which forks are ours*/
       int leftfork = id;
       int rightfork = id+1;

       /*Since it is Round Table*/
       if
         :: id+1 >= NUM_PHIL -> rightfork = 0;
         :: else -> rightfork = id+1;
       fi
       assert(rightfork < NUM_PHIL);

       /*Start Acquiring Forks*/
       bool leftforkacquired = false;
       bool rightforkacquired = false;
       do
          :: leftforkacquired && rightforkacquired -> break
          :: !leftforkacquired || !rightforkacquired ->
            /*Acquire Left Fork first*/
            atomic {
              do
                :: forks[leftfork] == 0 ->
                   forks[leftfork]++;
                   leftforkacquired = true;

                :: leftforkacquired -> break
              od
            }

            /*Acquire Right Fork*/
            atomic {
              if
                /*Right fork is usable*/
                :: forks[rightfork] == 0 ->
                   forks[rightfork]++;
                   rightforkacquired = true;

                /*Right fork is unusable, release left for and restart*/
                :: else ->
                   forks[leftfork]--;
                   leftforkacquired = false;
              fi
            }
       od
       assert(leftforkacquired && rightforkacquired);
       assert(forks[leftfork] == 1 && forks[rightfork] == 1);

       /*Eat*/
       printf("Philosopher %d is eating with forks %d and %d\n", id, leftfork, rightfork);
progress: 
       /*Consider passing eat as progress*/
       /*Return forks*/
       forks[rightfork]--;
       forks[leftfork]--;
  od
}

init  
{
  int i = 0;

  do
    :: i >= NUM_PHIL -> break
    :: else -> run phil(i);
               i++
  od
}

ltl verify {
  [](
    forks[0] <= 1 &&
    forks[1] <= 1 &&
    forks[2] <= 1 &&
    forks[3] <= 1 &&
    forks[4] <= 1
  )
}