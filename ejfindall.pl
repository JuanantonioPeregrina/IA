% algunos hechos de ascendencia
ascendiente(abraham, isaac).
ascendiente(sara, isaac).
ascendiente(terah, abraham).
ascendiente(amalek, sara).

% Obtener en una lista todos los ascendientes de Isaac
obtener_ascendientes_de_isaac(Lista) :-
    findall(X, ascendiente(X, isaac), Lista).
