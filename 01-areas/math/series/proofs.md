---
type: concept
status: draft
---

# Proofs

## $\forall{ n } \in \mathbb{ N }^*$ satisfied that $\sum_{ i = 0 }^n { 2^i } = 2^{ n + 1 } - 1$

### Base case ($\sum_{ i = 0 }^n { 2^i } = 2^{ n + 1 } - 1$)

$$
\begin{align}
    & \sum_{ i = 0 }^{ n = 0 } { 2^i } = 2^{ n + 1 } - 1 \\
    & 2^0 = 2^{ 0 + 1 } - 1 \\
    & 1 = 1
\end{align}
$$

### Induction case ($\sum_{ i = 0 }^n { 2^i } = 2^{ n + 1 } - 1$)

$$
\begin{align}
    & \sum_{ i = 0 }^{ n + 1 } { 2^i } = 2^{ (n + 1) + 1 } - 1 \\
    & 2^0 + 2^1 + \dots + 2^n + 2^{ n + 1 } = 2^{ n + 2 } - 1 \\
    & \underbrace{ 2^{ n + 1 } - 1 }_{ 2^0 + 2^1 + \dots + 2^n } + 2^{ n + 1 } = (2^{ n + 1 } + 2^{ n + 1 }) - 1 \\
    & 2^{ n + 1 } (1 + 1) - 1 = 2^{ n + 2 } - 1
\end{align}
$$

## $\forall{ n } \in \mathbb{ N }^*$ satisfied that $\sum_{ k = 1 }^n k = \frac{ n (n + 1) }{ 2 }$ (arithmetic series)

$$
\begin{align}
    & \begin{array}{lclllll}
            S   & = & 1       & + 2       & + \dots & + (n - 1) & + n \\
            S   & = & n       & + (n - 1) & + \dots & + 2       & + 1 \\
            \hline
            2 S & = & (n + 1) & + (n + 1) & + \dots & + (n + 1) & + (n + 1)
        \end{array} \\
    & 2 S = n (n + 1) = n^2 + n \\
    & S = \frac{ n^2 + n }{ 2 } = \frac{ n (n + 1) }{ 2 }
\end{align}
$$

## $\forall{ n } \in \mathbb{ N }^*$ satisfied that $\sum_{ k = 1 }^n k^2 = \frac{ n (n + 1) (2 n + 1) }{ 6 }$ (square series)

- $a^3 - b^3 = (a -b) (a^2 + a b + b^2)$.

$$
\begin{array}{lcr}
    k^3 - (k - 1)^3                         & = & (k - (k - 1)) (k^2 + k (k - 1) + (k - 1)^2) \\
                                            & = & k^2 + k^2 - k + k^2 - 2 k + 1 \\
                                            & = & 3 k^2 - 3 k + 1 \\
    (k - 1)^3 - ((k -1) - 1)^3              & = & 3 (k - 1)^2 - 3 (k - 1) + 1 \\
    (k - 2)^3 - ((k -2) - 1)^3              & = & 3 (k - 2)^2 - 3 (k - 2) + 1 \\
    \vdots                                  &   & \\
    (k - (k - 1))^3 - ((k - (k - 1)) - 1)^3 & = & 3 (1)^2 - 3 (1) + 1
\end{array}
$$

The second term of each subtraction cancels with the first term of the next element, for example, the $-(n - 1)^3$ of the first element and the $(n - 1)^3$ of the second element.

$$
\begin{align}
    & \sum_{ k = 1 }^n k^3 - (k - 1)^3 = n^3 - 0^3 \\
    & n^3 = 3 \sum_{ k = 1 }^n k^2 - 3 \sum_{ k = 1 }^n k + n \\
    & \sum_{ k = 1 }^n k^2 = \frac{ 1 }{ 3 } \left (n^3 + 3 \sum_{ k = 1 }^n k - n \right ) \\
    & = \frac{ n }{ 3 } \left (n^2 + 3 \frac{ (n + 1) }{ 2 } - 1 \right ) \\
    & = \frac{ n }{ 3 } \left (\frac{ 2 n^2 + 3 n + 3 - 2 }{ 2 } \right ) \\
    & = \frac{ n }{ 3 } \left (\frac{ (2 n + 1) (n + 1) }{ 2 } \right ) \\
    & = \frac{ n (2 n + 1) (n + 1) }{ 6 }
