%notas primer parcial
parcial1(ana,7).
parcial1(juan,4).
parcial1(laura,5).
parcial1(matias,7).
%notas segundo parcial
parcial2(ana,9).
parcial2(juan,8).
parcial2(laura,2).
parcial2(martin,3).

%nombre y nota final de quienes promocionan
promociona(Nombre,NotaFinal):-
    parcial1(Nombre,P1),
    parcial2(Nombre,P2),
    P1>=7,P2>=7,
    NotaFinal is (P1+P2)/2.

%nombre de los alumnos que obtendrán la cursada
cursada(Nombre):-
    parcial1(Nombre,P1),
    parcial2(Nombre,P2),
    (P1<7;P2<7),
    P1>=4,P2>=4.

%nombre de los alumnos que recursan la materia
recursa(Nombre):-
    parcial1(Nombre,P1),
    parcial2(Nombre,P2),
    (P1<4;P2<4).

%nombre de quienes quedaron ausentes
ausente(Nombre):-
    parcial1(Nombre,_),
    not(parcial2(Nombre,_)).
ausente(Nombre):-
    parcial2(Nombre,_),
    not(parcial1(Nombre,_)).
ausente(Nombre):-
    not(parcial1(Nombre,_)),
    not(parcial2(Nombre,_)).
