male(judsonz).
male(charteris).
male(judsons).
male(nick).
male(robert).
male(jack).
male(gaius).

female(louanne).
female(laura).
female(hannah).
female(caroline).
female(sarah).
female(millajovovich).

parent(laura,hannah).
parent(laura,nick).
parent(laura,judsonz).
parent(charteris,judsons).
parent(robert,laura).
parent(sarah,judsons).
parent(caroline,laura).
parent(judsons,hannah).
parent(judsons,nick).
parent(judsons,judsonz).
parent(charteris,louanne).
parent(sarah,louanne).
parent(charteris,jack).
parent(sarah,jack).
parent(judsonz,gaius).
parent(millajovovich,gaius).

married(laura,judsons).
married(caroline,robert).
married(charteris,sarah).
married(robert,caroline).
married(sarah,charteris).
married(judsons,laura).
married(millajovovich,judsonz).
married(judsonz,millajovovich).


motherinlaw(X,Y,Z) :- married(Y,Z),parent(X,Y), female(X).
fatherinlaw(X,Y,Z) :- married(Y,Z),parent(X,Y) ; parent(X,Z), male(X).

mother(X,Y) :- parent(X,Y),female(X).
father(X,Y) :- parent(X,Y),male(X).

daughter(X,Y) :- parent(Y,X), female(X).
son(X,Y) :- parent(Y,X), male(X).

brother(X,Y,Z) :- parent(Z,X) ,parent(Z,Y), male(Y).
sister(X,Y,Z) :- parent(Z,X) ,parent(Z,Y), female(Y).
sibling(X,Y,Z) :- parent(Z,X) ,parent(Z,Y).

grandchild(X,Y,Z) :- parent(Y,X), parent(Z,Y).
grandson(X,Y,Z) :- parent(Y,X), parent(Z,Y),male(X).
granddaughter(X,Y,Z) :- parent(Y,X), parent(Z,Y),female(X).

grandparent(X,Y,Z) :- parent(X,Y), parent(Y,Z).
grandfather(X,Y,Z) :- parent(X,Y), parent(Y,Z), male(X).
grandmother(X,Y,Z) :- parent(X,Y), parent(Y,Z), female(X).


aunt(W,X,Y,Z) :- parent(W,X),parent(W,Y),parent(Y,Z), female(X).
uncle(W,X,Y,Z) :- parent(W,X),parent(W,Y),parent(Y,Z), male(X).

niece(W,X,Y,Z) :- parent(X,W), sibling(X,Y,Z), female(W).
nephew(W,X,Y,Z) :- parent(X,W), sibling(X,Y,Z), male(W).

ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Z), ancestor(Z,Y).