% Caso base: la lista vacía invertida es la lista vacía
invertir([], []).

% Caso recursivo: toma la cabeza de la lista y la agrega al final de la lista invertida
invertir([Cabeza | Resto], ListaInvertida) :-
    invertir(Resto, RestoInvertido),
        append(RestoInvertido, [Cabeza], ListaInvertida).