\end{align}
$$

## $\forall{ n } \in \mathbb{ N }^*$ satisfied that $\sum_{ k = 1 }^n k^3 = \frac{ n^2 (n + 1)^2 }{ 4 }$ (cube series)

The same telescoping idea works with fourth powers.

$$
\begin{align}
    & k^4 - (k - 1)^4 = 4 k^3 - 6 k^2 + 4 k - 1 \\
    & n^4 = \sum_{ k = 1 }^n (k^4 - (k - 1)^4) = 4 \sum_{ k = 1 }^n k^3 - 6 \sum_{ k = 1 }^n k^2 + 4 \sum_{ k = 1 }^n k - n \\
    & \sum_{ k = 1 }^n k^3 = \frac{ 1 }{ 4 } \left (n^4 + 6 \frac{ n (n + 1) (2 n + 1) }{ 6 } - 4 \frac{ n (n + 1) }{ 2 } + n \right ) \\
    & = \frac{ 1 }{ 4 } \left (n^4 + 2 n^3 + 3 n^2 + n - 2 n^2 - 2 n + n \right ) \\
    & = \frac{ n^4 + 2 n^3 + n^2 }{ 4 } = \frac{ n^2 (n + 1)^2 }{ 4 }
\end{align}
$$

## $\forall{ n } \in \mathbb{ N }^*$ satisfied that $\sum_{ k = 0 }^n x^k = \frac{ x^{ n + 1 } - 1 }{ x - 1 }$ (geometric series)

For $x \neq 1$, multiplying the sum by $x$ shifts every term one position, so subtracting both sums leaves only the ends.

$$
\begin{align}
    & S = 1 + x + x^2 + \dots + x^n \\
    & x S = x + x^2 + \dots + x^n + x^{ n + 1 } \\
    & x S - S = x^{ n + 1 } - 1 \\
    & S = \frac{ x^{ n + 1 } - 1 }{ x - 1 }
\end{align}
$$

## $\forall{ n } \in \mathbb{ N }^*$ satisfied that $\sum_{ k = 0 }^\infty x^k = \frac{ 1 }{ 1 - x } \quad |x| < 1$ (geometric series)

It is the limit of the finite geometric series. When $|x| < 1$, $x^{ n + 1 } \to 0$ as $n \to \infty$.

$$
\sum_{ k = 0 }^\infty x^k = \lim_{ n \to \infty } \frac{ x^{ n + 1 } - 1 }{ x - 1 } = \frac{ 0 - 1 }{ x - 1 } = \frac{ 1 }{ 1 - x }
$$

## $\sum_{ k = 1 }^n \frac{ 1 }{ k } = \ln n + \gamma + \varepsilon_n$, with $\varepsilon_n \to 0$ (harmonic series)

The partial sums $H_n$ have no closed form; they grow like $\ln n$. Comparing the sum with the area under $\frac{ 1 }{ x }$ bounds it on both sides.

$$
\begin{align}
    & \int_1^{ n + 1 } \frac{ 1 }{ x } \, dx \leq \sum_{ k = 1 }^n \frac{ 1 }{ k } \leq 1 + \int_1^n \frac{ 1 }{ x } \, dx \\
    & \ln (n + 1) \leq H_n \leq 1 + \ln n
\end{align}
$$

The difference $H_n - \ln n$ decreases because $\frac{ 1 }{ n + 1 } < \ln \left (1 + \frac{ 1 }{ n } \right )$. It also stays above $\ln (n + 1) - \ln n > 0$. A decreasing sequence bounded below converges; its limit is the Euler-Mascheroni constant $\gamma \approx 0.5772$.
