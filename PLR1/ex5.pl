:- use_module(library(clpfd)).

guards :-
    Vars = [A, B, C, D, E, F, G, H, I, J, K, L], % cada uma representa uma sala
    domain(Vars, 0, 12), %numero de guardas numa sala
    A + B + C + D + E + F + G + H + I + F + J + K + L #= 12,
    A + B + C + D #= 5,
    A + E + G + I #= 5,
    D + F + H + L #= 5,
    I + J + K + L #= 5,
    labeling([], Vars),
    write(Vars).
     
