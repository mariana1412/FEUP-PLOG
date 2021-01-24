allPerfs:-
    getParticipants(Participants),
    printParticipants(Participants).

printParticipants([]).
printParticipants([H|T]):-
    printParticipant(H),
    printParticipants(T).

printParticipant(Participant):-
    participant(Participant, _, NamePerformance),
    performance(Participant, Times),
    write(Participant), write(':'), write(NamePerformance), write(':'), write(Times), nl.