% Caso base: una lista vacía multiplicada por un escalar sigue siendo vacía
escalarPorLista(_, [], []).

% Caso recursivo: multiplicar el primer elemento de la lista por K
escalarPorLista(K, [X | Resto], [XK | L2]) :-
    XK is K * X,  % Multiplicamos X por K
    escalarPorLista(K, Resto, L2).  % Recurre para el resto de la lista
