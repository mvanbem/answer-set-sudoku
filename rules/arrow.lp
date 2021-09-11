% Digits in along an arrow must sum to the digit in the arrow's cicle.
:- #sum { N : placed(X,Y,N), on_arrow(A,X,Y) } != S, arrow_circle(A,I,J), placed(I,J,S).
