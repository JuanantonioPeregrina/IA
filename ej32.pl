f(X,0):-
	X<3.
	
f(X,2) :-
	X>3,
	X<6.

f(X,4) :-
	X>6.

 f_1(X, 0) :-
     X < 3,
         !.

 % Caso 2: Si 3 < X < 6, entonces Y = 2, y no debe intentar otros casos
         f_1(X, 2) :-
             X > 3,
                 X < 6,
                     !.

                     % Caso 3: Si X > 6, entonces Y = 4
                     f_1(X, 4) :-
                         X > 6.

