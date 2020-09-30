aluno(joao, paradigmas).
aluno(maria, paradigmas). 
aluno(joel, lab2).
aluno(joel, estruturas).
frequenta(joao, feup).
frequenta(maria, feup).
frequenta(joel, ist).
professor(carlos, paradigmas).
professor(ana_paula, estruturas).
professor(pedro, lab2).
funcionario(pedro, ist).
funcionario(ana_paula, feup).
funcionario(carlos, feup).


% a. aluno(A, Y), professor(X, Y).
% b. frequenta(P, X); funcionario(P, X).
% c. aluno(A,X),aluno(B,X),A@<B;frequenta(A,Y),frequenta(B,Y),A@<B;funcionario(A,Z),funcionario(B,Z),A@<B.
% nota: @ é usado para comparar strings 