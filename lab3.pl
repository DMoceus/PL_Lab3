/*
	CS471 - Programming Languages
	 Lab #3
	 Author: David, Morris (dmorris4@binghamton.edu)
	 Date: February 12, 2015


Part 1:
1)
Relation: A simple set of ordered pairs
Function: A relation where each input goes to only one output
Every Function is a relation.
Not every relation is a function. Ex:
A=C.
B=C.

4)
loves(aBoy,mia) - Structure, F:loves, A:2
aBoy - atom
mia - atom

boxer(Butch) - Structure, F:boxer,A:1
Butch - Variable

and(big(X),kahuna(X)) - Structure, F:and, A:2
big(X) - Structure, F:big, A:1
X - Variable
kahuna(X) - Structure, F:kahuna, A:1

hide(X,big(big(aBoy))) - Structure, F:hide, A:2
X - Variable
big(big(aBoy)) - Structure, F:big, A:1
big(aBoy) - Structure, F:big, A:1
aBoy - atom

likes(sam,Food):-indian(Food),mild(Food). - Rule
likes(sam,Food) - Predicate
indian(Food) - Clause
mild(Food) - Clause

likes(sam,Food):-italian(Food). - Rule
likes(sam,Food) - Predicate
italian(Food) - Clause

indian(curry) - Clause, Fact
indian(tandoori) - Clause, Fact
mild(tandoori) - Clause, Fact
italian(pizza) - Clause, Fact
*/


second(X,Y) :- X=triple(A,B,C),B=Y.
secondF(triple(A,B,C),B).

/* list of facts in prolog, stored in an ascii file, 'family.pl'*/
/* WE can think of "mother(mary,ann)" as meaning - */
/*                  Mary is the mother of Ann */

mother(mary, ann).
mother(mary, joe).
mother(sue, marY).  /* marY not the same as mary */
mother(sue,mary).

father(mike, ann).
father(mike, joe).
father(tom,mary).

grandparent(sue, ann). 

male(joe).
male(mike).
male(tom).

female(mary).
female(ann).
female(sue).

parent(P,C) :- father(P,C).
parent(P,C) :- mother(P,C).


daughter(P,C) :- mother(P,C),female(C).
daughter(P,C) :- father(P,C),female(C).

last([X],X).
last([_|Xs],Y):-last(Xs,Y).

isOrdered([]).
isOrdered([X]).
isOrdered([X,Y|T]) :- X<Y,isOrdered([Y|T]).

pyth(X,Y,Z) :- Z is X*X+Y*Y.

triple(X,Sum) :- X=triple(A,B,C),Sum is A+B+C.

sumOfLst([A],S) :- A = S.
/*sumOfLst([H|T],S) :- X is S-H, sumOfLst(T,X).*/
sumOfLst([H|T],S) :- sumOfLst(T,X), S is H+X.
