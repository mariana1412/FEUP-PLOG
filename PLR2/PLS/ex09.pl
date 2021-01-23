:-use_module(library(clpfd)).

/*
    Soluções:
    1. Carlos 
    2. Luis
    3. Tomas
    4. Roberto
    5. Diego
    6. Boris
    7. Raul
    8. Ricardo
*/

solve :-
    Nomes = [Carlos, Ricardo, Raul, Tomas, Roberto, Boris, Diego, Luis],
    domain(Nomes, 1, 8),
    all_distinct(Nomes),

    Tomas #< 5, % Tomas chegou entre os quatro primeiros

    % Na manhã do torneio, Raul, Tomas e o que chegou em quarto lugar, tomaram o pequeno-almoço juntos
    Raul #\= 4, 
    Tomas #\= 4,

    % Diego, Boris e os que chegaram no sétimo e oitavo lugares estavam esgotados na chegada
    Diego #\= 7,
    Diego #\= 8,
    Boris #\= 7,
    Boris #\= 8,

    % Raul e o quinto colocado estavam na frente dos oito corredores antes da última volta 
    Raul #\= 5,
    Raul #\= 1,
    Raul #\= 2,

    % Carlos e Luís foram os dois primeiros a chegarem
    Carlos #= 1 #\/ Carlos #= 2,
    Luis #= 1 #\/ Luis #= 2,

    % A irmã de Boris aplaudiu seu marido, que chegou em sétimo
    % O terceiro colocado faz hoje o seu primeiro aniversário de casamento
    % As esposas do primeiro e quarto colocados abraçaram seus maridos no final do torneio
    % A esposa do quinto colocado é irmã de Roberto 
    %Luís, Ricardo e Boris são solteiros, os outros são casados
    Luis #\= 3, Luis #\= 1, Luis #\= 4, Luis #\= 5, Luis #\= 7,
    Ricardo #\= 3, Ricardo #\= 1, Ricardo #\= 4, Ricardo #\= 5, Ricardo #\= 7,
    Boris #\= 3, Boris #\= 1, Boris #\= 4, Boris #\= 5,
    Roberto #\= 5,

    labeling([], Nomes),
    write(Nomes).