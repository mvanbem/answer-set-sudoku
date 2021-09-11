% No repeated digits in a cage.
:- placed(X,Y,N), placed(I,J,N), X != I, Y != J, cage_id(A,X,Y), cage_id(B,I,J), A == B.

% Digits in cages must sum to the noted value.
:- #sum { N : placed(X,Y,N), cage_id(A,X,Y) } != S, cage_sum(A,S).
