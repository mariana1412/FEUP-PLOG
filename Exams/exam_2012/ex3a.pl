cidades_grandes(Pais, Lista, Pop_Total):-
    getCountryCities(Pais, Lista),
    getTotal(Lista, 0, Pop_Total).

getCountryCities(Pais, Cities):-
    getCountryCities(Pais, [], Cities).

getCountryCities(Pais, Aux, Cities):-
    europa(Cidade, Pais, cidade, Populacao),
    Populacao > 100,
    \+ find([Cidade, Populacao], Aux),
    append([[Cidade, Populacao]], Aux, NewList),
    getCountryCities(Pais, NewList, Cities).

getCountryCities(_, Cities, Cities).

find(X, [X|_]).
find(X, [_|T]):- find(X, T).

getTotal([], Total, Total).
getTotal([[_, Pop]|T], Aux, Total):-
    NewAux is (Aux + Pop),
    getTotal(T, NewAux, Total).