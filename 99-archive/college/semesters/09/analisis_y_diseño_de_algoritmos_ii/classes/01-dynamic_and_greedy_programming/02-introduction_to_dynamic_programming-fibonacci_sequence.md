# Introduction to dynamic programming: Fibonacci sequence

## Dynamic programming

![[01-areas/systems_engineering/fundamentals/algorithms/dynamic_programming|Dynamic programming]]

### Caching vs. computation

Dynamic programming is essentially a tradeoff of space for time...

#### Fibonacci numbers by recursion

![[01-areas/systems_engineering/problems/fibonacci_sequence|fibonacci_sequence]]

```cpp
int Fibonacci(int position) {
    if (position == 0)
        return 0;
    else if (position == 1)
        return 1;
    else
        return Fibonacci(position - 1) + Fibonacci(position - 2);
}
```

...Since $\frac{ F_{ n + 1 } }{ F_n } \approx \frac{ 1 + \sqrt{ 5 } }{ 2 } = \phi$, this means that $F_n > { 1.6 }^n$ for sufficiently large $n$. Since our recursion tree has only 0 and 1 as leaves, summing them up to get such a large number means we must have at least ${ 1.6 }^n$ leaves or procedure calls...

#### Fibonacci numbers by caching

This is the top-down approach:

```cpp
#define MAX 92 // largest n for which F(n) fits in a long
#define UNKNOWN -1 // contents denote an empty cell
long storage[MAX + 1];


long Fibonacci_helper(int position) {
    if (storage[position] == UNKNOWN)
        storage[position] = Fibonacci_helper(position - 1) + Fibonacci_helper(position - 2);

    return storage[position];
}

long Fibonacci(int position) {
    storage[0] = 0;
    storage[1] = 1;

    for (int i = 2; i <= MAX; i++)
        storage[i] = UNKNOWN;

    return Fibonacci_helper(position);
}
```

It computes $F(n)$ in linear time ($O(n)$) because the recursive function `Fibonacci_helper` is called at most twice for each value $k$ where $0 \leq k \leq n - 1$.

#### Fibonacci numbers by dynamic programming

This is the bottom-up approach:

```cpp
#define MAX 92 // largest n for which F(n) fits in a long
#define UNKNOWN -1 // contents denote an empty cell
long storage[MAX + 1];


long Fibonacci(int position) {
    storage[0] = 0;
    storage[1] = 1;

    for (int i = 2; i <= position; i++)
        storage[i] = storage[i - 1] + storage[i - 2];

    return storage[position];
}
```

Like the top-down version, the time and space complexity is $O(n)$, but its space complexity improves by using two variables instead of an array.

```cpp
#define MAX 92 // largest n for which F(n) fits in a long


long Fibonacci(int position) {
    long a = 0, b = 1;

    if (position == 0)
        return 0; // a
    else if (position == 1)
        return 1; // b
    else {
        for (int i = 2; i <= position; i++) {
            long next = a + b;
            a = b;
            b = next;
        }

        return b;
    }
}
```

This new version now has a space complexity of $O(1)$.
