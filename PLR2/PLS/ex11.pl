:-use_module(library(clpfd)).

/*
    Soluções:
    Claudio Voleibol
    David Tenis
    Domingos Andebol
    Francisco Ping-Pong
    Marcelo Futebol
    Paulo Rugby
*/

solve :-
    Nomes = [Claudio, David, Domingos, Francisco, Marcelo, Paulo], Nomes = [1, 2, 3, 4, 5, 6],
    Desportos = [PingPong, Futebol, Andebol, Rugby, Tenis, Voleibol],
    domain(Desportos, 1, 6),
    all_distinct(Desportos),

    % Francisco e Paulo foram ver um dos amigos jogar voleibol.
    Francisco #\= Voleibol,
    Paulo #\= Voleibol,

    Domingos #\= Rugby, % Domingos não gosta de rugby, pois acha um desporto violento.

    % Cláudio, Francisco e o seu amigo que joga andebol foram ver a partida de rugby.
    Claudio #\= Rugby, Claudio #\= Andebol,
    Francisco #\= Rugby, Francisco #\= Andebol,

    % Marcelo foi ver o seu cunhado (que é um dos amigos) jogar ténis.
    % A única irmã de David foi ver o seu marido (que é um dos amigos) jogar futebol.
    Marcelo #= Futebol,
    David #= Tenis,

    labeling([], Desportos),
    write(Desportos), fail.

