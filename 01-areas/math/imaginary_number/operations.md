---
reviewed_on: "2025-02-06"
---

# Operations

## Addition

When adding $a + b i$ and $c + d i$, the real parts and the imaginary parts are added separately and then simplified.

$$
(a + b i) + (c + d i) = (a + c) + (b + d) i
$$

## Subtraction

When subtracting $c + d i$ from $a + b i$, the real parts and the imaginary parts are subtracted separately and then simplified.

$$
(a + b i) - (c + d i) = (a - c) + (b - d) i
$$

## Multiplication

When multiplying $a + b i$ and $c + d i$, the distributive property is applied and $i^2$ is replaced by $-1$.

$$
\begin{align}
    & (a + b i) (c + d i) \\
    & = a c + a d i + b c i + b d i^2 \\
    & = (a c - b d) + (a d + b c) i
\end{align}
$$

## Division

When dividing $a + b i$ by $c + d i$, the numerator and the denominator are multiplied by the conjugate of the denominator.

$$
\begin{align}
    & \frac{ a + b i }{ c + d i } \frac{ c - d i }{ c - d i } \\
    & = \frac{ (a + b i) (c - d i ) }{ c^2 + d^2 } \\
    & = \frac{ (a c + b d) + (-a d + b c) i }{ c^2 + d^2 } \\
    & = \frac{ a c + b d }{ c^2 + d^2 } + \frac{ -a d + b c }{ c^2 + d^2 } i
\end{align}
$$
