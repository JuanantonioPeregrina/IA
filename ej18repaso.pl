parteDe(X,X).
parteDe(X,Y):-
	parteDirecta(X,Y),

parteDe(X,Z):-
	parteDirecta(X,Y),
	parteDe(Y,Z),

partePropia(X,Y):-
	parte(X,Y),
	\+parteDe(X,Y).

parteDirecta(a, b).
parteDirecta(b, c).
parteDirecta(c, d).
