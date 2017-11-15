chan req = [0] of {byte};
byte i=0;


proctype server(){
    byte client ;
    do
        :: req? client -> printf("client sent this %d\n",client);
    od 

}

proctype client(){
    for(i:0..9){
        req!i;
    }
}

init{
    run server();
    run client();
} 
