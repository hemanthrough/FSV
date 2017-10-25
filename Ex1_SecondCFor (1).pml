dproctype aasignment2a(){
     do
        :: printf("First \n");
        :: printf("second \n");
    od;
    
    //do
    //  :: else -> ;
    //  :: true ->printf("First \n");
    //  :: true ->printf("second \n");
    //od;
}

proctype Assignment2c(){
    int i=0; 

    for(i:1..10){
        if 
        ::printf("First \n");
        ::printf("second \n");
        fi
    
    }
    
    printf("%d\n",i);
    
}


#define N 10
proctype Assignment3For(){
    int array[N];
    int product =1;
    int i = 0;
    for(i:1..9){
        if
        ::array[i]=1
        ::array[i]=2
        ::array[i]=3
        ::array[i]=4
        ::array[i]=5
        ::array[i]=6
        ::array[i]=7
        ::array[i]=8
        ::array[i]=9
        ::array[i]=10
        fi
    }
    i=0;
    for(i:1..9){
        product = product*array[i];
    }
    
    printf("%d\n",array[2]);
    printf("product %d\n",product);
}

proctype Assignment3While(){
    int array[N];
    int product =1;
    int i = 0;
     do 
        ::i<=10 ->{
        if 
            :: array[i]=1;
            :: array[i]=2;
            :: array[i]=3;
            :: array[i]=4;
            :: array[i]=5;
            :: array[i]=6;
            :: array[i]=7;
            :: array[i]=8;
            :: array[i]=9;
            :: array[i]=10;
            
        fi
        i=i+1;
        }
    ::i>10 ->break;
    od
    i=0;
    for(i:1..9){
        product = product*array[i];
    }
    
    printf("%d\n",array[2]);
    printf("product %d\n",product);
}

init{
 run Assignment3For();
}
