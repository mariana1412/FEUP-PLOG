max(X, Y, Z, X):- X>Y, X>Z, !.
max(X, Y, Z, Y):- Y>X, Y>Z, !.
max(_, _, Z, Z). 


/*
    a) No caso de X e Y serem iguais e maiores do que Z, Z é indicado como maior número
    b)
        max(X, Y, Z, X):- X>=Y, X>=Z, !.
        max(X, Y, Z, Y):- Y>=Z, !.
        max(_, _, Z, Z). 
*/