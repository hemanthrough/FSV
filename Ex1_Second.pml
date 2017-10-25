proctype loop(){
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

init{
 run loop();
}
