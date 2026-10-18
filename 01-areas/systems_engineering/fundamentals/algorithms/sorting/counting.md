---
reviewed_on: "2025-05-05"
---

# Counting

1. Create an array of integers sized by the maximum value in the range (from 0 up to max). Initialize every element to 0.

2. Traverse all elements to count how many times each value appears.

3. Turn the counts into cumulative counts: each position holds how many elements are less than or equal to that value, which is the final position of the last occurrence of the value.

4. Traverse the input from the end, placing each element at the position given by its cumulative count and decrementing that count after each placement.

## Complexity

- All cases: $O(N + M)$.

    where $N$ and $M$ are the sizes of the input and counts arrays respectively.

## C++ implementation

```cpp
#include <vector>
#include <stdexcept>
#include <type_traits>


template <class T>
int get_number_representation(T element) {
    if constexpr (std::is_integral<T>::value || std::is_floating_point<T>::value)
        return element;
    else
        throw std::runtime_error("Error: unsupported type");
}

template <class T>
std::vector <T> counting_sort(const std::vector <T> &input) {
    int max = 0;

    for (int i = 0; i < (int) input.size(); i++) {
        int number_representation = get_number_representation(input[i]);
        if (number_representation > max)
            max = number_representation;
    }

    std::vector <int> cumulative_counts(max + 1, 0);

    for (int i = 0; i < (int) input.size(); i++)
        cumulative_counts[get_number_representation(input[i])]++;

    for (int i = 1; i <= max; i++)
        cumulative_counts[i] += cumulative_counts[i - 1];

    std::vector <T> output(input.size());
    for (int i = input.size() - 1; i >= 0; i--) {
        int number_representation = get_number_representation(input[i]);
        output[cumulative_counts[number_representation] - 1] = input[i];
        cumulative_counts[number_representation]--;
    }

    return output;
}
```
