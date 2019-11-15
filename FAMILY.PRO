/* Програма: Родина */
/* Призначення: Програма про родиннi вiдносини */

predicates
   mother(string,string)
   father(string,string)
   parents(string,string,string)
   man(string)
   woman(string)
   grandson(string, string). /* онук - хлопець */
   grandmother(string,string)
   grandfather(string,string)

clauses
   mother("Iрина","Артем")./* Свiтлана - мама Катi */
   mother("Галина","Вiктор").
   mother("Валентина","Iрина").
   father("Вiктор","Артем")./* Микола - тато Катi */
   father("Iван","Вiктор").
   father("Борис","Iрина").
   parents(X,Y,Z) :-
   	mother(X,Z),
   	father(Y,Z).
   man("Вiктор"). /* Микола - чоловiк */
   man("Iван").
   man("Вiктор").
   man("Артем").
   woman("Iрина"). /* Катя - жiнка */
   woman("Галина").
   woman("Валентина").
   grandmother(X,Y) :-
   	mother(X,Z),
   	mother(Y,Z).
   grandfather(X,Y) :-
   	father(X,Z),
   	mother(Z,Y).
   grandson(X,Y) :-
   	man(X),
   	mother(Z,X),
   	father(Y,Z).