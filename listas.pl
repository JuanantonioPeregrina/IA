suma([], 0).
suma([X | Resto], Suma) :-
suma(Resto,Sr),
Suma is X + Sr.
