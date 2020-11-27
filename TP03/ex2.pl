lista([a,[b],c,[d]]) = lista([_|[X|X]]). %answer: no
lista([[a],[b],C])=lista([C,B,[a]]). %answer: C=[a], B=[b]
lista([c,c,c])=lista([X|[X|_]]). %answer: X=c 
lista([a,[b,c]])=lista([A,B,C]). %answer: no 
[joao,gosta,peixe]=[X,Y,Z]. %answer: X=joao, Y=gosta, Z=peixe
[gato]=[[X|Y]]. %answer: no
[vale,dos,sinos]=[sinos,X,Y]. %no
[branco,Q]=[P,cavalo]. %answer: Q=cavalo, P=branco
[1,2,3,4,5,6,7]=[X,Y,Z|D]. %answer: X=1,Y=2,Z=3,D=[4,5,6,7]