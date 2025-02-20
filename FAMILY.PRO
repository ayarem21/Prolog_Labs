/* �ணࠬ�: ������ */
/* �ਧ��祭��: �ணࠬ� �� த���i �i���ᨭ� */

predicates
   mother(string,string)
   father(string,string)
   parents(string,string,string)
   man(string)
   woman(string)
   grandson(string, string). /* ��� - 嫮���� */
   grandmother(string,string)
   grandfather(string,string)

clauses
   mother("Iਭ�","��⥬")./* ��i⫠�� - ���� ���i */
   mother("������","�i���").
   mother("�����⨭�","Iਭ�").
   father("�i���","��⥬")./* ������ - �� ���i */
   father("I���","�i���").
   father("����","Iਭ�").
   parents(X,Y,Z) :-
   	mother(X,Z),
   	father(Y,Z).
   man("�i���"). /* ������ - 箫��i� */
   man("I���").
   man("�i���").
   man("��⥬").
   woman("Iਭ�"). /* ���� - �i��� */
   woman("������").
   woman("�����⨭�").
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