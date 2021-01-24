:- use_module(library(lists)).

eligibleOutcome(Id,Perf,TT) :-
    performance(Id,Times),
    madeItThrough(Id),
    participant(Id,_,Perf),
    sumlist(Times,TT).

subList(N, List, ResultList) :- append(ResultList, _, List), length(ResultList, N).

nextPhase(N, Participants) :-
    setof(TT-Id-Perf, eligibleOutcome(Id, Perf, TT), List),
    reverse(List, ResultList),
    subList(N, ResultList, Participants).