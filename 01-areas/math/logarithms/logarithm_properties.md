---
type: concept
status: draft
---

# Properties

## Logarithm of the base

$$
\log_b b = 1 \rightarrow b^1 = b
$$

## Logarithm of one

$$
\log_b 1 = 0 \rightarrow b^0 = 1
$$

## Inverse

$$
b^{ \log_b a } = a \rightarrow \log_b a = \log_b a
$$

Using the [[01-areas/math/logarithms/logarithms|logarithms]].

## Power

$$
\log_b a^n = n \log_b a
$$

$$
\begin{align}
    & b^{ n\log_b a } = a^n \\
    & a^n = (b^{ \log_b a })^n \\
    & a^n = a^n
\end{align}
$$

## Product

$$
\log_b ac = \log_b a + \log_b c
$$

$$
\begin{align}
    & \begin{array}{lr}
            p = \log_b a & q = \log_b c \\[5 pt]
            a = b^p      & c = b^q
        \end{array} \\
    & \log_b { b^p * b^q } = \log_b b^{ p + q } \\
    & (p + q) \log_b b \\
    & = p + q \\
    & = \log_b a + \log_b c
\end{align}
$$

## Quotient

$$
\log_b \frac{ a }{ c } = \log_b a - \log_b c
$$

$$
\begin{align}
    & \log_b a c^{ -1 } \\
    & = \log_b a + \log_b c^{ -1 } \\
    & = \log_b a - \log_b c
\end{align}
$$

## Change of base

$$
\log_b a = \frac{ \log_c a }{ \log_c b } \quad b \neq 1
$$

$$
\begin{align}
    & b^c = a \\
    & \log_c a = \log_c b^c \\
    & \log_c a = c \log_c b \\
    & \log_c a = \log_b a \log_c b \\
    & \log_b a = \frac{ \log_c a }{ \log_c b }
\end{align}
$$

## Exponent swap

$$
n^{ \log_y x } = x^{ \log_y n } \quad \{n,x,y\} \in \mathbb{ N } \pand y \neq 1
$$

$$
\begin{align}
    & \log_y(n^{ \log_y x }) = \log_y(x^{ \log_y n }) \\
    & \log_y x \log_y n = \log_y n \log_y x \\
    & \frac{ \log_y x \log_y n }{ \log_y n } = \frac{ \log_y n \log_y x }{ \log_y n } \\
    & \log_y x = \log_y x
\end{align}
$$
