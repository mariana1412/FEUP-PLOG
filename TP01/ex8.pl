cargo(tecnico, rogerio).
cargo(tecnico, ivone).
cargo(engenheiro, daniel).
cargo(engenheiro, isabel).
cargo(engenheiro, oscar).
cargo(engenheiro, tomas).
cargo(engenheiro, ana).
cargo(supervisor, luis).
cargo(supervisor_chefe, sonia).
cargo(secretaria_exec, laura).
cargo(diretor, santiago).

chefiado_por(tecnico, engenheiro).
chefiado_por(engenheiro, supervisor).
chefiado_por(analista, supervisor).
chefiado_por(supervisor, supervisor_chefe).
chefiado_por(supervisor_chefe, director).
chefiado_por(secretaria_exec, director).

/*
a. ?- chefiado_por(tecnico, X), chefiado_por(X,Y). 
    existe alguém que chefia o chefe dos técnicos? se sim, quem? 
    resposta:
    x=engenheiro
    y=supervisor

b. ?- chefiado_por(tecnico, X), cargo(X,ivone), cargo(Y,Z). 
    a ivone chefia algum técnico?
    resposta:
    no

c. ?- cargo(supervisor, X); cargo(supervisor, X). 
    quem são os supervisores? 
    resposta:
    X=luis ?;
    X=luis ?;
    no

d.   ?- cargo(J,P), (chefiado_por(J, supervisor_chefe); chefiado_por(J, supervisor)).
    quais são os cargos e os nomes das pessoas que são chefiados por supervisores ou supervisores chefe?
    resposta:
    J=engenheiro
    P=daniel ?

e. ?- chefiado_por(P, director), not(cargo(P, carolina)).
    que cargos são chefiados pelo diretor sem ser o cargo da carolina?
*/

