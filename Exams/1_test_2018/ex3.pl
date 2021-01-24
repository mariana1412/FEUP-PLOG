arrivalTime(Flight, ArrivalTime):-
    flight(Flight, _, _, DepartureTime, Duration, _),
    timeInMinutes(DepartureTime, DepartureMinutes),
    ArrivalMinutes is (DepartureMinutes + Duration),
    minutesToTime(ArrivalMinutes, ArrivalTime).

timeInMinutes(Time, Minutes):-
    HourTime is (Time//100),
    MinutesTime is (Time mod 100),
    Minutes is (HourTime*60 + MinutesTime).

minutesToTime(Minutes, Time):-
    M is (Minutes mod 60),
    H is (Minutes // 60),
    Time is (M + H*100).