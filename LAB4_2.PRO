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
 write("����i�� ��४��� � ����i��쪮�� ᫮�� �஫��: "), 
 readln(Y), nl, check(Y).

  check(Y) :- word(Y), !, search(Y).
  check(_) :- write("��४��� ���ࠢ��쭨�, �஡�� ����!"), nl, fail.

search(Y):- word(Y),
	    write("��i i��i ���i��� ��४���� - rabbit, bunny, cony:"), nl.
	    stop:-repeat,
	    start.
goal
  stop.