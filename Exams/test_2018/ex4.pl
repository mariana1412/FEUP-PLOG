countries(Company, ListOfCountries):-
    countries(Company, [], ListOfCountries), !.

countries(Company, Aux, ListOfCountries):-
    operates(Company, Country),
    \+ isMember(Country, Aux),
    append(Aux, [Country], AddCountry),
    countries(Company, AddCountry, ListOfCountries).

countries(_, List, List).

operates(Company, Country):-
    flight(_, Origin, _, _, _, Company),
    airport(_, Origin, Country).

operates(Company, Country):-
    flight(_, _, Destination, _, _, Company),
    airport(_, Destination, Country).

isMember(Element, [Element|_]).
isMember(Element, [H|T]):-
    Element \= H,
    isMember(Element, T).
