:- use_module(library(clpfd)).

build(Budget, NPacks, ObjectCosts, ObjectPacks, Objects, UsedPacks):-
    length(ObjectCosts, NumberObjects),
    
    Objects = [Obj1, Obj2, Obj3],
    domain(Objects, 1, NumberObjects),
    all_distinct(Objects),

    Cost1 + Cost2 + Cost3 #=< Budget,
    UsedPacks #= Pack1 + Pack2 + Pack3,
    UsedPacks #=< NPacks,

    element(Obj1, ObjectCosts, Cost1),
    element(Obj1, ObjectPacks, Pack1),

    element(Obj2, ObjectCosts, Cost2),
    element(Obj2, ObjectPacks, Pack2),

    element(Obj3, ObjectCosts, Cost3),
    element(Obj3, ObjectPacks, Pack3),

    labeling([maximize(UsedPacks)], Objects).
    
    
