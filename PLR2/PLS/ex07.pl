:-use_module(library(clpfd)).

/*
    Soluções:
    Joao - Vermouth, Miguel - Cerveja, Nadia - Vodka, Silvia - Laranjada, Afonso - Cha, 
    Cristina - Cafe, Geraldo - Champanhe, Julio - Vinho, Maria - Agua, Maximo - Limonada, 
    Manuel - Whisky, Ivone - Guarana
*/

solve:-
    Nomes = [Joao, Miguel, Nadia, Silvia, Afonso, Cristina, Geraldo, Julio, Maria, Maximo, Manuel, Ivone], 
    Nomes = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
    Bebidas = [Limonada, Guarana, Whisky, Vinho, Champanhe, Agua, Laranjada, Cafe, Cha, Vermouth, Cerveja, Vodka],
    domain(Bebidas, 1, 12),
    all_distinct(Bebidas),

    %primeiro dia
    Geraldo #\= Vodka, Geraldo #\= Cerveja, Geraldo #\= Vermouth, Geraldo #\= Cha, Geraldo #\= Cafe, Geraldo #\= Laranjada,
    Julio #\= Vodka,   Julio #\= Cerveja,   Julio #\= Vermouth,   Julio #\= Cha,   Julio #\= Cafe,   Julio #\= Laranjada,
    Maria #\= Vodka,   Maria #\= Cerveja,   Maria #\= Vermouth,   Maria #\= Cha,   Maria #\= Cafe,   Maria #\= Laranjada,
    Maximo #\= Vodka,  Maximo #\= Cerveja,  Maximo #\= Vermouth,  Maximo #\= Cha,  Maximo #\= Cafe,  Maximo #\= Laranjada,
    Manuel #\= Vodka,  Manuel #\= Cerveja,  Manuel #\= Vermouth,  Manuel #\= Cha,  Manuel #\= Cafe,  Manuel #\= Laranjada,
    Ivone #\= Vodka,   Ivone #\= Cerveja,   Ivone #\= Vermouth,  Ivone #\= Cha,    Ivone #\= Cafe,   Ivone #\= Laranjada,

    %segundo dia
    Joao #\= Cha,    Joao #\= Cafe,    Joao #\= Guarana,    Joao #\= Whisky,    Joao #\= Laranjada,    Joao #\= Limonada,
    Miguel #\= Cha,  Miguel #\= Cafe,  Miguel #\= Guarana,  Miguel #\= Whisky,  Miguel #\= Laranjada,  Miguel #\= Limonada,
    Julio #\= Cha,   Julio #\= Cafe,   Julio #\= Guarana,   Julio #\= Whisky,   Julio #\= Laranjada,   Julio #\= Limonada,
    Geraldo #\= Cha, Geraldo #\= Cafe, Geraldo #\= Guarana, Geraldo #\= Whisky, Geraldo #\= Laranjada, Geraldo #\= Limonada,
    Nadia #\= Cha,   Nadia #\= Cafe,   Nadia #\= Guarana,   Nadia #\= Whisky,   Nadia #\= Laranjada,   Nadia #\= Limonada,
    Maria #\= Cha,   Maria #\= Cafe,   Maria #\= Guarana,   Maria #\= Whisky,   Maria #\= Laranjada,   Maria #\= Limonada,

    %tenis
    Geraldo #\= Agua, Geraldo #\= Whisky, Geraldo #\= Cha, Geraldo #\= Vodka,
    Maximo #\= Agua,  Maximo #\= Whisky,  Maximo #\= Cha,  Maximo #\= Vodka,
    Joao #\= Agua,    Joao #\= Whisky,    Joao #\= Cha,    Joao #\= Vodka,
    Silvia #\= Agua,  Silvia #\= Whisky,  Silvia #\= Cha,  Silvia #\= Vodka,

    %ultimo dia
    Julio #\= Champanhe,  Julio #\= Agua,  Julio #\= Guarana,  Julio #\= Vodka,  Julio #\= Cafe,
    Miguel #\= Champanhe, Miguel #\= Agua, Miguel #\= Guarana, Miguel #\= Vodka, Miguel #\= Cafe,
    Maximo #\= Champanhe, Maximo #\= Agua, Maximo #\= Guarana, Maximo #\= Vodka, Maximo #\= Cafe,
    Manuel #\= Champanhe, Manuel #\= Agua, Manuel #\= Guarana, Manuel #\= Vodka, Manuel #\= Cafe,
    Silvia #\= Champanhe, Silvia #\= Agua, Silvia #\= Guarana, Silvia #\= Vodka, Silvia #\= Cafe,
    Afonso #\= Champanhe, Afonso #\= Agua, Afonso #\= Guarana, Afonso #\= Vodka, Afonso #\= Cafe,

    labeling([], Bebidas), nl,
    write(Bebidas).