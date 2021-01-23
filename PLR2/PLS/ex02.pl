:-use_module(library(clpfd)).

solve :-
    Nomes = [Joao, Antonio, Francisco], Nomes = [1, 2, 3],
    Instrumentos = [Harpa, Violino, Piano],
    domain(Instrumentos, 1, 3),
    all_distinct(Instrumentos),

    Antonio #\= Piano, 
    Joao #\= Piano,
    Joao #\= Violino,

    labeling([], Instrumentos),
    write([Nomes, Instrumentos]), nl.
    