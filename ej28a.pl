paresDeLista([], []). % la lista vacía genera una lista vacía. El cero es par

paresDeLista([X|RestoDeLaLista], [X|Lp]) :- % Lp es la lista formada por los números pares que aparezcan en la otra lista. X es el primer elemento de la lista dada
% Lp es lo que me devuelva el duende
        X mod 2 =:= 0, % Verifica si X es par. los dos puntos: el resultado de evaluar la expresion aritmetica de la izq es igual q evaluar la expresion aritmetica de la dere
	    paresDeLista(RestoDeLaLista, Lp).
		
paresDeLista([X|RestoDeLaLista], Lp) :- % aqui Lp no esta en una lista con X pq ya no queremos el primer elemento
		X mod 2 =\= 0,
		paresDeLista(RestoDeLaLista, Lp).
