parte(X,X) 
parte(X,Y) :- Pdirecta(X,Y)
parte(X,Z) :- Pdirecta(X,Y), parte(Y,Z)
pPropia(X,Y) :- parte(X,Y), \+XnoesY

