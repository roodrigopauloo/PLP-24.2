sublistas(L, Lista1) :-
    member(L, Lista1),
    X = [[L]],
    delete(Lista1, L , Lista),
    findall(Sublista, 
    ( append(_, Sufixo, Lista), 
    append(Sublista, _, Sufixo), 
    soma(Sublista, R), 
    R =:= L), Todas),
    append(Todas, X, Y),
    write(Y).
    
    
soma([], 0).
soma([H|T], R) :-
    soma(T, R1),
    R is H + R1.
    
main :- 
    read(Lista),
    read(Limite),
    sublistas(Limite, Lista),
    halt.
    
:- initialization(main).
    