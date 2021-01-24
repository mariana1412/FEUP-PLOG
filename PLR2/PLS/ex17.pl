:-use_module(library(clpfd)).
:-use_module(library(lists)).

/*
    Amarelo - 1, Verde - 2, Vermelho - 3, Azul - 4 
    
    Soluções: 
    Semaforo Amarelo Azul Vermelho Amarelo Azul Verde Vermelho Amarelo Verde Vermelho Azul Amarelo 
*/

solve:-
    length(Carros, 12),
    global_cardinality(Carros, [1-4, 2-2, 3-3, 4-3]), % Os automóveis têm a seguinte distribuição de cores: 4 amarelos, 2 verdes, 3 vermelhos e 3 azuis

    % O primeiro e o último automóvel são da mesma cor
    element(1, Carros, Cor),
    element(12, Carros, Cor),
    
    % O segundo e o penúltimo são da mesma cor
    element(2, Carros, Cor1),
    element(11, Carros, Cor1),

    element(5, Carros, 4), % O quinto automóvel é azul
    three_different(Carros), % Todos os conjuntos de três automóveis consecutivos têm três cores distintas
    check_sequence(Carros, 1), % Partindo do primeiro automóvel para o último, é possível visualizar a sequência amarelo-verdevermelho-azul uma única vez

    labeling([], Carros),
    write(Carros), nl, fail.

% Todos os conjuntos de três automóveis consecutivos têm três cores distintas
three_different(C) :- length(C, N), N < 3.
three_different([C1, C2, C3 | T]):-
    all_distinct([C1, C2, C3]),
    three_different([C2, C3 | T]).
    
% Partindo do primeiro automóvel para o último, é possível visualizar a sequência amarelo-verde-vermelho-azul uma única vez
check_sequence(C, 0):- length(C, N), N < 4.
check_sequence([C1, C2, C3, C4 | T], Counter):-
    (C1 #= 1 #/\ C2 #= 2 #/\ C3 #= 3 #/\ C4 #= 4) #<=> Bin,
    Counter #= NewCounter + Bin,
    check_sequence([C2, C3, C4 | T], NewCounter).
