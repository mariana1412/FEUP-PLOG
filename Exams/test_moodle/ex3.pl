patientJuri(JuriMember):-
    getParticipants(Participants),
    juriTimes(Participants, JuriMember, Times, _),
    countTimes(120, Times, N), !,
    N >= 2.

getParticipants(Participants):- allParticipants([], Participants).

allParticipants(AuxParticipants, Participants):-
    performance(Participant, _),
    \+ find(Participant, AuxParticipants),
    append(AuxParticipants, [Participant], NewParticipants),
    allParticipants(NewParticipants, Participants).

allParticipants(AuxParticipants, AuxParticipants).

countTimes(X, Times, N):-
    count(X, Times, 0, N).

count(_, [], AuxN, AuxN).
count(X, [X|T], AuxN, N):-
    N1 is (AuxN+1),
    count(X, T, N1, N).
count(X, [H|T], AuxN, N):-
    X \= H,
    count(X, T, AuxN, N).

