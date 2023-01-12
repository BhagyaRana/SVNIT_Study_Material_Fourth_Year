#define MAX_SUPPLY 10000

// chan STDIN = [4] of int;	

int coffeestick_available = MAX_SUPPLY;
int milkbars_available = MAX_SUPPLY;
int silkchocolates_available = MAX_SUPPLY;
int darkchocolates_available = MAX_SUPPLY;

int coffeestick_cost = 10;
int milkbar_cost = 20;
int silkchocolate_cost = 50;
int darkchocolate_cost = 50;

int coffeestick_count = 0;
int milkbar_count = 0;
int silkchocolate_count = 0;
int darkchocolate_count = 0;

int total_amount = 0;

proctype print_amount_collected() 
{
    // do 
    // ::  
    printf("Chocolate Vending Machine Needs to be Refilled!\n\n");
    printf("AMOUNT COLLECTED BY MACHINE\n\n");
    printf("-----------------------------------------\n");
    printf("Coffee Stick Cost = %d x %d = %d\n", coffeestick_count, coffeestick_cost, coffeestick_count*coffeestick_cost); 
    printf("Milkbar Cost = %d x %d = %d\n", milkbar_count, milkbar_cost, milkbar_count*milkbar_cost); 
    printf("Silk Chocolate Cost = %d x %d = %d\n", silkchocolate_count, silkchocolate_cost, silkchocolate_count*silkchocolate_cost); 
    printf("Dark Chocolate Cost = %d x %d = %d\n", darkchocolate_count, darkchocolate_cost, darkchocolate_count*darkchocolate_cost); 
    printf("-----------------------------------------\n");
    printf("AMOUNT COLLECTED BY MACHINE : %d\n", total_amount); 
    // break;
    // od
}

proctype vender(int id) 
{
    // Having Limitless Supply

    // Having Limited Supply
    assert(id<=4);

    do
    :: printf("Vender start\n");    
    od

    if
    :: (coffeestick_count == coffeestick_available) -> run  print_amount_collected();
    :: else -> if 
               :: (milkbar_count == milkbars_available) -> run  print_amount_collected();
               :: else -> if 
                          :: (silkchocolate_count == silkchocolates_available) -> run  print_amount_collected();
                          :: else if 
                                  :: (darkchocolate_count == xdarkchocolates_available) -> run print_amount_collected();
                                  fi
                          fi
                fi
    fi

    assert(coffeestick_count<coffeestick_available);
    assert(milkbar_count<milkbars_available);
    assert(silkchocolate_count<silkchocolates_available);
    assert(darkchocolate_count<darkchocolates_available);
    
    if 
    :: (id == 1) -> coffeestick_count = coffeestick_count + 1; total_amount = total_amount + coffeestick_cost;
    :: else -> if
                :: (id == 2) -> milkbar_count = milkbar_count + 1; total_amount = total_amount + milkbar_cost;
                else -> if
                        :: (id == 3) -> silkchocolate_count = silkchocolate_count + 1; total_amount = total_amount + silkchocolate_cost;
                        :: else -> darkchocolate_count = darkchocolate_count + 1; total_amount = total_amount + darkchocolate_cost; 
                        fi  
               fi 
    fi

}

proctype customer()
{
    printf("Customer start\n");    
    // Customer Needs to Enter the Order
    printf("Enter your Choice\n 1 - coffeestick 2 - milkbar 3 - silkchocolates 4 - darkchocolates\n");
    int customer_choice = 1;
    // cin >> customer_choice;
    run vender(customer_choice);
}

init 
{
    printf("Welcome to Chocolate Vending Machine.\n\n");
    
    // This is Boolean flag for Part - 2
    bool has_limited_supply = false;
    has_limited_supply = true;
    if
    :: (has_limited_supply == true) -> coffeestick_available = 20; milkbars_available = 20; silkchocolates_available = 10; darkchocolates_available = 15;
    // :: else -> break;
    fi

    int customer_orders = 21;

    int i = 0;

    do
    :: i >= customer_orders -> break
    :: else -> run customer();
               i++
    od

}