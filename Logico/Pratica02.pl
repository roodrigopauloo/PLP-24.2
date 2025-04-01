viajem(AnoNascimento, AnoDestino) :-
    AnoDestino =< AnoNascimento,
    AnoNascimento mod AnoDestino =:= 0,
    write("Viagem permitida!").
    
viajem(AnoNascimento, AnoDestino) :-
    AnoDestino > AnoNascimento,
    AnoDestino mod AnoNascimento =:= 0,
    write("Viagem permitida!").
    
viajem(_,_) :-
    write("Paradoxo detectado!").
    
    
main :-
    read(AnoNascimento),
    read(AnoDestino),
    viajem(AnoNascimento, AnoDestino),
    halt.
    