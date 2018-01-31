chan helloChannel = [1] of {int};
chan reply = [0] of {int};
chan worldChannel = [1] of {int};

///check without reply channel once
proctype sensor(){
    int client ;
    do
        :: helloChannel? client -> {
            if
                :: client ==1 ->{
                    printf("\nHello");
                    reply! true;
                    }
            fi
            
        };
        
    od 

}

proctype user(){
    int message ;
    do
        ::worldChannel ? message -> {
                if
                    :: message ==2 ->{
                        printf("world\n");
                        reply !1;
                    }
                    
                fi
            }
    od
}




proctype inFlow(){
int response = 0;
   do
            
            :: atomic{ 
            helloChannel! 1;
            reply ? response;
            worldChannel  !2;
            reply ? response;
            
            }
    
    od
    
}

proctype outFlow(){
int response = 0;
   do
            
            :: atomic{ 
            helloChannel! 1;
            reply ? response;
            worldChannel  !2;
            reply ? response;
            
            }
    
    od
    
}

init{
    run hello();
    run world();
    run client();
} 
