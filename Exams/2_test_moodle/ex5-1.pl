:- use_module(library(clpfd)).
:- use_module(library(lists)).

embrulha(Rolos, Presentes, RolosSelecionados):-
    length(Rolos, NumeroRolos),
    length(Presentes, NumerosPresentes),
    length(RolosSelecionados, NumerosPresentes),
    domain(RolosSelecionados, 1, NumeroRolos),

    createMachines(1, Rolos, [], Machines),
    createTasks(Presentes, RolosSelecionados, [], Tasks),
    cumulatives(Tasks, Machines, [bound(upper)]),
    
    labeling([], RolosSelecionados).
    
createMachines(_, [], Machines, Machines).
createMachines(Id, [Rolo|T], Auxiliar, Machines):-
    append(Auxiliar, [machine(Id, Rolo)], Auxiliar1),
    NewId is Id + 1,
    createMachines(NewId, T, Auxiliar1, Machines).

createTasks([], [], Tasks, Tasks).
createTasks([Presente|TP], [RoloSelecionado|TR], Auxiliar, Tasks):-
    append(Auxiliar, [task(0, 1, 1, Presente, RoloSelecionado)], Auxiliar1),
    createTasks(TP, TR, Auxiliar1, Tasks).

