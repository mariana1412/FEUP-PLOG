%aeroporto -vooChegada\VooPartida
%chega e sai entre 30 e 90 minutos

pairableFlights:-
    \+ getPairableFlights.

getPairableFlights:-
    flight(Flight1, _, Airport, _, _, _),
    arrivalTime(Flight1, ArrivalTime),
    flight(Flight2, Airport, _, DepartureTime, _, _),
    timeInMinutes(ArrivalTime, MinutesArrival),
    timeInMinutes(DepartureTime, MinutesDeparture),
    Difference is (MinutesDeparture-MinutesArrival),
    Difference >= 30, Difference =< 90,
    format('~s - ~s \\ ~s\n', [Airport, Flight1, Flight2]),
    fail.
