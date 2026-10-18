# Content issues

Content errors found during the style review. A fixed issue gets its box checked.

## Git

- [x] [[01-areas/systems_engineering/fundamentals/git_and_github/delete_commit_history|Delete commit history]]: `git branch -d main` refuses to delete `main`, because it is not merged into the orphan branch.

- [x] [[01-areas/systems_engineering/fundamentals/git_and_github/merge_and_rebase|Merge and rebase]]: the "after merge" diagram shows a fast-forward without a merge commit, which contradicts the section and the comparison.

- [x] [[01-areas/systems_engineering/fundamentals/git_and_github/stash_changes|Stash changes]]: `git stash save` is deprecated; `git help stash` names the replacement.

- [x] [[01-areas/systems_engineering/fundamentals/git_and_github/remove_from_index_keep_workspace|Remove from index keeping workspace]]: the shell expands the wildcard `*`, which skips dotfiles and does not recurse like a Git pathspec. Also, "discard" is the wrong verb for untracking.

## Agile

- [x] [[01-areas/systems_engineering/fundamentals/agile/behavior_driven_development/gherkin|Gherkin]]: the keyword list lacks `Given`, `When` and `Then`.

- [x] [[01-areas/systems_engineering/fundamentals/agile/test_driven_development/tdd_loop|TDD loop]]: the diagram has no refactor step after the test passes (red, green, refactor).

- [x] [[01-areas/systems_engineering/fundamentals/agile/test_driven_development/what_kind_of_testing_is_it|What kind of testing is it?]]: the link to the note on the Python `unittest` module stands in for the general concept of a unit test.

## Math

- [x] [[01-areas/math/008-matrix_multiplication|Matrix multiplication]]: the letters are swapped. $B$ is written with entries $c_{ ij }$ and $m \times n$ indices, and $C$ with entries $b_{ ij }$.

- [x] [[01-areas/math/LaTeX_cheatsheet|LaTeX cheatsheet]]: `\bigcap` is intersection and `\bigcup` is union, the reverse of the table; `\neq` means "not equal", not logical negation (`\neg`).

- [x] [[01-areas/math/error_and_uncertainty|Error and uncertainty]]: the power rule writes $^\sigma f(x)$ where $\sigma_{ f(x) }$ is meant.

- [x] [[01-areas/math/finite_differences|Finite differences]]: the forward and backward approximations keep the limit, which an approximation drops. The cubic Taylor terms divide by 3 instead of $3!$.

- [x] [[01-areas/math/fundamental_rules_of_propositional_logic|Fundamental rules of propositional logic]]: the second identity law reads $p \lor T \equiv p$; the identity for disjunction uses $F$.

- [x] [[01-areas/math/functions/odd|Odd]]: the properties start from even functions, and the product of two odd functions is even, not odd.

- [x] [[01-areas/math/imaginary_number/conjugate|Conjugate]]: the expansion writes $- b i^2$ where $- b^2 i^2$ is meant.

- [x] [[01-areas/math/number_theory/euclidean_algorithm|Euclidean algorithm]]: working backward expresses $r_n$ in terms of $a$ and $b$; $q_0$ does not exist in the sequence.

- [x] [[01-areas/math/number_theory/small_prime_divisor_theorem|Small prime divisor theorem]]: the proof claims one of $a$ or $b$ must be prime, which fails for $36 = 6 \cdot 6$; the step needs a prime factor of the smaller divisor.

- [x] [[01-areas/math/relations/relations|Relations]]: the first paragraph says every element of $A$ is related through a unique relation, which describes a function, not a relation.

- [x] [[01-areas/math/relations/relation_properties|Relations properties]]: the first antisymmetric formula is the asymmetric property, and the partial order formula uses it too.

- [x] [[01-areas/math/sequences/types|Sequence types]]: the arithmetic general term is $a_1 + (n - 1) d$, not $a_1 + n (d - 1)$.

- [x] [[01-areas/math/series/proofs|Series proofs]]: the second row of the arithmetic series proof should run $n + (n - 1) + \dots + 1$; the last four headings have no proof and the harmonic one ends at "$\ln n +$".

## AI, data and diagrams

- [x] [[01-areas/systems_engineering/AI/machine_learning/algorithms/supervised_learning/decision_trees|Decision trees]]: the maximum entropy line computes $-0.5 \log_2 0.5 - (-0.5 \log_2 0.5)$, which is 0; both terms should be subtracted.

- [x] [[01-areas/systems_engineering/diagrams/entity_relationship_diagram_mermaid|Entity relationship diagram with Mermaid]]: the cardinality list does not match Mermaid's markers (`||`, `|o`, `}|`, `}o`). The example also declares `LINE-ITEM` in a relationship but defines `LINE_ITEM`, which creates two entities.

## Algorithms

- [x] [[01-areas/systems_engineering/fundamentals/algorithms/dijkstra|dijkstra]]: the requirement is non-negative edge weights, not non-zero ones; zero weights are fine and negative ones break the algorithm.

- [x] [[01-areas/systems_engineering/fundamentals/algorithms/sorting/counting_sort|Counting sort]]: step 3 and the code call the values "relative frequencies", but the loop computes cumulative counts.

- [x] [[01-areas/systems_engineering/fundamentals/algorithms/sorting/quick_sort|Quick sort]]: the note says the implementation uses the first element as pivot, but the active code uses the last one (the first-element version is commented out).

## C++ and Python

- [x] [[01-areas/systems_engineering/programming_languages/C_plus_plus/pointer|Pointer]]: the void pointer example declares `void main()`, which is not valid C++; `main` returns `int`.

- [x] [[01-areas/systems_engineering/programming_languages/Python/Pickle|Pickle]]: the example calls `pickle.dump(file, list)` with the arguments reversed and never imports `pickle`.

- [x] [[01-areas/systems_engineering/programming_languages/Python/decorator|Decorator]]: the equivalent form assigns to `my_function_decorator`; the decorator syntax rebinds `my_function` itself.

- [x] [[01-areas/systems_engineering/programming_languages/Python/doctest|Doctest]]: the expected outputs (`"Zero"`, `"Positive"`) do not match what the function returns (`'zero'`, `'positive'`), so every test fails.

- [x] [[01-areas/systems_engineering/programming_languages/Python/map|Map]]: the example prints `[5, 7, 9]`, not `[5, 4, 9]`.

- [x] [[01-areas/systems_engineering/programming_languages/Python/lambda|Lambda]]: the `do_exclaim` comment drops the `!` the function adds.

## Courses

- [x] [[02-resources/courses/aprende_git_y_github|Aprende Git y GitHub]]: VS Code marks modified files with `M`; `U` means untracked. `HEAD~1` is the parent of the last commit, not the last commit. The `-m` in `git branch -m` stands for move, not modify.

- [x] [[02-resources/courses/introduccion_al_Hacking/01-conceptos_basicos|Conceptos básicos]]: the subnetting exercises give the total addresses as hosts per subnet ($2^{19}$ instead of $2^{19} - 2$, and 8 instead of 6 for the `/29`). The last host of `192.168.1.45/29` is `.46`, because `.47` is the broadcast address.

- [x] [[02-resources/courses/introduccion_a_Linux/03-examen_final|Examen final]]: question 31 maps octal 432 to `drw--wx-w-`; 4 is `r--`, so the answer is `dr---wx-w-`.

- [x] [[02-resources/courses/introduccion_a_Linux/01-temario|Temario]]: level 17 connects with the RSA key as `bandit17`, not `bandit16`. "SSH is an access credential used in the SSH protocol" mixes up the key and the protocol.
