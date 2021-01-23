:-use_module(library(clpfd)).

% posições : Preto - 2, Azul - 3, Amarelo - 4, Verde - 1  logo verde está à frente

solve :-
    Carros = [Carro1, Carro2, Carro3, Carro4],
    Cores = [Amarelo, Verde, Azul, Preto], Cores = [1, 2, 3, 4],
    Tamanho = [Tamanho1, Tamanho2, Tamanho3, Tamanho4],
    domain(Carros, 1, 4), all_distinct(Carros),
    domain(Tamanho, 1, 4), all_distinct(Tamanho),

    %carro que está imediatamente antes do carro azul é menor do que o que está imediatamente depois do carro azul
    element(IndexAzul, Carros, Azul), 
    IndexPosAzul #= IndexAzul + 1, IndexPreAzul #= IndexAzul - 1,
    element(IndexPosAzul, Tamanho, TamPosAzul), element(IndexPreAzul, Tamanho, TamPreAzul),
    TamPreAzul #< TamPosAzul,

    %carro verde é o menor
    element(IndexVerde, Carros, Verde), element(IndexVerde, Tamanho, TamVerde), TamVerde #= 1,

    %o carro verde está depois do carro azul
    IndexVerde #> IndexAzul,

    %carro amarelo está depois do preto
    element(IndexAmarelo, Carros, Amarelo), element(IndexPreto, Carros, Preto), IndexAmarelo #> IndexPreto,

    append(Carros, Tamanho, Vars),
    labeling([], Vars),
    write(Carros), nl, write(Tamanho).