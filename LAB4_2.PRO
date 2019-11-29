predicates
 word(string)
 search(string)
 repeat
 stop
 start
 check(string)
clauses
 repeat.
 repeat:- repeat.
	
  word("rabbit").
  word("bunny").
  word("cony").
  
start:-repeat,	
 write("Введiть переклад з англiйського слово Кролик: "), 
 readln(Y), nl, check(Y).

  check(Y) :- word(Y), !, search(Y).
  check(_) :- write("Переклад неправильний, спробуйте знов!"), nl, fail.

search(Y):- word(Y),
	    write("Всi iншi варiанти перекладу - rabbit, bunny, cony:"), nl.
	    stop:-repeat,
	    start.
goal
  stop.