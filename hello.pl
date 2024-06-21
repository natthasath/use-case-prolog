% facts
parent(john, mary).
parent(john, sam).
parent(mary, kate).

% rules
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).