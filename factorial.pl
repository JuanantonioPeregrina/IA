factorial(0,1).
factorial(N,M)  :-
	N > 0,
	N1 is  N-1,
	factorial(N1,F1),
	M is N  * F1.
