paresDeLista([],[]).
paresDeLista([Prim | Resto], [Prim, Lp]) :-
	Prim mod 2 =:=0,
	paresDeLista(Resto, Lp).

% Cuando falla en el caso recursivo 1,reconoce que es impar
paresDeLista([_ | Resto], Lp) :-
	paresDeLista(Resto, Lp).

