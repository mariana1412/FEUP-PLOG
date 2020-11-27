membro(X, [X|_]).
membro(X, [H|T]):- X\=H, membro(X, T).