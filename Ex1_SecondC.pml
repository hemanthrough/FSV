proctype loop(){
    int i=0;
    do 
    ::i<=10 ->{
        if 
            :: printf("First \n");
            ::printf("second \n");
            
        fi
        i=i+1;
        }
    ::i>10 ->break;
    od
    printf("%d\n",i);
    
}

init{
 run loop();
}
