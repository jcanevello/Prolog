%HERCHOS

%Paraderos contiguos
sig(sjl,sc).
sig(sc,lp).
sig(lp,ca).
sig(ca,acho).
sig(acho,grau).
sig(grau,unmsm).

%personas que suben en los paraderos
sube(miguel,sjl).
sube(juan,sjl).
sube(robert,sjl).
sube(martin,sc).
sube(david,lp).
sube(jean,lp).
sube(ingrid,ca).
sube(paola,ca).
sube(jose,ca).
sube(carla,acho).
sube(kevin,acho).
sube(gerson,grau).
sube(manuel,grau).

%Peronas que son universitarios
universitario(miguel).
universitario(robert).
universitario(jean).
universitario(gerson).

%Costo de los pasajes
pasaje(1,normal).
pasaje(0.5,universitario).

%============================================================
%REGLAS

ida(X,Y) :- sig(Y,X).
ida(X,Y) :- sig(Y,Z),ida(X,Z).

vuelta(X,Y) :- sig(X,Y).
vuelta(X,Y) :- sig(Z,Y),vuelta(X,Z).

entre(TotalPar,PAR1,PAR2) :- ida(TotalPar,PAR1),vuelta(TotalPar,PAR2).

%Numeros de paraderos entre dos puntos
numparaderos(NUM,PAR1,PAR2) :- findall(X,entre(X,PAR1,PAR2),LISTA),length(LISTA,NUM).

%Personas que suben entre dos paraderos
personassuben(Pasajeros,Par1,_) :- sube(Pasajeros,Par1).
personassuben(Pasajeros,Par1,Par2) :- entre(Paraderos,Par1,Par2),sube(Pasajeros,Paraderos). 
personassuben(Pasajeros,_,Par2) :- sube(Pasajeros,Par2).

%personas normales que suben entre dos paraderos
personasnormal(Pasajeros,Par1,Par2) :- personassuben(Pasajeros,Par1,Par2),not(universitario(Pasajeros)).

%personas universitarios que suben entre dos paraderos
personasuniv(Pasajeros,Par1,Par2) :- personassuben(Pasajeros,Par1,Par2),universitario(Pasajeros).

%Numero de personas normales que suben entre dos paraderos
numPerNormales(Total,Par1,Par2) :- findall(Z,personasnormal(Z,Par1,Par2),Lista),length(Lista,Total).

%Numero de personas universitarios que suben entre dos paraderos
numPerUniv(Total,Par1,Par2) :- findall(Z,personasuniv(Z,Par1,Par2),Lista),length(Lista,Total).

%Número de pasajes universitarios entre dos paraderos
pasajeTotalUniv(Total,Par1,Par2) :- numPerUniv(TotalUniv,Par1,Par2),pasaje(Costo,universitario),Total is (TotalUniv*Costo).

%Número de pasajes Normales entre dos paraderos
pasajeTotalNormal(Total,Par1,Par2) :- numPerNormales(TotalNormal,Par1,Par2),pasaje(Costo,normal),Total is (TotalNormal*Costo).

%Suma de pasajes total entre dos paraderos
pasajeTotal(Total,Par1,Par2) :- pasajeTotalUniv(TotalUniv,Par1,Par2),pasajeTotalNormal(TotalNormal,Par1,Par2),Total is (TotalUniv+TotalNormal).






