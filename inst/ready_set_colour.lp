% https://app.crackingthecryptic.com/sudoku/MgrpPMnbB8

rules(standard; cage; arrow).

cage_id(1..14).
cage_member(1, 7,1; 1, 8,1). cage_sum(1,10).
cage_member(2, 5,2; 2, 5,3). cage_sum(2,15).
cage_member(3, 6,2; 3, 7,2). cage_sum(3,12).
cage_member(4, 4,3; 4, 4,4). cage_sum(4,15).
cage_member(5, 1,4; 5, 1,5; 5, 1,6). cage_sum(5,8).
cage_member(6, 3,4; 6, 3,5). cage_sum(6,15).
cage_member(7, 5,4; 7, 6,4). cage_sum(7,5).
cage_member(8, 9,4; 8, 9,5; 8, 9,6). cage_sum(8,9).
cage_member(9, 4,5; 9, 5,5; 9, 6,5). cage_sum(9,22).
cage_member(10, 7,5; 10, 7,6). cage_sum(10,15).
cage_member(11, 3,6; 11, 4,6). cage_sum(11,6).
cage_member(12, 5,7; 12, 5,8). cage_sum(12,15).
cage_member(13, 3,8; 13, 4,8). cage_sum(13,12).
cage_member(14, 2,9; 14, 3,9). cage_sum(14,10).

arrow_id(1..6).
arrow_circle(1, 1,1). arrow_member(1, 2,2; 1, 2,3; 1, 3,3).
arrow_circle(2, 3,2). arrow_member(2, 4,1; 2, 5,1; 2, 6,1).
arrow_circle(3, 9,1). arrow_member(3, 8,2; 3, 7,3; 3, 8,3).
arrow_circle(4, 1,9). arrow_member(4, 2,7; 4, 3,7; 4, 2,8).
arrow_circle(5, 7,8). arrow_member(5, 4,9; 5, 5,9; 5, 6,9).
arrow_circle(6, 9,9). arrow_member(6, 7,7; 6, 8,7; 6, 8,8).
