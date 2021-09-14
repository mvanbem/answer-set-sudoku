% https://app.crackingthecryptic.com/sudoku/3mg6PRM6bF

rules(standard; cage; sum).

placed(6,6,1).

cage_id(1..12).
cage_member(1, 1,1; 1, 2,1; 1, 1,2; 1, 2,2). cage_sum(1,15).
cage_member(2, 4,1; 2, 5,1; 2, 4,2; 2, 5,2). cage_sum(2,15).
cage_member(3, 7,1; 3, 8,1; 3, 7,2). cage_sum(3,12).
cage_member(4, 3,3; 4, 4,3; 4, 3,4). cage_sum(4,12).
cage_member(5, 6,3; 5, 7,3; 5, 6,4). cage_sum(5,13).
cage_member(6, 1,4; 6, 2,4; 6, 1,5; 6, 2,5). cage_sum(6,15).
cage_member(7, 4,4; 7, 5,4; 7, 4,5; 7, 5,5). cage_sum(7,20).
cage_member(8, 7,4; 8, 8,4; 8, 7,5; 8, 8,5). cage_sum(8,15).
cage_member(9, 3,6; 9, 4,6; 9, 3,7). cage_sum(9,13).
cage_member(10, 1,7; 10, 2,7; 10, 1,8). cage_sum(10,13).
cage_member(11, 4,7; 11, 5,7; 11, 4,8; 11, 5,8). cage_sum(11,15).
cage_member(12, 7,7; 12, 8,7; 12, 7,8; 12, 8,8). cage_sum(12,15).

sum_id(1).
sum_member(1, 1,1; 1, 2,2; 1, 3,3; 1, 4,4; 1, 5,5; 1, 6,6; 1, 7,7; 1, 8,8; 1, 9,9). sum_value(1, 37).
