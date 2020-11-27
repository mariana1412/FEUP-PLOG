capitais(Lista):-
    findall(Cap*Num, (europa(Cap, Pais, capital, _), conta_cidades(Pais, Num)), Lista).

conta_cidades(Pais, Num):-
    findall(Cid, (europa(Cid, Pais, _, _)), Lista),
    conta_lista(Lista,0,Num). % length(Lista, Num)
    
conta_lista([],CF,CF).
conta_lista([_|T], C, CF):- C2 is C+1, conta_lista(T, C2, CF),!.
