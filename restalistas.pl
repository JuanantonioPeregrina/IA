% Caso base: Si la lista está vacía, el resultado es 0
restaL([], 0).

% Caso base: Si la lista tiene un solo elemento, ese elemento es el resultado
restaL([Resultado], Resultado).

% Caso recursivo: Para una lista con al menos dos elementos
restaL([PrimerE, SegE | Resto], RestaA) :-
    RestaInter is PrimerE - SegE,
        restaL([RestaInter | Resto], RestaA).

