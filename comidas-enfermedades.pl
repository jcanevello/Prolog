%ESPECIFICACIÓN DE LOS HECHOS%

%COMEDOR%

%NOMBRES DE RESTAURANTE%

restaurant(brujas_de_cachiche).
restaurant(puerto_med).
restaurant(el_senorio_del_sulco).

%PLATOS%

plato(aguaje_relleno).
plato(tacacho).
plato(cau_cau).
plato(ensalada_de_verduras).
plato(cebiche).

%DEFINICION DE INGREDIENTES%

ingrediente(sal).
ingrediente(pescado).
ingrediente(arvejas).
ingrediente(mondongo).
ingrediente(limon).
ingrediente(cebolla).
ingrediente(zanahoria).
ingrediente(aji_amarillo).
ingrediente(carne).
ingrediente(platano).
ingrediente(manteca).
ingrediente(chancho).
ingrediente(aguaje).
ingrediente(huevo).
ingrediente(aceituna).
ingrediente(lechuga).
ingrediente(vainita).
ingrediente(lechuga).
ingrediente(vetarraga).
%PRECIO POR INGREDIENTES%

precio_ingrediente(sal,1).
precio_ingrediente(pescado,5).
precio_ingrediente(arvejas,1.5).
precio_ingrediente(mondongo,1).
precio_ingrediente(limon,0.5).
precio_ingrediente(cebolla,0.5).
precio_ingrediente(zanahoria,0.7).
precio_ingrediente(aji_amarillo,1).
precio_ingrediente(carne,2.5).
precio_ingrediente(platano,0.8).
precio_ingrediente(manteca,0.5).
precio_ingrediente(chancho,5).
precio_ingrediente(aguaje,3).
precio_ingrediente(huevo,1).
precio_ingrediente(aceituna,1).
precio_ingrediente(lechuga,0.5).
precio_ingrediente(vainita,1.5).
precio_ingrediente(vetarraga,1.5).

%INGREDIENTES PARA CADA PLATO%

ingredientespara(aguaje_relleno,aguaje).
ingredientespara(aguaje_relleno,carne).
ingredientespara(aguaje_relleno,cebolla).
ingredientespara(aguaje_relleno,huevo).
ingredientespara(aguaje_relleno,aceituna).
ingredientespara(aguaje_relleno,chuno).
ingredientespara(cebiche,sal).
ingredientespara(cebiche,pescado).
ingredientespara(cebiche,limon).
ingredientespara(cebiche,cebolla).
ingredientespara(cau_cau,mondongo).
ingredientespara(cau_cau,arvejas).
ingredientespara(cau_cau,zanahoria).
ingredientespara(cau_cau,aji_amarillo).
ingredientespara(cau_cau,sal).
ingredientespara(tacacho,platano).
ingredientespara(tacacho,manteca).
ingredientespara(tacacho,chancho).
ingredientespara(ensalada_de_verduras,vainita).
ingredientespara(ensalada_de_verduras,lechuga).
ingredientespara(ensalada_de_verduras,zanahoria).
ingredientespara(ensalada_de_verduras,vetarraga).

%PLATOS QUE VENDE CADA RESTAURANTE%

vende_plato(brujas_de_cachiche,aguaje_relleno).
vende_plato(brujas_de_cachiche,tacacho).
vende_plato(puerto_med,cebiche).
vende_plato(el_senorio_del_sulco,cau_cau).
vende_plato(el_senorio_del_sulco,ensalada_de_verduras).

%DEFINICION DE INGREDIENTES QUE SON BUENOS PARA ALGUNAS ENFERMEDADES%

es_bueno(artritis,pescado).
es_bueno(artritis,aguaje).
es_bueno(artritis,platano).
es_bueno(diabetes,pescado).
es_bueno(diabetes,cebolla).
es_bueno(diabetes,huevo).
es_bueno(gastritis,platano).
es_bueno(hepatitis,cebolla).
es_bueno(hepatitis,platano).
es_bueno(hepatitis,naranja).
es_bueno(hepatitis,aceituna).

%DEFINICION DE QUE SON MALOS PARA ALGUNAS ENFERMEDADES%

es_malo(artritis,carne).
es_malo(artritis,chancho).
es_malo(diabetes,carne).
es_malo(diabetes,chancho).
es_malo(diabetes,platano).
es_malo(gastritis,carne).
es_malo(gastritis,chancho).
es_malo(hepatitis,aguardiente).
es_malo(hepatitis,chancho).
es_malo(hipertension,carne).
es_malo(migrana,carne).
es_malo(migrana,chancho).

%PRECIO POR INGREDIENTES%

