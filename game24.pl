% game24.pl

% Predicate to generate all expressions and evaluate them
solve24(A, B, C, D, Expr) :-
    expression([A, B, C, D], Expr),
    Expr =:= 24.

% Generate all valid expressions using the four numbers
expression(Numbers, Expr) :-
    permutation(Numbers, [A, B, C, D]),
    subexpression(A, B, C, D, Expr).

% Different ways to combine four numbers into expressions
subexpression(A, B, C, D, (E1 + E2)) :- subexpression(A, B, E1), subexpression(C, D, E2).
subexpression(A, B, C, D, (E1 - E2)) :- subexpression(A, B, E1), subexpression(C, D, E2).
subexpression(A, B, C, D, (E1 * E2)) :- subexpression(A, B, E1), subexpression(C, D, E2).
subexpression(A, B, C, D, (E1 / E2)) :- subexpression(A, B, E1), subexpression(C, D, E2), E2 =\= 0.

% Different ways to combine two numbers into expressions
subexpression(A, B, (A + B)).
subexpression(A, B, (A - B)).
subexpression(A, B, (A * B)).
subexpression(A, B, (A / B)) :- B =\= 0.

% Permutation helper function
permutation([], []).
permutation(L, [H|T]) :-
    select(H, L, R),
    permutation(R, T).
