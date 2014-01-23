predicates
nondeterm enfermo_de(string,string)
nondeterm tiene_sintoma(string,string)
nondeterm sintoma_de(string,string)
nondeterm elimina(string,string)
nondeterm recetar_a(string,string)
nondeterm alivia(string,string)

clauses

tiene_sintoma(alicia,cansancio).
sintoma_de(fiebre,gripe).
sintoma_de(tos,gripe).
sintoma_de(cansancio,anemia).
elimina(vitaminas,cansancio).
elimina(aspirina,fiebre).
elimina(jarabe,tos).
recetar_a(X,Y):-enfermo_de(Y,A),alivia(X,A).
alivia(X,Y):-elimina(X,A),sintoma_de(A,Y).
enfermo_de(manuel,gripe).
enfermo_de(X,Y):-tiene_sintoma(X,Z),sintoma_de(Z,Y).

goal 
recetar_a(X,Y).


