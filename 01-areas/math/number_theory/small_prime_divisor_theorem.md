---
reviewed_on: "2025-02-03"
---

# Small prime divisor theorem

If $n$ is a composite number, then it has a prime divisor less than or equal to $\sqrt{ n }$.

$$
\forall n \in \mathbb{N} \pand n > 1 \pand n \notin \mathbb{P} \implies \exists p : p \in \mathbb{P} \pand p \mid n \pand p \leq \sqrt{ n }
$$

## Proof

A composite number is a positive integer greater than 1 that has a divisor other than itself and 1. If $n$ is a composite number, then it can be written as $n = a * b$ with $1 < a < n$ and $1 < b < n$.

If both $a$ and $b$ were greater than $\sqrt{ n }$, then $a * b$ would be greater than $n$, which is a contradiction. Similarly, if both $a$ and $b$ were less than $\sqrt{ n }$, then $a * b$ would be less than $n$, which is also a contradiction.

Therefore, one of the two factors, say $a$, is less than or equal to $\sqrt{ n }$. Since $a > 1$, the [[01-areas/math/number_theory/fundamental_theorem_of_arithmetic|fundamental theorem of arithmetic]] gives it a prime factor $p$, with $p \leq a \leq \sqrt{ n }$. Because $p \mid a$ and $a \mid n$, also $p \mid n$. Hence, $n$ has a prime divisor less than or equal to $\sqrt{ n }$.
