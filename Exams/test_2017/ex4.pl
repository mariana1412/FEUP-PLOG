isMember(X, [X | _]).
isMember(X, [_ | T]) :- isMember(X, T).

listGamesOfCategory(Cat) :-
    game(Name, Categories, MinAge),
    isMember(Cat, Categories),
    format('~s (~d)\n', [Name, MinAge]),
    fail.

listGamesOfCategory(_).