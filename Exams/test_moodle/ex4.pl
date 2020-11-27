bestParticipant(P1, P2, P):-
    performance(P1, Times1),
    performance(P2, Times2),
    getTotalTime(Times1, Time1),
    getTotalTime(Times2, Time2),
    Time1 > Time2,
    P = P1.

bestParticipant(P1, P2, P):-
    performance(P1, Times1),
    performance(P2, Times2),
    getTotalTime(Times1, Time1),
    getTotalTime(Times2, Time2),
    Time1 < Time2,
    P = P2.

getTotalTime(List, Total):- getTotal(List, 0, Total).

getTotal([], AuxTotal, AuxTotal).
getTotal([H|T], AuxTotal, Total):-
    Aux is (AuxTotal + H),
    getTotal(T, Aux, Total).