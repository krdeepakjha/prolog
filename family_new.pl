%parent
%knowledege
parent( pam, bob).
parent( tom, bob).
parent( tom, liz).
parent( bob, ann).
parent( bob, pat).
parent( pat, jim).

%adding the gender
female( pam).
male( tom).
male( bob).
female( liz).
female( pat).
female( ann).
male( jim).

%rule for offspring and parent

offspring(X,Y) :- parent(Y,X). 

%rule for mother
mother(X,Y) :- parent(X,Y), female(X).

%rule for grandparent
grandparent(X,Z) :- parent(X,Y), parent(Y,Z).                  %X is the grandfather of Z when Y is the parent of X and child of Z at the same 
                                                                 %same time. 
%rule for sister
sister(X,Y) :- parent(Z,X), parent(Z,Y), female(X).                   % X is sister of Y when both of them have common parents and X is female.

%rule for sister using different clause 
sister( X, Y) :- parent( Z, X), parent( Z, Y), female( X), different( X, Y).

%finding a predecessor
predecessor(X,Z) :- parent(X,Z). 

predecessor(X, Z) :- parent( X, Y), parent( Y, Z).

predecessor( X, Z) :- parent( X, Y1), parent( Yl, YZ), parent( Y2, Z).

predecessor(X, Z) :- parent( X, Y1), parent( Yl, Y2), parent( Y2, Y3), parent( Y3, Z).


