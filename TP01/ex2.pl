/* -*- Mode:Prolog; coding:iso-8859-1; indent-tabs-mode:nil; prolog-indent-width:8; prolog-paren-indent:4; tab-width:8; -*- */

pilot(lamb). %lamb is a pilot
pilot(besenyei).
pilot(chambliss).
pilot(macLean).
pilot(mangold).
pilot(jones).
pilot(bonhomme).

team(lamb, breitling). %Lamb is on Breitling team
team(besenyei, redBull).
team(chambliss, redBull).
team(macLean, mediterraneanRacingTeam).
team(mangold, cobra).
team(jones, matador).
team(bonhomme, matador).

airplane(lamb, mx2). %lamb has a mx2 airplane
airplane(besenyei, edge540).
airplane(chambliss, edge540).
airplane(macLean, edge540).
airplane(mangold, edge540).
airplane(jones, edge540).
airplane(bonhomme, edge540).

circuit(instanbul). %instanbul is a circuit
circuit(budapest).
circuit(porto).

won(jones, porto). % pilot, circuit
won(mangold, budapest).
won(mangold, instanbul).

ngates(istanbul, 9). %istanbul has 9 gates
ngates(budapest, 6).
ngates(porto, 5).

wonTeam(T, C) :- won(P, C), team(P, T).

% a. won(X, porto).
% b. wonTeam(X, porto).
% c. won(X, Y), won(X, W), Y\=W.
% d. ngates(X, Y), Y>8.
% e. airplane(X, Y), Y\=edge540