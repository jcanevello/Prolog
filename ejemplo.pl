progenitor(ernestina,napoleon).
progenitor(ernestina,albina).
progenitor(juan,napoleon).
progenitor(juan,albina).
progenitor(maria,valerio).
progenitor(maria,manuel).
progenitor(maria,samuel).
progenitor(angel,valerio).
progenitor(angel,manuel).
progenitor(angel,samuel).
progenitor(maritza,ingrid).
progenitor(maritza,junior).
progenitor(maritza,winkler).
progenitor(napoleon,ingrid).
progenitor(napoleon,junior).
progenitor(napoleon,winkler).
progenitor(enrique,dahana).
progenitor(albina,dahana).
progenitor(albina,miguel).
progenitor(valerio,miguel).
progenitor(valerio,silvia).
progenitor(valerio,antonio).
progenitor(doris,silvia).
progenitor(doris,antonio).
progenitor(joaquin,veronica).
progenitor(elena,veronica).
progenitor(ana,sandra).
progenitor(ana,emilio).
progenitor(manuel,sandra).
progenitor(manuel,emilio).
progenitor(samuel,pedro).
progenitor(samuel,margarita).
progenitor(ingrid,enzo).
progenitor(ayrton,enzo).
progenitor(silvia,adriano).
progenitor(jose,adriano).
progenitor(antonio,frank).
progenitor(veronica,frank).
progenitor(veronica,joselito).
progenitor(sandra,teresa).
progenitor(emilio,edwin).

progenitor(martinn,reynaldo).
progenitor(reynaldo,jean).
progenitor(jean,ricardo).

predecesor(X,Z) :- progenitor(X,Z).
predecesor(X,Z) :- progenitor(X,Y),predecesor(Y,Z).
