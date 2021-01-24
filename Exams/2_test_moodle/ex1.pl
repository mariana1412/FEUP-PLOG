:- use_module(library(lists)).

/*este programa ordena elementos da primeira lista (L1) 3 a 3 de forma crescente ou de crescente e
    guarda a list a ordenada em L2
*/

p1(L1, L2) :-
    gen(L1, L2),
    test(L2).

gen([], []).
gen(L1, [X|L2]) :-
    select(X, L1, L3),
    gen(L3, L2).

test([]).
test([_]).
test([_, _]).
test([X1, X2, X3|Xs]) :-
    (X1 < X2, X2 < X3; X1 > X2, X2 > X3),
    test(Xs).
