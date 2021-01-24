:-use_module(library(clpfd)).

/*
    Soluções:
    ComumInglesHistoria - 4
    ComumFrancesHistoria - 22
    ComumInglesLiteratura - 19
    ComumFrancesLiteratura - 12
    DuraInglesHistoria - 23 
    DuraFrancesHistoria - 3
    DuraInglesLiteratura - 0
    DuraFrancesLiteratura - 8
    Total - 91
*/

solve :-
    Vars = [ComumInglesHistoria, ComumFrancesHistoria, ComumInglesLiteratura, ComumFrancesLiteratura,
            DuraInglesHistoria, DuraFrancesHistoria, DuraInglesLiteratura, DuraFrancesLiteratura],
    domain(Vars, 0, 1000),

    %52 livros de história, dos quais 27 estão em inglês
    ComumInglesHistoria + ComumFrancesHistoria + DuraInglesHistoria + DuraFrancesHistoria #= 52,
    ComumInglesHistoria + DuraInglesHistoria #= 27,

    %34 livros encadernados com capa dura dos quais 3 são de história e em francês
    DuraInglesHistoria + DuraFrancesHistoria + DuraInglesLiteratura + DuraFrancesLiteratura #= 34,
    DuraFrancesHistoria #= 3,

    %46 livros em inglês, a metade deles encadernados com capa comum
    ComumInglesHistoria + ComumInglesLiteratura #= 23,
    DuraInglesHistoria + DuraInglesLiteratura #= 23,

    %20 livros de literatura em francês
    ComumFrancesLiteratura + DuraFrancesLiteratura #= 20,

    %31 livros de literatura encadernados com capa comum
    ComumInglesLiteratura + ComumFrancesLiteratura #= 31,

    labeling([], Vars),
    write(Vars), nl,
    Sum is ComumInglesHistoria + ComumFrancesHistoria + ComumInglesLiteratura + ComumFrancesLiteratura +
            DuraInglesHistoria + DuraFrancesHistoria + DuraInglesLiteratura + DuraFrancesLiteratura,
    write(Sum).
