# Letters game

## Requested functionality

The user enters words to be formed with the letters of the array (taking into account the frequency of each letter). The program verifies which of the entered words can be formed and the positions of the letters of each one.

### Possible implementation

1. Create a function that verifies whether a word can be formed with the array of letters.

    ```cpp
    bool is_valid_word(std::string word) {
        // Your implementation here
    }
    ```

2. Create a function that iterates over the array of words entered by the user, uses the previous function to verify whether each word can be formed with the array of letters and, if it can, gathers the positions of the letters required to form it.

    ```cpp
    std::string valid_words() {
        std::string output = "";
        for (int i = 0; i < words_length; i++) {
            std::string word = words[i];

            if (is_valid_word(word)) {
                // Gather the letters position
                output += information;
            }
        }

        return output;
    }
    ```

    > The information can also be printed inside the function; in that case, the function declaration is `void valid_words()`.
