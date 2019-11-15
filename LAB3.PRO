predicates
	input(real)
	Y(real)
	output(real)
	error(real)
	error1(real)
clauses
	input(X):-clearwindow,
	  write("введiть значення Х:"),
	  readreal(X),nl.
	
	error(X):-X*X-X-12 < 0,
	  write("Вiд'їмний знак пiд коренем").
	error(X):-1-(X*X-X-12) < 0,
	  write("Вiд'їмний знак пiд коренем").
	
	
	error1(X):- sin(X) = 0,
	  write("Дiлення на 0").
	error1(X):- cos(X) = 0,
	  write("Дiленння на 0").
	error1(X):- cos(1-(1/cos(X))) = 0,
	  write("Дiлення на 0").
	error1(X):- ln(4 * X) <=0,
	  write("Аргумент логарифма повинен бути >= 0").
	
	
	Y(X):-
	  X<-1,not (error(X)),
	  F=arctan((sqrt(X*X-X-12))/(sqrt(1-(X*X-X-12)))),
	  output(F).
	Y(X):- 
	  X >= 0, not (error1(X)),
	  F=sin(1-(1/cos(X))/cos(1-(1/cos(X)))+ln(4*X)),
	  output(F).
        Y(X):-
          X < 0, X >= -1,
          write(" Не потрапляї в дiапазон").
          
        output(F):- write("y= ",F).
	
goal
	input(X),
	Y(X).