post(sal,1).
post(pescado,5).
post(arvejas,1.5).
post(mondongo,1).
post(limon,0.5).
post(cebolla,0.5).
post(zanahoria,0.7).
post(aji_amarillo,1).
post(carne,2.5).
post(platano,0.8).
post(manteca,0.5).
post(chancho,5).
post(aguaje,3).
post(huevo,1).
post(aceituna,1).
post(lechuga,0.5).
post(vainita,1.5).
post(vetarraga,1.5).

%DEFINICION DE POST DE INGREDIENTES BUENOS PARA UNA ENFERMEDAD%

post_b(pescado,artritis).
post_b(aguaje,artritis).
post_b(platano,artritis).
post_b(pescado,diabetes).
post_b(cebolla,diabetes).
post_b(huevo,diabetes).
post_b(platano,gastritis).
post_b(cebolla,hepatitis).
post_b(platano,hepatitis).
post_b(naranja,hepatitis).
post_b(aceituna,hepatitis).

%DEFINICION DE POST DE INGREDIENTES MALOS PARA UNA ENFERMEDAD %

post_m(carne,artritis).
post_m(chancho,artritis).
post_m(carne,diabetes).
post_m(chancho,diabetes).
post_m(platano,diabetes).
post_m(carne,gastritis).
post_m(chancho,gastritis).
post_m(aguardiente,hepatitis).
post_m(chancho,hepatitis).
post_m(carne,hipertension).
post_m(carne,migrana).
post_m(chancho,migrana).

%CLINICA %

hospital(hospital_hipolito_unanue).
hospital(clinica_javien_prado).
hospital(clinica_san_pablo).

doctor(socorro_bernandini).
doctor(casanova_cesar).
doctor(castaneda_oswaldo).
doctor(espinoza_percy).
doctor(luna_martin).

especialidad(gastroenteorologia).
especialidad(cardiologia).
especialidad(neurologia).
especialidad(reumatologia).
especialidad(endocrinologia).

enfermedad(artritis).
enfermedad(diabetes).
enfermedad(gastritis).
enfermedad(hepatitis).
enfermedad(hipertension).
enfermedad(migrana).

sintoma(debilidad).
sintoma(dolor_de_cabeza).
sintoma(colicos_estomacales).
sintoma(dolor_de_estomago).
sintoma(escalofrios).
sintoma(fiebre).
sintoma(dolor_de_articulaciones).
sintoma(nauseas).
sintoma(palidez).
sintoma(perdida_de_peso).
sintoma(vertigo).
sintoma(vomitos).
sintoma(mareo).
sintoma(desmayo).
sintoma(perdida_de_apetito).
sintoma(congestion_nasal).
sintoma(falta_de_sueno).

%POST %DOCTORES POR CLINICA%

post(hospital_hipolito_unanue, luna_martin).
post(clinica_javien_prado, castaneda_oswaldo).
post(clinica_javien_prado, casanova_cesar).
post(clinica_san_pablo, espinoza_percy).
post(clinica_san_pablo, socorro_bernandini).

%ESPECIALIDAD POR DOCTOR%

