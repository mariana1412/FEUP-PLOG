remove_todos(_, [], []).
remove_todos(X, [X|T], T2):- !, remove_todos(X, T, T2).
remove_todos(X, [H|T], [H|T2]):- remove_todos(X, T, T2).