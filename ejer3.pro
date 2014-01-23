predicates
nondeterm ingreso(integer,integer,integer,integer,integer,integer,integer).
nondeterm alum1(integer,integer,integer,integer).
nondeterm alum2(integer,integer,integer,integer).
nondeterm alum3(integer,integer,integer,integer).
nondeterm alum4(integer,integer,integer,integer).
nondeterm alum5(integer,integer,integer,integer).

clauses
ingreso(Cont,S,Alum1,Alum2,Alum3,Alum4,Alum5):-Cont<=5,write("Alumno: ",Cont),nl,write("nota1: "),readinT(A),write("nota2: "),readinT(B),write("nota3: "),readinT(C),nl,Aux2=(A+B+C)/3,alum1(Cont,Aux2,Alum1,A1),alum2(Cont,Aux2,Alum2,A2),alum3(Cont,Aux2,Alum3,A3),alum4(Cont,Aux2,Alum4,A4),alum5(Cont,Aux2,Alum5,A5),Aux3=S+Aux2,Aux1=Cont+1,ingreso(Aux1,Aux3,A1,A2,A3,A4,A5).
ingreso(Cont,S,Alum1,Alum2,Alum3,Alum4,Alum5):-Cont>5,Res=S/5,write("Promedio: ",Res),nl,write("Promedio1: ",Alum1),nl,write("Promedio2: ",Alum2),nl,write("Promedio3: ",Alum3),nl,write("Promedio4: ",Alum4),nl,write("Promedio5: ",Alum5),nl.
alum1(Cont,Aux2,Alum1,A1):-Cont=1,A1=Aux2.
alum1(Cont,Aux2,Alum1,A1):-Cont<>1,A1=Alum1.
alum2(Cont,Aux2,Alum2,A2):-Cont=2,A2=Aux2.
alum2(Cont,Aux2,Alum2,A2):-Cont<>2,A2=Alum2.
alum3(Cont,Aux2,Alum3,A3):-Cont=3,A3=Aux2.
alum3(Cont,Aux2,Alum3,A3):-Cont<>3,A3=Alum3.
alum4(Cont,Aux2,Alum4,A4):-Cont=4,A4=Aux2.
alum4(Cont,Aux2,Alum4,A4):-Cont<>4,A4=Alum4.
alum5(Cont,Aux2,Alum5,A5):-Cont=5,A5=Aux2.
alum5(Cont,Aux2,Alum5,A5):-Cont<>5,A5=Alum5.
goal
ingreso(1,0,0,0,0,0,0).