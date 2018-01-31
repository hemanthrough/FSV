byte mode = 1;
byte count = 0;
active proctype m() {
endLoop:
    if
        :: mode= 1
        :: mode= 2
    fi;
    do
        :: mode== 1 && count < 30 -> count++
        :: mode == 2 -> count = 0;
                    goto endLoop
        :: mode == 3 -> break
        :: else -> goto endLoop
    od;
    count = 0
    //[](count<=30);
    
}
active proctype n() {
    do
    :: mode = 3
    od
}
ltl check{
        [](count<30);
    }
ltl check2{
    (count>0)-> ([](count>=0))U(mode>1);
    
}

ltl check3{
    (count>0) -> (<>(count==0))
}

ltl check4{
    <>(mode==3)
}
