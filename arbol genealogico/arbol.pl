madre(X,Y) :- progenitor(X,Y),mujer(X).

hijo(X,Y) :- progenitor(Y,X),varon(X).
hija(X,Y) :- progenitor(Y,X),mujer(X).
hijos(X,Y) :- hijo(X,Y);hija(X,Y).

abuelo(X,Y) :- padre(X,Z),progenitor(Z,Y).
abuela(X,Y) :- madre(X,Z),progenitor(Z,Y).
abuelos(X,Y) : abuelo(X,Y);abuela(X,Y).

nieto(X,Y) :- progenitor(Y,Z),progenitor(Z,X),varon(X).
nieta(X,Y) :- progenitor(Y,Z),progenitor(Z,X),mujer(X).
nietos(X,Y) :- nieto(X,Y);nieta(X,Y).

bisabuelo(X,Y) :- padre(X,W),progenitor(W,Z),progenitor(Z,Y).
bisabuela(X,Y) :- madre(X,W),progenitor(W,Z),progenitor(Z,Y).
bisabuelos(X,Y) :- bisabuelo(X,Y);bisabuela(X,Y).

bisnieto(X,Y) :- bisabuelo(Y,X),varon(X).
bisnieto(X,Y) :- bisabuela(Y,X),varon(X).
bisnieta(X,Y) :- bisabuelo(Y,X),mujer(X).
bisnieta(X,Y) :- bisabuela(Y,X),mujer(X).

mismo(X,X).
diferente(X,Y) :- not(mismo(X,Y)).

hermanos(X,Y) :- progenitor(Z,X),progenitor(Z,Y),diferente(X,Y),varon(X),mujer(Z).
hermanas(X,Y) :- progenitor(Z,X),progenitor(Z,Y),diferente(X,Y),mujer(X),mujer(Z).
hermanosT(X,Y) :- hermanos(X,Y);hermanas(X,Y).

tio(X,Y) :- hermanos(X,Z),progenitor(Z,Y).
tia(X,Y) :- hermanas(X,Z),progenitor(Z,Y).

sobrino(X,Y) :- tio(Y,X),varon(X).
sobrino(X,Y) :- tia(Y,X),varon(X).
sobrina(X,Y) :- tio(Y,X),mujer(X).
sobrina(X,Y) :- tia(Y,X),mujer(X).

primo(X,Y) :- tio(Z,Y),progenitor(Z,X),varon(X).
primo(X,Y) :- tia(Z,Y),progenitor(Z,X),varon(X).
prima(X,Y) :- tio(Z,Y),progenitor(Z,X),mujer(X).
prima(X,Y) :- tia(Z,Y),progenitor(Z,X),mujer(X).

cunado(X,Y) :- progenitor(X,Z),progenitor(W,Z),diferente(X,W),hermanos(W,Y),varon(X).
cunado(X,Y) :- progenitor(X,Z),progenitor(W,Z),diferente(X,W),hermanas(W,Y),varon(X).
cunado(X,Y) :- progenitor(Y,Z),progenitor(W,Z),diferente(Y,W),hermanos(W,X),varon(Y).
cunado(X,Y) :- progenitor(Y,Z),progenitor(W,Z),diferente(Y,W),hermanas(W,X),varon(Y).
cunada(X,Y) :- progenitor(X,Z),progenitor(W,Z),diferente(X,W),hermanos(W,Y),mujer(X).
cunada(X,Y) :- progenitor(X,Z),progenitor(W,Z),diferente(X,W),hermanas(W,Y),mujer(X).
cunada(X,Y) :- progenitor(Y,Z),progenitor(W,Z),diferente(Y,W),hermanos(W,X),mujer(Y).
cunada(X,Y) :- progenitor(Y,Z),progenitor(W,Z),diferente(Y,W),hermanas(W,X),mujer(Y).

suegro(X,Y) :- progenitor(X,Z),pareja(Y,Z),diferente(Z,Y),varon(X).
suegra(X,Y) :- progenitor(X,Z),pareja(Y,Z),diferente(Z,Y),mujer(X).

yerno(X,Y) :- suegro(Y,X),varon(X).
yerno(X,Y) :- suegra(Y,X),varon(X).

nuera(X,Y) :- suegro(Y,X),mujer(X).
nuera(X,Y) :- suegra(Y,X),mujer(X).

contHijos(N,X) :- findall(Z,hijos(Z,X),LISTA),length(LISTA,N).
contHijo(N,X) :- findall(Z,hijo(Z,X),LISTA),length(LISTA,N).
contHija(N,X) :- findall(Z,hija(Z,X),LISTA),length(LISTA,N).

porcentaje(N,X) :- contHija(T,X), contHijos(F,X), W is T*100,N is W/F.

varon(juan).
varon(angel).
varon(veliz).
varon(napoleon).
varon(valerio).
varon(marco).
varon(pedro).
varon(jeancarlo).
varon(ayrton).
varon(junior).
varon(winkler).
varon(miguel).
varon(manuel).
varon(enzo).



mujer(ernestina).
mujer(maria).
mujer(mery).
mujer(maritza).
mujer(albina).
mujer(karina).
mujer(irma).
mujer(melissa).
mujer(ingrid).
mujer(dahana).
mujer(erika).
mujer(elsa).
mujer(sandra).
mujer(adriana).
mujer(jenifer).



progenitor(ernestina,mery).
progenitor(ernestina,napoleon).
progenitor(ernestina,albina).
progenitor(juan,mery).
progenitor(juan,napoleon).
progenitor(juan,albina).

progenitor(angel,valerio).
progenitor(angel,irma).
progenitor(angel,marco).
progenitor(maria,valerio).
progenitor(maria,irma).
progenitor(maria,marco).

progenitor(mery,melissa).
progenitor(mery,jeancarlo).
progenitor(veliz,melissa).
progenitor(veliz,jeancarlo).

progenitor(napoleon,ingrid).
progenitor(napoleon,junior).
progenitor(napoleon,winkler).
progenitor(maritza,ingrid).
progenitor(maritza,junior).
progenitor(maritza,winkler).

progenitor(albina,dahana).
progenitor(albina,miguel).
progenitor(valerio,dahana).
progenitor(valerio,miguel).

progenitor(melissa,adriana).
progenitor(ingrid,enzo).
progenitor(ayrton,enzo).

progenitor(marco,manuel).
progenitor(marco,elsa).
progenitor(karina,manuel).
progenitor(karina,elsa).

progenitor(irma,sandra).
progenitor(pedro,sandra).

progenitor(manuel,jenifer).
progenitor(erika,jenifer).


pareja(ernestina,juan).
pareja(juan,ernestina).
pareja(maria,angel).
pareja(angel,maria).
pareja(mery,veliz).
pareja(veliz,mery).
pareja(maritza,napoleon).
pareja(napoleon,maritza).
pareja(albina,valerio).
pareja(valerio,albina).
pareja(ingrid,ayrton).
pareja(ayrton,ingrid).
pareja(karina,marco).
pareja(marco,karina).
pareja(irma,pedro).
pareja(pedro,irma).
pareja(erika,manuel).
pareja(manuel,erika).
