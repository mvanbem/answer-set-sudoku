% Digits in along an arrow must sum to the digit in the arrow's cicle.
:- #sum { N : placed(X,Y,N), arrow_member(A,X,Y) } != S, arrow_id(A), arrow_circle(A,I,J), placed(I,J,S).
