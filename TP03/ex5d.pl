
nth_member(1, [H|_], H).
nth_member(N, [_|T], X):- 
    N \= 1,
    N1 is (N-1),
    nth_member(N1, T, X).