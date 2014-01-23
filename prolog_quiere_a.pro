predicates
nondeterm quiere_a(string,string)
nondeterm varon(string)
nondeterm hembra(string)
nondeterm teme_a(string,string)
nondeterm quiere_pero_teme_a(string,string)
nondeterm querido_por(string,string)
nondeterm puede_casarse_con(string,string)

clauses
quiere_a(monica,enrique).
quiere_a(juan,jorge).
quiere_a(maria,susana).
quiere_a(ana,jorge).
quiere_a(susana,pablo).
varon(juan).
varon(pablo).
varon(jorge).
varon(enrique).
hembra(monica).
hembra(susana).
hembra(ana).
teme_a(susana,pablo).
teme_a(jorge,enrique).
teme_a(maria,pablo).
quiere_pero_teme_a(X,Y):-quiere_a(X,Y),teme_a(X,Y).
querido_por(X,Y):-quiere_a(Y,X).
puede_casarse_con(X,Y):-quiere_a(X,Y),varon(X),hembra(Y).
puede_casarse_con(X,Y):-quiere_a(X,Y),varon(Y),hembra(X).

goal
quiere_pero_teme_a(X,Y).
 