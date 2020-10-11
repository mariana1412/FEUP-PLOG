divisivel(X,Y):-
N is Y*Y,
N =< X,
X mod Y =:= 0.

divisivel(X,Y):-
Y < X,
Y1 is Y+1,
divisivel(X,Y1).

e_primo(X):-
Y is 2, X > 1, \+divisivel(X,Y).