post(socorro_bernandini,gastroenteorologia.
post(casanova_cesar,reumatologia).
post(castaneda_oswaldo,endocrinologia).
post(espinoza_percy,cardiologia).
post(luna_martin,neurologia).

%ENFERMEDAD POR ESPECIALIDAD%

post(gastroenteorologia,gastritis).
post(gastroenteorologia,hepatitis).
post(reumatologia,artritis).
post(endocrinologia,diabetes).
post(cardiologia,hipertension).
post(neurologia,migrana).

%SINTOMAS POR ENFERMEDAD%

post(artritis,dolor_de_articulaciones).
post(diabetes,mareo).
post(diabetes,perdida_de_peso).
post(gastritis,dolor_de_estomago).
post(gastritis,nauseas).
post(gastritis,vomitos).
post(hepatitis,fiebre).
post(hepatitis,dolor_de_estomago).
post(hepatitis,mareo).
post(hepatitis,nauseas).
post(hepatitis,vomitos).
post(hepatitis,perdida_de_apetito).
post(migrana,dolor_de_cabeza).
post(migrana,nauseas).
post(migrana,vomitos).
post(migrana,debilidad).
post(hipertension,dolor_de_cabeza).
post(hipertension,debilidad).
post(hipertension,dolor_de_articulaciones).

des(X,Y) :- post(X,Y).
des(X,Y) :- post(X,Z),des(Z,Y).

asc(X,Y) :- post(Y,X).
asc(X,Y) :- post(Z,X),asc(Z,Y).

%DEFINICION DE PERSONAS CON ENFERMEDADES%

tiene(juana,artritis).
tiene(mario,migrana).
tiene(lucia,gastritis).
tiene(enrique,hepatitis).
tiene(jose,hipertension).
tiene(roberto,migrana).

% REGLAS%

elim([],[]).
elim([H|T],S):-member(H,T),!,elim(T,S).
elim([H|T],[H|S]):-elim(T,S).

%Sintomas que cura el doctor%

curasint(Sintomas,Doctor) :- des(Doctor,Sintomas),sintoma(Sintomas).

%Numero de sintomas que cura el doctor%

numCura(Num,Doctor) :- findall(Z,curasint(Z,Doctor),Lista),length(Lista,Num).


%Lista precios ingredientes%
lista_preciosingre(Preciodeingrediente,Plato) :- des(Plato,Ingrediente),post(Ingrediente,Preciodeingrediente).

%Funcion suma elementos de una lista%

my_sum_elements([], 0).
my_sum_elements([X|Xs], S):- my_sum_elements(Xs, S2),S is S2 + X.

%preciodelplato%

preciodelplato(Monto,Plato):- findall(Ingrediente,lista_preciosingre(Ingrediente,Plato),Lista),my_sum_elements(Lista,Monto).

%Restaurant que venden una comida especifica%

rest_comida(Comida,Resta) :- des(Resta, Comida), plato(Comida).

%Enfermedades que cura una comida%

comida_cura(Plato,Enfermedad) :- des(Plato,Ingrediente), ingrediente(Ingrediente), post_b(Ingrediente,Enfermedad).

%Cantidad de enfermedades que cura una comida%

num_cura_comida(Num,Comida) :- findall(Z,comida_cura(Comida,Z),Lista),length(Lista,Num).

%Enfermedades que ocasiona una comida%

comida_enfer_ocasiona(Plato,Enfermedad) :- des(Plato,Ingrediente), ingrediente(Ingrediente), post_m(Ingrediente,Enfermedad).

%Cantidad de enfermedades que ocasiona una comida%

num_enfer_ocasiona_comida(Num,Comida) :- findall(Z,comida_enfer_ocasiona(Comida,Z),Lista),length(Lista,Num).



%Que plato X no debe comer una persona que tiene la enfermedad%

plato_no_comer(Enfermedad,Plato) :- post_m(Ingre,Enfermedad),post(Plato,Ingre).
l_no_plato(Enfermedad,Plato) :- findall(Z,plato_no_comer(Enfermedad,Z),L),elim(L,Plato).

%Cantidad de platos que no debe comer para tal enfermedad%

num_no_plato(Enfermedad,Num) :- l_no_plato(Enfermedad,L),length(L,Num).

%PLatos que debe comer por enfermedad%

plato_si_comer(Enfermedad,Plato) :- post_b(Ingre,Enfermedad),post(Plato,Ingre).

%Cantidad de platos que si debe comer para tal enfermedad%

num_si_plato(Enfermedad,Num) :- findall(Z,plato_si_comer(Enfermedad,Z),L),lengt-h(L,Num).

%Que plato X si debe comer la persona Y%

plato_si_comer_per(Persona,Plato) :- tiene(Persona,Enfermedad), post_b(Ingre,Enfermedad),post(Plato,Ingre).

%Que plato X no debe comer la persona Y%

plato_no_comer_per(Persona,Plato) :- tiene(Persona,Enfermedad), post_m(Ingre,Enfermedad),post(Plato,Ingre).

%Que comidas no debe comer los pacientes de un determinado doctor%

comidas_no_recomendables_por_doctor(Doctor,Comidas) :- des(Doctor,Z),enfermedad(Z),post_m(Ingre,Z),post(Comidas,Ingre).

%Restaurantes que no debe frecuentar los pacientes de un determinado doctor%

resta_no_recomendables_por_doctor(Doctor,Restau) :- des(Doctor,Z),enfermedad(Z),post_m(Ingre,Z),asc(Ingre,Restau),restaurant(Restau).

%plato_si_comer_pers(Persona,Plato) :-tiene(Persona,Enfermedad)%

ingre_plato_buenospor_enfer(Plato,Enfermedad,X) :- post(Plato, X),post_b(X,Enfermedad).

num_ingre_bueno(Num,Plato,Enfermedad) :- findall(Z,ingre_plato_buenospor_enfer(Plato,Enfermedad,Z),Lista),length(Lista,Num).

num_buenos(Per,Plato,X) :- tiene(Per,Enfermedad),plato_si_comer_per(Per,Plato),num_ingre_bueno(X,Plato,Enfermedad).

num_total(Num,Plato) :- findall(Z,post(Plato,Z),Lista),length(Lista,Num).

por_buenos(Per,Plato,X) :- tiene(Per,Enfermedad),plato_si_comer_per(Per,Plato),num_ingre_bueno(P,Plato,Enfermedad),num_total(Q,Plato),X is (P/Q).
