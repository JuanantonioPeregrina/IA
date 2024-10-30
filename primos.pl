%CasoBase

es_primo(2).

%CasoCompl

es_primo(N):-
	N > 2,
	\+ n_tiene_divisor(N,2).

n_tiene_divisor(N, Divisor):-
	Divisor < N,
	N mod Divisor =:=0.
n_tiene_divisor(N,Divisor):-
	Divisor < N,
	Divisor1 is Divisor + 1,
	n_tiene_divisor(N,Divisor1).




