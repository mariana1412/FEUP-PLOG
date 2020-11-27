membro(X, L) :- append(_, [X | _], L).

delete_one(X, L, L1):- append(La, [X|Lb], L), append(La, Lb, L1). 

%se não é membro e se lista resultante já tem todos os elementos de L1 então chegou-se ao fim do processo.
delete_all(X, L1, L2) :- L2 = L1, \+membro(X, L1).

%eliminar recursivamente o primeiro valor igual ao elemento da lista
delete_all(X, L1, L2) :- 
    delete_one(X, L1, L),
    delete_all(X, L, L2). 

delete_all_list([], L, L).

delete_all_list([H|T], L, L1):- 
    delete_all(H, L, L2), 
    delete_all_list(T, L2, L1).