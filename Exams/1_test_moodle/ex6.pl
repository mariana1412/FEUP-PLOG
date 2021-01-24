nSuccessfulParticipants(T):-
    findall(Participant, noButton(Participant), Participants),
    length(Participants, T).

noButton(Participant):-
    performance(Participant, Times),
    \+ withButtons(Times).
    
withButtons([H|_]):- H < 120.
withButtons([_|T]):- withButtons(T).
    