updatePlayer(Player, Game, Hours, Percentage) :-
    retract(played(Player, Game, OldHours, OldPercentage)),
    NewHours is (OldHours + Hours),
    NewPercenatge is (OldPercentage + Percentage),
    assert(played(Player, Game, NewHours, NewPercenatge)).

updatePlayer(Player, Game, Hours, Percentage) :-
    assert(played(Player, Game, Hours, Percentage)).