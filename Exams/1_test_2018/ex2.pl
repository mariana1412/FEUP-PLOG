shorter(Flight1, Flight2, ShorterFlight):-
    flight(Flight1, _, _, _, Duration1, _),
    flight(Flight2, _, _, _, Duration2, _),
    Duration1 > Duration2,
    ShorterFlight = Flight2.

shorter(Flight1, Flight2, ShorterFlight):-
    flight(Flight1, _, _, _, Duration1, _),
    flight(Flight2, _, _, _, Duration2, _),
    Duration1 < Duration2,
    ShorterFlight = Flight1.