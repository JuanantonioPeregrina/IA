%Reglas
checkFila(Ficha) :-
	casilla(F,1,Ficha),
	casilla(F,2,Ficha),
	casilla(F,3,Ficha).

checkColumna(Ficha) :-
	casilla(1,C,Ficha),
	casilla(2,C,Ficha),
	casilla(3,C,Ficha).

checkDiagonal(Ficha) :-
	(casilla(1,1,Ficha),
	casilla(2,2,Ficha),
	casilla(3,3,Ficha));

	(casilla(1,3,Ficha),
	casilla(2,2,Ficha),
	casilla(1,1,Ficha)).

checkGanador(Ficha) :-
	checkFila(Ficha);
	checkColumna(Ficha);
	checkDiagonal(Ficha).

checkPosicionOcupada(Fila, Columna) :-
    casilla(Fila, Columna, Ficha),
        (Ficha == x; Ficha == o).

	

	#checkEmpate(Ficha) :-
%Hechos
%victoriaX
casilla(1,1,x).
casilla(1,2,o).
casilla(1,3,x).
casilla(2,1,o).
casilla(2,2,x).
casilla(2,3,o).
casilla(3,1,x).
casilla(3,2,_).
casilla(3,3,_).

