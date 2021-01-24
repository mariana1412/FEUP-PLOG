timePlayingGames(Player, Games, ListOfTimes, SumTimes):-
    timePlayingGames(Player, Games, [], ListOfTimes, 0, SumTimes).

timePlayingGames(_, [], List, List, Times, Times).
timePlayingGames(Player, [Game|Games], AuxList, List, AuxTimes, Times):-
    played(Player, Game, Hours, _),
    AuxH is (AuxTimes + Hours),
    append(AuxList, [Hours], NewList),
    timePlayingGames(Player, Games, NewList, List, AuxH, Times).

timePlayingGames(Player, [Game|Games], AuxList, List, AuxTimes, Times):-
    Hours = 0,
    AuxH is (AuxTimes + Hours),
    append(AuxList, [Hours], NewList),
    timePlayingGames(Player, Games, NewList, List, AuxH, Times).
