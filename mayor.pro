predicates
nondeterm ingreso(integer,integer,integer).
nondeterm buscarMayor(integer,integer,integer).
clauses
ingreso(Cont,S,Mayor):-Cont<=5,write("Ingrese un numero entero"),nl,readinT(N),buscarMayor(N,Mayor,X),Aux1=S+N,Aux2=Cont+1,ingreso(Aux2,Aux1,X).
ingreso(Cont,S,Mayor):-Cont>5,write("sumatoria",S),nl,write("numero mayor",Mayor).
buscarMayor(N,Mayor,X):-N>Mayor,X=N.
buscarMayor(N,Mayor,X):-N<=Mayor,X=Mayor.
goal
ingreso(1,0,-999).