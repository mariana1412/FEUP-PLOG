:- use_module(library(clpfd)).

solve :-
    Vars = [Ar, Bat, Esp, At],
    domain(Vars, 1, 711),
    Ar + Bat + Esp + At #= 711,
    Ar * Bat * Esp * At #= 711 * 1000000,
    (mod(Ar, 10) #= 0 #/\ (mod(Bat, 10) #= 0 #\/ mod(Esp, 10) #= 0 #\/ mod(At, 10) #= 0)) #\/
    (mod(Bat, 10) #= 0 #/\ (mod(Esp, 10) #= 0 #\/ mod(At, 10) #= 0)) #\/
    (mod(Esp, 10) #= 0 #/\ (mod(At, 10) #= 0)),
    Bat #> At,                            % batatas mais caras do que o atum
    At #> Ar,                             % atum é mais caro que o arroz
    Esp #< Ar, Esp #< Bat, Esp #< At,     % esparguete é o mais barato
    labeling([], Vars),
    write(Vars), nl.
    
