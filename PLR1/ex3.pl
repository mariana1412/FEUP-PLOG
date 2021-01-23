:- use_module(library(clpfd)).

%4x4 -> alinea a
nqueens(Vars):- 
    Vars = [A1, A2, A3, A4], %cada variavel corresponde a uma coluna e cada uma já está colocada numa linha diferente
    domain(Vars, 1, 4),
    all_distinct(Vars), 
    A1 #\= A2 + 1, A1 #\= A2 - 1, A1 #\= A3 + 2, A1 #\= A3 - 2, A1 #\= A4 + 3, A1 #\= A4 - 3,
    A2 #\= A3 + 1, A2 #\= A3 - 1, A2 #\= A4 + 2, A2 #\= A4 - 2,
    A3 #\= A4 + 1, A3 #\= A4 - 1,
    labeling([], Vars).
   
%NxN -> alinea b
nqueens(N, Vars):-
    length(Vars, N),
    domain(Vars, 1, N),
    all_distinct(Vars),
    restrictions(Vars),
    labeling([], Vars).
    
restrictions([]).
restrictions([H|T]):-
    restriction(H, T, 1),
    restrictions(T).

restriction(_, [], _).
restriction(X, [H|T], N):-
    constrain(X, H, N),
    N1 is N+1,
    restriction(X, T, N1).

constrain(X, Y, N):-
    X #\= Y + N,
    X #\= Y - N.