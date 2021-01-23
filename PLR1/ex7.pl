:- use_module(library(clpfd)).

turkey:- %X67Y
    domain([X], 1, 9),
    domain([Y], 0, 9),
    Price * 72 #= X*1000 + 670 + Y,
    labeling([], [X, Y]),
    TotalPrice is Price * 72,
    write('Total Price = '), write(TotalPrice).
    
