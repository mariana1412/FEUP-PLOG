:- use_module(library(clpfd)).

magic_square_3x3(Vars) :-
    Vars = [A, B, C, D, E, F, G, H, I],
    domain(Vars, 1, 9),
    all_distinct(Vars),
    A + B + C #= Value,
    D + E + F #= Value,
    G + H + I #= Value,
    A + D + G #= Value,
    B + E + H #= Value,
    C + F + I #= Value,
    A + E + I #= Value,
    C + E + G #= Value,
    A #< C, A #< G, C #< G, %eliminar simetrias
    labeling([], Vars).

    