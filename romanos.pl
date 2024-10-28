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
#valor_unidades([x | Resto],10) :-!.

%CBase
valor_decenas([],[], 0).
%Ccomplejos
valor_decenas([x | Resto],Resto,10):- !.
valor_decenas([x,x | Resto],Resto,20):- !.
valor_decenas([x,x,x | Resto],Resto,30):- !.
valor_decenas([x,l | Resto ],Resto,40):- !.
valor_decenas([l | Resto], Resto, 50) :- !.
valor_decenas([l, x | Resto], Resto, 60) :- !.
valor_decenas([l, x, x | Resto], Resto, 70) :- !.
valor_decenas([l, x, x, x | Resto], Resto, 80) :- !.
valor_decenas([x,c | Resto], Resto,90): -!.


