:- use_module(library(clpfd)).
:- use_module(library(lists)).

corta(Pranchas, Prateleiras, PranchasSelecionadas):-
    length(Pranchas, NumeroPranchas),
    length(Prateleiras, NumeroPrateleiras),
    length(PranchasSelecionadas, NumeroPrateleiras),
    domain(PranchasSelecionadas, 1, NumeroPranchas),

    createMachines(1, Pranchas, [], Machines),
    createTasks(Prateleiras, PranchasSelecionadas, [], Tasks),

    cumulatives(Tasks, Machines, [bound(upper)]),
    labeling([], PranchasSelecionadas).

createMachines(_, [], Machines, Machines).
createMachines(Id, [Prancha|T], Auxiliar, Machines):-
    append(Auxiliar, [machine(Id, Prancha)], Auxiliar1),
    NewID is Id + 1,
    createMachines(NewID, T, Auxiliar1, Machines).

createTasks([], [], Tasks, Tasks).
createTasks([Prateleira|PT], [PranchasSelecionada|PST], Auxiliar, Tasks):-
    append(Auxiliar, [task(0, 1, 1, Prateleira, PranchasSelecionada)], Auxiliar1),
    createTasks(PT, PST, Auxiliar1, Tasks).
