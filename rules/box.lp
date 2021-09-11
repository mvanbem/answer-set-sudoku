% No repeated digits in a box.
:- placed(X,Y,N), placed(I,J,N), same_box(X,Y,I,J), X != I, Y != J.
