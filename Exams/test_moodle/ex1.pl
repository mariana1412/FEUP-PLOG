madeItThrough(Participant):-
    performance(Participant, Times),
    find(120, Times).

find(X, [X|_]).
find(X, [H|T]):-
    X \= H, find(X, T).

