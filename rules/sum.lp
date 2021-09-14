% Sum constraint.
:- #sum { N,X,Y : placed(X,Y,N), sum_member(A,X,Y) } != S, sum_id(A), sum_value(A,S).
