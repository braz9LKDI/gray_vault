# Regular expression

Construct a regular expression on $\Sigma = \{0,1\}$ that generates all strings in which every occurrence of 00 precedes every occurrence of 11.

## Understanding the problem

The statement translates into the following rule: there cannot be 00 after an 11 or in other words, there cannot be an 11 before a 00.

> It is not asking to put a 00 before every occurrence of 11.

## Solution

$$
(0 \cup 10)^* (\varepsilon \cup 1 \cup 11 (1 \cup 01)^* (\varepsilon \cup 0))
$$

The string is split at its first 11.

- $(0 \cup 10)^*$: the part before the first 11. Every 1 is followed by a 0, so no 11 appears.

- $\varepsilon \cup 1$: the string has no 11, and it can end in a single 1.

- $11 (1 \cup 01)^* (\varepsilon \cup 0)$: the first 11 and everything after it. Every 0 is followed by a 1, except possibly the last character, so no 00 appears.
