shorttrace
Predicates
 power_of_two (integer)
Clauses
 power_of_two(2) :- !.
 power_of_two(Expon) :-
 
 Exp1 = Expon + 1, trace(on),
 Num = exp(Exp1 * ln(2)),
 write("\t", Exp1, "\t\t", Num, "\n"),
 power_of_two(Exp1).
Goal
 trace(off),
 makewindow(1,2,3,"table degrees 2", 0, 0, 25, 80),
 write("\n\Degrees\t\result\n", "\t=======\t\t=======\n"),
 power_of_two(0), nl.
