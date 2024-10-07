% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

size(4)

cell(X,Y) :- X = 1..4, Y = 1..4

sudoku(X,Y,N) :- N = 1..4, initial(X,Y,N).
sudoku(X,Y,N) :- cell(X,Y), N = 1..4

:- sudoku(X,Y,N1), sudoku(X,Y,N2), N1 != N2.

:- sudoku(X, Y1, N), sudoku(X, Y2, N), Y1 != Y2.

:- sudoku(X1, Y, N), sudoku(X2, Y, N), X1 != X2.

subgrid(X, Y, S) :- cell(X, Y), S = 1 + (((X-1) / 2) * 2 + (Y-1) / 2).

:- sudoku(X1, Y1, N), sudoku(X2, Y2, N), subgrid(X1, Y1, S), subgrid(X2, Y2, S), (X1, Y1) != (X2, Y2).


#show sudoku/3.
