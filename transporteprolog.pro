predicates
nondeterm transporte(string,integer)
nondeterm alojamiento(string,string,integer)
nondeterm viaje(string,integer,string,integer)
clauses
transporte(roma,20000).
transporte(londres,20000).
transporte(tunez,20000).
alojamiento(hotel,roma,25000).
alojamiento(hotel,londres,15000).
alojamiento(hotel,tunez,10000).
alojamiento(hostal,roma,15000).
alojamiento(hostal,londres,10000).
alojamiento(hostal,tunez,8000).
alojamiento(camping,roma,10000).
alojamiento(camping,londres,5000).
alojamiento(camping,tunez,5000).
viaje(W,X,Y,Z):-transporte(W,A),alojamiento(Y,W,C),B = C*X,Z = A+B.
goal
viaje(W,1,Y,Z).