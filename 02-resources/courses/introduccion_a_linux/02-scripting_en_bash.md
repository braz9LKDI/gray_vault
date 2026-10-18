# Scripting en Bash

## Buscador de máquinas de Hack The Box

We will build a terminal search tool for the Hack The Box machines stored on the [htbmachines](https://htbmachines.github.io) page.

1. `curl -s -X GET https://htbmachines.github.io/bundle.js`.

    > `-s` runs it in silent mode.
    >
    > `-X` sets the request method to use when starting the transfer.

    We could bring the information about the machines from the Internet every time we need it, but that is not efficient.

2. `cat bundle.js | js-beautify | sponge bundle.js`: beautify the `bundle.js` with the "js-beautify" tool.

## Martingala

The Martingale system is a betting strategy based on recovering losses. The idea is that with every losing roulette spin, the wager is doubled. In theory, this means that an eventual win recovers any previous losses plus a small profit.

## Labouchere

1. Decide how much to win, and split that number into smaller, random numbers.

    For example, our $10 goal could become 1, 2, 4, 1, 2.

2. Combine the numbers.

    Take the furthest left number and the furthest right number from the sequence. In this example that would be 1 and 2. Combine these to make the first bet for $3.

3. Place the bet.

    Place the bet on an even bet like red, black, odd, even, 1-18 or 19-36.

4. Repeat the second step.
    - On a win, cross off the furthest left and furthest right numbers from the sequence. Here the sequence would be left with 2, 4, 1.

    - On a loss, do not cross off any numbers and add the bet just made ($3) to the far right of the sequence. The sequence should now be 2, 4, 1 and 3.

5. Repeat until a win.

    Repeat the steps until the sequence is cleared and the goal number is won.

### Reverse Labouchere

The Reverse Labouchere betting system is based on the idea of turning the tables on the original Labouchere system, which is a negative progression strategy. This means that in the traditional Labouchere, bets increase after losses and decrease after wins. However, in the Reverse Labouchere, bets increase after winning, allowing for substantial gains during winning streaks in both European roulette and American roulette games.
