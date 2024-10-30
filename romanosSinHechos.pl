% Predicado para calcular el valor de las unidades en una lista completa con cortes
% Caso Base
valor_unidades([], 0).

% Casos para cada símbolo en la lista (con cortes)
valor_unidades([i | Resto], Suma) :-
    valor_unidades(Resto, SumaResto),
    Suma is 1 + SumaResto, !.
valor_unidades([v | Resto], Suma) :-
    valor_unidades(Resto, SumaResto),
    Suma is 5 + SumaResto, !.
valor_unidades([x | Resto], Suma) :-
    valor_unidades(Resto, SumaResto),
    Suma is 10 + SumaResto, !.

% Casos de combinaciones especiales de unidades (con cortes)
valor_unidades([i, v | Resto], Suma) :-
    valor_unidades(Resto, SumaResto),
    Suma is 4 + SumaResto, !.
valor_unidades([i, x | Resto], Suma) :-
    valor_unidades(Resto, SumaResto),
    Suma is 9 + SumaResto, !.

% Predicado para calcular el valor de las decenas
% Caso Base
valor_decenas([], 0).

% Casos de Decenas (sin cortes)
valor_decenas([x, x, x | Resto], Suma) :-
    valor_decenas(Resto, SumaResto),
    Suma is 30 + SumaResto.
valor_decenas([x, x | Resto], Suma) :-
    valor_decenas(Resto, SumaResto),
    Suma is 20 + SumaResto.
valor_decenas([x | Resto], Suma) :-
    valor_decenas(Resto, SumaResto),
    Suma is 10 + SumaResto.
valor_decenas([x, l | Resto], Suma) :-
    valor_decenas(Resto, SumaResto),
    Suma is 40 + SumaResto.
valor_decenas([l | Resto], Suma) :-
    valor_decenas(Resto, SumaResto),
    Suma is 50 + SumaResto.
valor_decenas([l, x | Resto], Suma) :-
    valor_decenas(Resto, SumaResto),
    Suma is 60 + SumaResto.
valor_decenas([l, x, x | Resto], Suma) :-
    valor_decenas(Resto, SumaResto),
    Suma is 70 + SumaResto.
valor_decenas([l, x, x, x | Resto], Suma) :-
    valor_decenas(Resto, SumaResto),
    Suma is 80 + SumaResto.
valor_decenas([x, c | Resto], Suma) :-
    valor_decenas(Resto, SumaResto),
    Suma is 90 + SumaResto.

