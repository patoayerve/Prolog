predicates
nondeterm ingreso(Integer,Integer)
nondeterm calculardescuento(Integer,Integer,Real)
clauses
ingreso(Cont,S):- Cont =1, write("Ingrese el numero de la caja"),nl,readint(N),write("Ingrese la cantidad a pagar"),nl,readint(M),calculardescuento(N,M,A),Aux2=Cont+1,ingreso(Aux2,A).
ingreso(Cont,S):- Cont>1,write ("Total",S).

calculardescuento(N,M,A):- N=1,A=M-(M*0.20).
calculardescuento(N,M,A):- N=2,A=M-(M*0.15)+(M*0.12).
calculardescuento(N,M,A):- N=3,A=M-(M*0.18).
	
goal
ingreso(1,1).