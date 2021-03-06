%funcion partida
f(X,Y):-Y is -X,X=<0,!.
f(X,Y):-Y is X,X<1,X>0,!.
f(X,Y):-Y is X*X,X>=1.

%factorial
factorial(0,1):-!.
factorial(X,F):-X1 is X-1,factorial(X1,F1),F is X*F1.

%fibonacci
fibonacci(0,1):-!.
fibonacci(1,1):-!.
fibonacci(X,F):-X1 is X-1,X2 is X-2,fibonacci(X1,F1),fibonacci(X2,F2),F is F1+F2.
