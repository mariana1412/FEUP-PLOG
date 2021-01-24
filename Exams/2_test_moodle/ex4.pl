:- use_module(library(clpfd)).

receitas(NOvos, TempoMax, OvosPorReceita, TempoPorReceita, OvosUsados, Receitas):-
    length(OvosPorReceita, NumeroReceitas),
    Receitas = [R1, R2, R3, R4],
    domain(Receitas, 1, NumeroReceitas),
    all_distinct(Receitas),

    T1 + T2 + T3 + T4 #=< TempoMax,
    OvosUsados #= Ovos1 + Ovos2 + Ovos3 + Ovos4,
    OvosUsados #=< NOvos,

    element(R1, TempoPorReceita, T1),
    element(R1, OvosPorReceita, Ovos1),

    element(R2, TempoPorReceita, T2),
    element(R2, OvosPorReceita, Ovos2),
    
    element(R3, TempoPorReceita, T3),
    element(R3, OvosPorReceita, Ovos3),
    
    element(R4, TempoPorReceita, T4),
    element(R4, OvosPorReceita, Ovos4),

    labeling([maximize(OvosUsados)], Receitas).


