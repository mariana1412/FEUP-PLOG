:-use_module(library(clpfd)).

/*
    Soluções:
    1. Bernard - Porco,
    2. Daniel - Esparguete,
    3. Francisco - Bife,
    4. Henrique - Pato,
    5. Jaqueline - Omoleta,
    6. Luis - Peixe
*/

solve :- 
    Nomes = [Bernard, Daniel, Francisco, Henrique, Jaqueline, Luis], Nomes = [1, 2, 3, 4, 5, 6],
    Pratos = [Peixe, Porco, Pato, Omoleta, Bife, Esparguete],
    domain(Pratos, 1, 6),
    all_distinct(Pratos),

    % Daniel, Jaqueline e quem pediu o peixe apreciam vinho branco
    Daniel    #\= Peixe,
    Jaqueline #\= Peixe,
    
    % Francisco olha com inveja para as pessoas que pediram porco e pato com laranja
    Francisco #\= Porco,
    Francisco #\= Pato,

    %Bernard e Daniel estão sentados na frente dos que comem omeleta e pato com laranja
    Bernard #\= Omoleta,
    Bernard #\= Pato,
    Daniel  #\= Omoleta,
    Daniel  #\= Pato,

    %Bernard, Francisco e Henrique pediram, cada um, um prato de carne (i.e. porco, pato ou bife)
    Bernard #= Porco #\/ Bernard #= Bife,
    Francisco #= Bife,
    Henrique #= Porco #\/ Henrique #= Pato,

    labeling([], Pratos),
    nl, write(Pratos).
.