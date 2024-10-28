%CasoBase
valor_unidades([],0).

%CasosComplejos
valor_unidades([i | Resto],1) :- !.
valor_unidades([i,i | Resto],2) :- !.
valor_unidades([i,i,i | Resto],3) :- !.
valor_unidades([i,v | Resto],4) :- !.
valor_unidades([v | Resto],5) :- !.
valor_unidades([v,i | Resto],6) :- !.
valor_unidades([v,i,i | Resto],7) :- !.
valor_unidades([v,i,i,i | Resto],8) :- !.
valor_unidades([i,x | Resto],9) :-!.
valor_unidades([x | Resto],10) :-!.



