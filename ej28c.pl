% Caso base: El producto escalar de dos listas vacías es 0
productoEscalarListas([], [], 0).

% Caso recursivo: multiplicamos los primeros elementos de L1 y L2 y sumamos el resto
productoEscalarListas([X1 | Resto1], [X2 | Resto2], K) :-
    productoEscalarListas(Resto1, Resto2, KRestante),  % Producto escalar del resto
        K is X1 * X2 + KRestante.  % Sumar el producto de los primeros elementos con el producto escalar del resto

