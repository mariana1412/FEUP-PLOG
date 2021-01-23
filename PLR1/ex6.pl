:- use_module(library(clpfd)).

sum_product(A, B, C):-
    Vars = [A, B, C],
    domain(Vars, 0, 10000),
    all_distinct(Vars),
    A + B + C #= A * B * C,
    A #< B, B #< C, %remover simetrias
    labeling([], Vars).