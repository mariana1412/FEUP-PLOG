:-use_module(library(clpfd)).

/*
    Solução: 100 pessoas participam numa unica reunião
*/

solve :-
    Vars = [A, B, C, AB, BC, AC, ABC],
    domain(Vars, 1, 200),

    A + B + C + AB + BC + AC + ABC #= 200, % No total, 200 pessoas mobilizaram-se
    A + AB + AC + ABC #= 130, % 130 pessoas participaram na reunião organizada por Armivisti
    B + AB + BC + ABC #= 135, % 135 na de Baratin
    C + BC + AC + ABC #= 65,  % 65 na de Compromis
    ABC #= 30, % 30 participaram das três reuniões

    labeling([], Vars),
    Sum is A + B + C, 
    write(Sum).