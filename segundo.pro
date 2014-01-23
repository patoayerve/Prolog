predicates
nondeterm ingreso(integer,integer,integer,integer).
nondeterm litros(integer,integer,integer,integer).
nondeterm esmayor(integer,integer,integer).

clauses
ingreso(Cont,S,Litros,Mayor):-Cont<=5,write("Codigo: "),readinT(A),write("cantidad: "),readinT(B),write("precio: "),readinT(C),nl,litros(A,B,X,Litros),Aux2=B*C,esmayor(Aux2,Mayor,Y),Aux3=S+Aux2,Aux1=Cont+1,ingreso(Aux1,Aux3,X,Y).
ingreso(Cont,S,Litros,Mayor):-Cont>5,write("sumatoria: ",S),nl,write("litros articulo1: ",Litros),nl,write("facturas mayores a 600: ",Mayor),nl.
litros(A,B,X,Litros):-A<=1,X=B.
litros(A,B,X,Litros):-A>1,X=Litros.
esmayor(Aux2,Mayor,Y):-Aux2>=600,Y=Mayor+1.
esmayor(Aux2,Mayor,Y):-Aux2<600,Y=Mayor.
goal
ingreso(1,0,0,0).