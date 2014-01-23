predicates
nondeterm ingreso(Integer,Integer)

clauses
ingreso (Cont,S):- Cont<=5, write("Ingrese un numero entero"),nl,readint(N),Aux1=S+N,Aux2=Cont+1,ingreso(Aux2,Aux1).
ingreso(Cont,S):- Cont>5,write("Sumatoria",S).

goal
ingreso(1,0).
