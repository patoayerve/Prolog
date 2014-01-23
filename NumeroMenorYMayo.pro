predicates
nondeterm ingreso(integer,integer,integer,integer).
nondeterm buscarMayor(integer,integer,integer).
nondeterm buscarMenor(integer,integer,integer).

clauses
ingreso(Cont,S,Mayor,Menor):-Cont<=5,write("Ingrese un numero entero"),nl,readinT(N),buscarMayor(N,Mayor,X),buscarMenor(N,Menor,Y),Aux1=S+N,Aux2=Cont+1,ingreso(Aux2,Aux1,X,Y).
ingreso(Cont,S,Mayor,Menor):-Cont>5,write("sumatoria",S),nl,write("numero mayor",Mayor),nl,write("numero menor",Menor).

buscarMayor(N,Mayor,X):-N>Mayor,X=N.
buscarMayor(N,Mayor,X):-N<=Mayor,X=Mayor.

buscarMenor(N,Menor,Y):-N<Menor,Y=N.
buscarMenor(N,Menor,Y):-N>Menor,Y=Menor.

goal
ingreso(1,0,-9999,9999).