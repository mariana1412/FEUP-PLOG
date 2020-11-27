A :- B, C, !, D, E.
A :- F, G.

/*
    Se B e C verdadeiros:
        -> se D e E falsos, falha e passa para A:-F,G
        -> se D e E verdadeiros, aceita
    Se B e C falsos, falha e passa para A:-F,G
*/
