:-use_module(library(clpfd)).
:-use_module(library(lists)).

/*
    Soluções:
    1. La Vie Claire, Frances
    2. Sistema V, Brasileiro
    3. Fagor, Ingles
    4. Fagor, Espanhol
    5. Sistema V, Italiano 
    6. La Vie Claire, Alemao 
*/

solve:-
    Marcas = [LaVieClaire1, LaVieClaire2, SistemaV1, SistemaV2, Fagor1, Fagor2],
    Nacionalidades = [Alemao, Ingles, Brasileiro, Espanhol, Italiano, Frances],
    domain(Marcas, 1, 6),
    domain(Nacionalidades, 1, 6),
    all_distinct(Marcas),
    all_distinct(Nacionalidades),

    %O n°1 e o alemão são corredores da marca La Vie Claire 
    LaVieClaire1 #= 1,
    LaVieClaire2 #= Alemao,

    %O n°5 e o brasileiro são corredores da marca Sistema-V
    SistemaV1 #= 5,
    SistemaV2 #= Brasileiro, 

    %O espanhol e o n°3 são corredores da marca Fagor
    Fagor1 #= Espanhol,
    Fagor2 #= 3,

    %Os corredores n°2 e o n°6 têm vantagem no princípio do circuito Aulne enquanto que o espanhol ficou sem gasolina 
    Espanhol #\= 2, Espanhol #\= 6,

    %O italiano e o francês adiantaram-se 30 segundos do corredor n°3 na terceira volta deste circuito de 5.8 Km que deve ser repetido 11 vezes 
    Italiano #\= 3,
    Frances #\= 3,

    Alemao #\= 2, %O n°2 e o alemão tiveram que abandonar a prova
    Italiano #\= 1, %O n°1 ganha a corrida na frente do italiano

    append(Marcas, Nacionalidades, Vars),
    labeling([], Vars),
    write(Marcas), nl,
    write(Nacionalidades), nl.
    
