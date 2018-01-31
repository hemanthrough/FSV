proctype m(int ident) {
int d = ident;

do
    /* start phase */
    send(d);
    receive(e);
    :: e = ident -> announce    elected;
    :: d > e -> send(d) 
    :: d<= e ->send(e);receive(f);
    :: f = ident -> announce    elected;
    :: e >= max(d,f) -> d :=  e 
    :: e < max(d,f) goto relay;
od


relay:
do forever
begin
    receive(d);
    if d = ident then announce elected;
    send(d);
end
}
