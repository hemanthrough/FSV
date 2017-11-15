chan helloChannel = [1] of {int};
chan reply = [0] of {int};
chan worldChannel = [1] of {int};


proctype hello(){
    int client ;
    do
        :: helloChannel? client -> {
            if
                :: client ==1 ->{
                    printf("Hello ");
                    reply! 1;
                    }
                ::else -> ;
            fi
            
        };
        
    od 

}

proctype world(){
    int message ;
    do
       ::worldChannel ? message -> {
            if
                :: message ==2 ->{
                    printf("world\n");
                    //reply !1;
                }
                
                ::else -> ;
            fi
        }
    od
}




proctype client(){
    bool response= false;
    do
            :: helloChannel! 1;
            reply ? response;
            worldChannel  !2;
    
    od

//    helloChannel! 1;
    //reply ? response;
  //  worldChannel  !2;
    //reply ? response;
    
}

init{
    run hello();
    run world();
    run client();
} 
