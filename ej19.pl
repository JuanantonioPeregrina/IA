parte(X,X).
parte(X,Y) :-
	pdirecta(X,Y).
parte(X,Z) :- 
	pdirecta(X,Y),
       	parte(Y,Z).
pPropia(X,Y) :- 
	parte(X,Y), 
	X \= Y.

nacidoEn(P,L2) :-
	nacido(P,L1),
	parte(L1,L2).

% Hechos lugar de nacimiento

nacido(juan,socovos).
nacido(maria, espana).
% Hechos sobre las relaciones de parte directa entre lugares
pdirecta(socovos, espana).
pdirecta(espana, europa).

