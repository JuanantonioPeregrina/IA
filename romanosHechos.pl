% Hechos para los valores de símbolos individuales
valor(i, 1).
valor(v, 5).
valor(x, 10).
valor(l, 50).
valor(c, 100).
valor(d, 500).
valor(m, 1000).

% Hechos para combinaciones especiales de símbolos
valor(iv, 4).
valor(ix, 9).
valor(xl, 40).
valor(xc, 90).
valor(cd, 400).
valor(cm, 900).

% Caso base: si la lista está vacía, el valor es 0
valor_total([], 0).

% Cláusula de guardia para evitar cuatro 'x' seguidas
valor_total(Lista, _) :-
    append(_, [x, x, x, x | _], Lista),  % Si la lista contiene cuatro 'x' consecutivas, falla
    !, fail.

% Cláusula de guardia para evitar cuatro 'i' seguidas
valor_total(Lista, _) :-
    append(_, [i, i, i, i | _], Lista),  % Si la lista contiene cuatro 'i' consecutivas, falla
    !, fail.

% Caso de combinación especial (dos símbolos que forman un valor único)
valor_total([A, B | Resto], Suma) :-
    atom_concat(A, B, Combinacion),
    valor(Combinacion, Valor),
    valor_total(Resto, SumaResto),
    Suma is Valor + SumaResto,
    !.  % Corte para evitar soluciones adicionales

% Caso de tres repeticiones de 'x' para representar 30
valor_total([x, x, x | Resto], Suma) :-
    valor(x, ValorX),
    SumaRep is ValorX * 3,
    valor_total(Resto, SumaResto),
    Suma is SumaRep + SumaResto,
    !.  % Corte para evitar soluciones adicionales

% Caso de dos repeticiones de 'x' para representar 20
valor_total([x, x | Resto], Suma) :-
    valor(x, ValorX),
    SumaRep is ValorX * 2,
    valor_total(Resto, SumaResto),
    Suma is SumaRep + SumaResto,
    !.  % Corte para evitar soluciones adicionales

% Caso de una sola 'x' para representar 10
valor_total([x | Resto], Suma) :-
    valor(x, ValorX),
    valor_total(Resto, SumaResto),
    Suma is ValorX + SumaResto,
    !.  % Corte para evitar soluciones adicionales

% Caso de tres repeticiones de 'i' para representar 3
valor_total([i, i, i | Resto], Suma) :-
    valor(i, ValorI),
    SumaRep is ValorI * 3,
    valor_total(Resto, SumaResto),
    Suma is SumaRep + SumaResto,
    !.  % Corte para evitar soluciones adicionales

% Caso de dos repeticiones de 'i' para representar 2
valor_total([i, i | Resto], Suma) :-
    valor(i, ValorI),
    SumaRep is ValorI * 2,
    valor_total(Resto, SumaResto),
    Suma is SumaRep + SumaResto,
    !.  % Corte para evitar soluciones adicionales

% Caso de una sola 'i' para representar 1
valor_total([i | Resto], Suma) :-
    valor(i, ValorI),
    valor_total(Resto, SumaResto),
    Suma is ValorI + SumaResto,
    !.  % Corte para evitar soluciones adicionales

% Caso de símbolo individual diferente de 'i' y 'x'
valor_total([A | Resto], Suma) :-
    valor(A, Valor),
    valor_total(Resto, SumaResto),
    Suma is Valor + SumaResto,
    !.  % Corte para evitar soluciones adicionales

