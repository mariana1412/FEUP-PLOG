juriFans(L):-
    findall([Participant, Times], performance(Participant, Times), Participants),
    getFans(Participants, [], L).

getFans([], AuxList, AuxList).
getFans([[Participant, Times]|T], AuxList, List):-
    getJuris(Times, 1, [], JuriList),
    append(AuxList, [Participant-JuriList], NewList),
    getFans(T, NewList, List).

getJuris([], _, List, List).
getJuris([120|T], Index, Aux, List):-
    append(Aux, [Index], NewList),
    N1 is (Index+1),
    getJuris(T, N1, NewList, List).

getJuris([_|T], Index, Aux, List):-
    N1 is (Index+1),
    getJuris(T, N1, Aux, List).


