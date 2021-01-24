:- use_module(library(clpfd)).

testPLR([_, _]).
testPLR([X1, X2, X3|Xs]) :-
    (X1 #< X2, X2 #< X3; X1 #> X2, X2 #> X3),
    testPLR(Xs).

p2(L1, L2) :-
    length(L1, N),
    length(L2, N),

    pos(L1, L2, Is),
    all_distinct(Is),
    testPLR(L2),

    labeling([], Is).

pos([], _, []).
pos([X|Xs], L2, [I|Is]) :-
    element(I, L2, X),
    pos(Xs, L2, Is).


