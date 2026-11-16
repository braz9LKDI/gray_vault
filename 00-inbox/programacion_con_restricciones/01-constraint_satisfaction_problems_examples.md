# Constraint satisfaction problems examples

A **variable** is an unknown value. Its domain is the set of values it is allowed to take. A **constraint** is a rule about some of the variables.

Formally, a constraint on variables $y_1,\dots,y_k$ with domains $D_1,\dots,D_k$ is a subset of $D_1 \times \dots,D_k$. In plain words, a constraint is the list of value combinations that are allowed: the Cartesian product contains every combination and the constrain keeps only the good ones.

A CSP puts together the variables, their domains and a set of constraints:

$$
\langle \mathcal{C} ; x_1 \in D_1,\dots,X_n \in D_n \rangle
$$

$\mathcal{C}$ is the set of constraints and each $x_i \in D_i$ says which values $x_i$ may take.

A solution is a tuple $(d_1,\dots,d_n)$, with one value per variable taken from its domain, that satisfies every constraint.

## SEND + MORE = MONEY

TODO: convert this problem in a note.

Each letter must be replaced by a different digit so that the following sum is correct:

```text
  SEND
+ MORE
------
 MONEY
```

The unique solution is $9567 + 1085 = 10652$, which means $S = 9$, $E = 5$, $N = 6$, $D = 7$, $M = 1$, $O = 0$, $R = 8$ and $Y = 2$.

The variables are the eight letters. Their domains are $[0..9]$, except for $S$ and $M$, which use $[1..9]$ because a number does not start with 0.

### Equality constraints

The sum itself can be written in two ways.

The first option is a single equation. It relies on place value:

$$
\begin{align}
                &1,000 * S   &+ 100 * E &+ 10 * N &+ D \\
                &+ 1,000 * M &+ 100 * O &+ 10 * R &+ E \\
    = 1,000 * M &+ 1,000 * O &+ 100 * N &+ 10 * E &+ Y
\end{align}
$$

The second option copies column addition, the method used by hand. The units columns $D + E$ can be 10 or more. In that case the units digit $Y$ is written down and a 1 is carried to the next column. Carry variables $C_1,\dots,C_4 \in [0..1]$ store those carries and each column becomes one equation:

$$
\begin{align}
    D + E       &= 10 * C_1 + Y \\
    C_1 + N + R &= 10 * C_2 + E \\
    C_2 + E + O &= 10 * C_3 + N \\
    C_3 + S + M &= 10 * C_4 + O \\
    C_4         &= M
\end{align}
$$

Each equation says "the column sum equals ten times the carry plus the digit written below". A carry is never larger than 1 because the biggest possible column sum is $9 + 9 + 1 = 19$.

$$
\begin{align}
    7 + 5     &= 10 * 1 + 2 \\
    1 + 6 + 8 &= 10 * 1 + 5 \\
    1 + 5 + 0 &= 10 * 0 + 6 \\
    0 + 9 + 1 &= 10 * 1 + 0 \\
    1         &= 1
\end{align}
$$

The second option cost four extra variables but replaces one large constraint with five small ones.

### Inequality constraints

The rule "different letters get different digits" also has several models.

The first option uses one $x \neq y$ for every pair of letters, which gives 28 constraints, each of the 8 letters can be paired with the 7 others, which gives $8 * 7 = 56$, but this counts every pair twice ($S$, $E$ and $E$, $S$), so there are $\frac{ 56 }{ 2 } = 28$ pairs ($x \prec y$).

The second option uses a single constraint called `all_different`, defined as:

$$
\text{all\_different}(x_1,\dots,x_n) \coloneq \{(d_1,\dots,d_n) | d_i \neq d_j \text{ for } i \neq j\}
$$

This options allows exactly the same tuple as the 28 inequalities, but it lets a solver look at the whole group at once. For example, if three variables can only take the values 1 and 2, no single inequality is broken yet, but `all_different` can already tell that three variables cannot share two values.

The third option models the problem for integer programming (IP). In IP constraint must be a linear inequality, that is, numbers times variables added together and compared with $\leq$. A $\neq$ is not allowed, so each $x \neq y$ is rewritten with an extra variable $z_{ x,y } \in [0..1]$:

$$
\begin{align}
	x - y &\leq 10 - 11 * z_{ x,y } \\
	y - x &\leq 11 * z_{ x,y } - 1
\end{align}
$$

The trick works because $z_{ x,y }$, acts as a switch:

- When $z_{ x,y } = 0$, the first line becomes $x - y \leq 10$, which is always true because two digits differ by at most 9. The second line becomes $y - x \leq -1$, which means that $y$ is at least 1 smaller than $x$, so $x > y$.

- When $z_{ x,y } = 1$, $y - x \leq 1$, which means $x < y$. The second line becomes $y - x \leq 10$, which is always true.

Either way $x$ and $y$ end up different, and the solver picks which one is larger by picking $z_{ x,y }$. The numbers 10 and 11 are chosen so that one of the two lines always switches off. This is a common IP technique, usually called big-M formulation. Its disadvantage here is 28 new variables, one $z$ for each pair of letters.

## N queens

TODO: convert this problem in a note.

The problem is to place $n$ queens on a $n \times n$ chessboard so that no two of them attack each other. A queen attacks along its row, its column and both of its diagonals.

The model uses one variable per column: $x_i$ is the row of the queen in column $i$, so every domain is $[1..n]$. This choce already guarantees one queen per column, because each column has exactly one variable, so no column constraints are needed. Only rows and diagonals remain.

The constraints are stated "for $i \in [1..n - 1]$ and $j \in [i + 1..n]$". This covers every pair of columns $i$ and $j$ with $i < j$, each pair once.

Each pair of colums gets three constraints:

- $x_i \neq x_j$: the two queens are in different rows.

- $x_i - x_j \neq i - j$: the two queens are not on the same south-west to north-east diagonal, the one going up and to the right.

- $x_i - x_j \neq j - i$: the two queens are not on the same north-west to south-east diagonal, the one going down and to the right.
