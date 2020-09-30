comprou(joao, honda). 
comprou(joao, uno).

ano(honda, 1997).
ano(uno, 1998).

valor(honda, 20000). 
valor(uno, 7000).

pode_vender(P, C, A) :- comprou(P, C), ano(C, X), A-10<X, valor(C, V), V<10000.    