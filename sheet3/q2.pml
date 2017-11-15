bool b1= false;
int x =0;
bool b2 = false;

proctype p1(){
    
noncrit:
        atomic{
        b1 = true;
        x=2;
        }
        goto wait;
wait:
    do
        ::b2==false|| x==1 -> break;
    od;
        goto crit;
crit:
    atomic{
    printf("\ncritical section by 1");
    b1=false;
    }
    goto noncrit;
        
}


proctype p2(){
    
noncrit: 
        atomic
        {
        b2 = true;
        x=1;
                }
        goto wait;
wait: 
    do
        ::b1==false|| x==2 -> break;
    od;
    goto crit;
crit: 
    atomic{
    printf("\ncritical section by 2");
    b2=false;
    }
    goto noncrit;   
}



init{
    run p1();
    run p2();
} 
