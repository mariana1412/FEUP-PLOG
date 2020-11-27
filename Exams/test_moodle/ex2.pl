juriTimes(Participants, JuriMember, Times, Total):-
    juriTime(Participants, JuriMember, [], Times, 0, Total).

juriTime([], _, AuxTimes, AuxTimes, AuxTotal, AuxTotal).
juriTime([P1|Rest], JuriMember, AuxTimes, Times, AuxTotal, Total):-
    performance(P1, JuriT),
    nth_member(JuriMember, JuriT, Time),
    append(AuxTimes, [Time], NewTimes),
    NewTotal is (AuxTotal+Time),
    juriTime(Rest, JuriMember, NewTimes, Times, NewTotal, Total).

nth_member(1, [X|_], X).
nth_member(N, [_|T], X):-
    N\=1,
    N1 is (N-1),
    nth_member(N1, T, X).

