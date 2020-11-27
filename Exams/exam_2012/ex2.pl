extremos([H|T], Maximo, Minimo):-
    Aux = T,
    getMax(Aux, H, Maximo),
    getMin(T, H, Minimo).

getMax([], Maximo, Maximo):- !.
getMax([H|T], Aux, Maximo):-
    H > Aux,
    NewMax = H,
    getMax(T, NewMax, Maximo).
getMax([_|T], Aux, Max):- getMax(T, Aux, Max).

getMin([], Minimo, Minimo):- !.
getMin([H|T], Aux, Minimo):-
    H < Aux,
    NewMin = H,
    getMin(T, NewMin, Minimo).
getMin([_|T], Aux, Min):- getMin(T, Aux, Min).
