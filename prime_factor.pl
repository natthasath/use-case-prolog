% Define a predicate to find all prime factors of N
prime_factors(N, Factors) :-
    N > 0,
    prime_factors(N, 2, [], Factors).

% Base case: N is 1, no more factors to find
prime_factors(1, _, Acc, Acc).

% Recursive case: N is divisible by Factor
prime_factors(N, Factor, Acc, Factors) :-
    N > 1,
    0 is N mod Factor,
    is_prime(Factor),
    NewN is N // Factor,
    prime_factors(NewN, Factor, [Factor|Acc], Factors).

% Recursive case: N is not divisible by Factor, try next integer
prime_factors(N, Factor, Acc, Factors) :-
    N > 1,
    \+ 0 is N mod Factor,
    NextFactor is Factor + 1,
    prime_factors(N, NextFactor, Acc, Factors).

% Define a predicate to check if a number is prime
is_prime(2).
is_prime(3).
is_prime(P) :-
    P > 3,
    P mod 2 =\= 0,
    \+ has_factor(P, 3).

% Helper predicate to check for factors up to sqrt(P)
has_factor(P, Factor) :-
    Factor * Factor =< P,
    P mod Factor =:= 0.
has_factor(P, Factor) :-
    Factor * Factor < P,
    NextFactor is Factor + 2,
    has_factor(P, NextFactor).
