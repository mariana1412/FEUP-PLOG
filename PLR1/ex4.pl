:- use_module(library(clpfd)).
:- use_module(library(lists)).

delete_duplicate_vars([], []).
delete_duplicate_vars([X|Vars], VarsPurged) :- is_duplicate_var(X, Vars), !, delete_duplicate_vars(Vars, VarsPurged).
delete_duplicate_vars([X|Vars], VarsPurged) :- ground(X), !, delete_duplicate_vars(Vars, VarsPurged).
delete_duplicate_vars([X|Vars], [X|VarsPurged]) :- delete_duplicate_vars(Vars, VarsPurged).

is_duplicate_var(X, [Y|Vars]) :- X == Y.
is_duplicate_var(X, [_|Vars]) :- is_duplicate_var(X, Vars).

puzzle(L1, L2, Result):-
    flatten([L1, L2, Result], RVars),
    delete_duplicate_vars(RVars, Vars),
    domain(Vars, 0, 9),
    all_distinct(Vars),
    zero_restriction(L1, L2, Result),
    apply_restrictions(L1, L2, Result),
    labeling([ff], Vars).

zero_restriction(L1, L2, L3):-
    zero_restriction(L1),
    zero_restriction(L2),
    zero_restriction(L3).

zero_restriction([]).
zero_restriction([H|T]):- ground(H), !, zero_restriction(T).
zero_restriction([H|_]):- H #\= 0.

apply_restrictions(L1, L2, R):-
    apply_restriction(L1, 0, Value1),
    apply_restriction(L2, 0, Value2),
    apply_restriction(R, 0, Result),
    Value1 + Value2 #= Result.

apply_restriction([], Value, Value).
apply_restriction([H|T], V, Value) :-
    NewV #= 10*V + H,
    apply_restriction(T, NewV, Value).
