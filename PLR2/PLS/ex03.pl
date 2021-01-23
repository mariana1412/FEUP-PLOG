:-use_module(library(clpfd)).

solve:-
    Nomes = [Adams, Baker, Catt, Dodge, Ennis, Fisk], 
    Artigos = [Livro, Vestido, Bolsa, Gravata, Chapeu, Candeeiro], Artigos = [1, 2, 3, 4, 5, 6],
    Andares = [AndarLivro, AndarVestido, AndarBolsa, AndarGravata, AndarChapeu, AndarCandeeiro],
    domain(Nomes, 1, 6),
    domain(Andares, 1, 6),
    all_distinct(Nomes),

    AndarLivro #= 1,
    AndarGravata #= 2,
    AndarVestido #= 3,
    AndarCandeeiro #= 5,
    AndarBolsa #= 2,

    Adams #= Livro,
    Baker #\= Bolsa,
    Baker #\= Gravata, 
    Catt #\= Gravata,
    Ennis #= Candeeiro,
    
    append(Nomes, Andares, Vars),
    labeling([], Vars),

    nl, write(Nomes),
    nl, write(Artigos),
    nl, write(Andares).