inverter(List, Rev):- rev(List, [], Rev).

rev([], Rev, Rev).
rev([H|T], S, Rev):- rev(T, [H|S], Rev).

