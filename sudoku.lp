col(1..9).
row(1..9).
num(1..9).

{ placed(X,Y,N): num(N) } = 1 :- col(X), row(Y).
same_box(X,Y,I,J) :- col(X), row(Y), col(I), row(J), (X-1)/3 == (I-1)/3, (Y-1)/3 == (J-1)/3.

% No repeated digits in a row.
:- placed(X,Y,N), placed(I,Y,N), I != X.

% No repeated digits in a column.
:- placed(X,Y,N), placed(X,I,N), I != Y.
