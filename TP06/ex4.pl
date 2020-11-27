 Defina o predicado functor2(Term, F, Arity) que é verdadeiro se Term é um termo cujo functor
principal tem o nome F e a aridade Arity. 


functor2(Term, F, Arity):- Term=..[F|A], length(A, Arity).

