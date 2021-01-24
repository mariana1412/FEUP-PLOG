:-use_module(library(clpfd)).
:-use_module(library(lists)).

/*
    Soluções:
    Nenhum - 147
    Liquido - 98
    Po - 63
    Liquido e Po - 427
    Total - 735 
*/

solve:-
    Vars = [Nenhum, Liquido, Po, LiquidoPo],
    domain(Vars, 0, 100000),

    Total #= Liquido + Po + LiquidoPo + Nenhum,
    
    %Um terço das pessoas interrogadas não utilizam o pó
    (Liquido + Nenhum) * 3 #= Total,
    (Po + LiquidoPo) * 3 #= 2 * Total, 

    %Dois sétimos das pessoas interrogadas não utiliza o líquido
    (Po + Nenhum) * 7 #= 2 * Total,
    (LiquidoPo + Liquido) * 7 #= 5 * Total,

    %427 pessoas utilizam o líquido e o pó
    LiquidoPo #= 427,

    %Um quinto das pessoas interrogadas não utilizam o produto
    Nenhum * 5 #= Total,
    (Liquido + Po + LiquidoPo) * 5 #= 4 * Total,

    labeling([], Vars),
    write(Vars), nl,
    write(Total), fail.
     
