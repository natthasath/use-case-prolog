# 🎉 Use Case Prolog

Prolog (Programming in Logic) is a high-level programming language associated with artificial intelligence and computational linguistics. It features a declarative programming paradigm, where logic and rules are defined, allowing the system to infer conclusions from given facts.

![version](https://img.shields.io/badge/version-1.0-blue)
![rating](https://img.shields.io/badge/rating-★★★★★-yellow)
![uptime](https://img.shields.io/badge/uptime-100%25-brightgreen)

### 🏆 Run

- Open SWI Prolog

```shell
swipl
```

- Run `hello.pl`

```
1 ?- [hello].
true.

2 ?- parent(X, mary).
X = john.

3 ?- grandparent(john, Y).
Y = kate ;
```

- Run `game24.pl`

```
1 ?- [game24].
true.

2 ?- solve24(4, 8, 3, 1, Expr).
Expr = (4 + 8) * (3 - 1) ;
```