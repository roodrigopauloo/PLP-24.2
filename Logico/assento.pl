especial([H|_]) :- notL(H), !.
especial([_|T]):-
    especial(T).
    
notL(C):-
    \+char_type(C,alpha).
    
vogal(D):-
    member(D,['a','e','i','o','u','A','E','I','O','U']), !.
    
    
first([H|_],H).

last([T|[]], T) :- !.
last([_|T], R) :-
    last(T,R).
    
main:-
    read(Nome),
    string_chars(Nome,Lista),
    first(Lista,H),
    last(Lista,K),
    (
        especial(Lista) -> write(Nome), write(' contém símbolos não alfabéticos.');
        vogal(H), vogal(K) -> write(Nome), write(', você é uma pessoa muito legal.');
        vogal(H), \+vogal(K) -> write(Nome), write(', você é genial e cativante.');
        \+vogal(H), vogal(K) -> write(Nome), write(', você é destoante e sem igual.');
        \+vogal(H), \+vogal(K) -> write(Nome), write(', você é uma pessoa muito interessante.')
    ),
    halt.