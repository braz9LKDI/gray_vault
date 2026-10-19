# Regular expression

Construct a regular expression on $\Sigma = \{0,1\}$ that generates all strings in which every occurrence of 00 precedes every occurrence of 11.

## Understanding the problem

The statement translates into the following rule: there cannot be 00 after an 11 or in other words, there cannot be an 11 before a 00.

> It is not asking to put a 00 before every occurrence of 11.

## Solution

$$
(0^* \cup 10^+ \cup 0^+1)^* (11 (1^* \cup 01^+ \cup 1^+0)^*)^*
$$

> The $11 (1^* \cup 01^+ \cup 1^+0)^*$ is wrapped because it is optional.

- $(0^* \cup 10^+ \cup 0^+1)^*$: avoid creating an 11 sequence.

- $(1^* \cup 01^+ \cup 1^+0)^*$: avoid creating a 00 sequence.
