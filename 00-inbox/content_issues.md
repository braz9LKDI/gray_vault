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

- [x] [[01-areas/math/latex_cheatsheet|LaTeX cheatsheet]]: `\bigcap` is intersection and `\bigcup` is union, the reverse of the table; `\neq` means "not equal", not logical negation (`\neg`).

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

- [x] [[01-areas/systems_engineering/ai/machine_learning/algorithms/supervised_learning/decision_trees|Decision trees]]: the maximum entropy line computes $-0.5 \log_2 0.5 - (-0.5 \log_2 0.5)$, which is 0; both terms should be subtracted.

- [x] [[01-areas/systems_engineering/diagrams/entity_relationship_diagram_mermaid|Entity relationship diagram with Mermaid]]: the cardinality list does not match Mermaid's markers (`||`, `|o`, `}|`, `}o`). The example also declares `LINE-ITEM` in a relationship but defines `LINE_ITEM`, which creates two entities.

## Algorithms

- [x] [[01-areas/systems_engineering/fundamentals/algorithms/dijkstra|dijkstra]]: the requirement is non-negative edge weights, not non-zero ones; zero weights are fine and negative ones break the algorithm.

- [x] [[01-areas/systems_engineering/fundamentals/algorithms/sorting/counting_sort|Counting sort]]: step 3 and the code call the values "relative frequencies", but the loop computes cumulative counts.

- [x] [[01-areas/systems_engineering/fundamentals/algorithms/sorting/quick_sort|Quick sort]]: the note says the implementation uses the first element as pivot, but the active code uses the last one (the first-element version is commented out).

## C++ and Python

- [x] [[01-areas/systems_engineering/programming_languages/c_plus_plus/pointer|Pointer]]: the void pointer example declares `void main()`, which is not valid C++; `main` returns `int`.

- [x] [[01-areas/systems_engineering/programming_languages/python/pickle|Pickle]]: the example calls `pickle.dump(file, list)` with the arguments reversed and never imports `pickle`.

- [x] [[01-areas/systems_engineering/programming_languages/python/decorator|Decorator]]: the equivalent form assigns to `my_function_decorator`; the decorator syntax rebinds `my_function` itself.

- [x] [[01-areas/systems_engineering/programming_languages/python/doctest|Doctest]]: the expected outputs (`"Zero"`, `"Positive"`) do not match what the function returns (`'zero'`, `'positive'`), so every test fails.

- [x] [[01-areas/systems_engineering/programming_languages/python/map|Map]]: the example prints `[5, 7, 9]`, not `[5, 4, 9]`.

- [x] [[01-areas/systems_engineering/programming_languages/python/lambda|Lambda]]: the `do_exclaim` comment drops the `!` the function adds.

## Courses

- [x] [[02-resources/courses/aprende_git_y_github|Aprende Git y GitHub]]: VS Code marks modified files with `M`; `U` means untracked. `HEAD~1` is the parent of the last commit, not the last commit. The `-m` in `git branch -m` stands for move, not modify.

- [x] [[02-resources/courses/introduccion_al_hacking/01-conceptos_basicos|Conceptos básicos]]: the subnetting exercises give the total addresses as hosts per subnet ($2^{19}$ instead of $2^{19} - 2$, and 8 instead of 6 for the `/29`). The last host of `192.168.1.45/29` is `.46`, because `.47` is the broadcast address.

- [x] [[02-resources/courses/introduccion_a_linux/03-examen_final|Examen final]]: question 31 maps octal 432 to `drw--wx-w-`; 4 is `r--`, so the answer is `dr---wx-w-`.

- [x] [[02-resources/courses/introduccion_a_linux/01-temario|Temario]]: level 17 connects with the RSA key as `bandit17`, not `bandit16`. "SSH is an access credential used in the SSH protocol" mixes up the key and the protocol.

## Archive

Reasoning errors found in the archive review. Slips with an evident fix (signs, copied values, brackets, typos) were fixed directly.

- [ ] [[99-archive/college/semesters/01/calculo_i/01-real_numbers|Real numbers]]: in 4.2, $x = 3$ is an extraneous root, so the only solution is $x = 6$. In 5.4, the cases give $(3,\infty) \cup (-\infty,-3) \cup \left [-3,\frac{ 1 }{ 3 } \right )$, so the solution is $\mathbb{ R } - \left [\frac{ 1 }{ 3 },3 \right ]$; the union lists $[-3,1)$ instead of $(-\infty,-3)$. In exercise 6, the statement says the area drops by 40 square meters, but the solution uses 46 and 43; with 40, the sides are 23.5 and 5.5.

- [ ] [[99-archive/college/semesters/01/calculo_i/02-functions|Functions]]: in exercise 2, both functions are named $f$; the second one is $g$. In 2.2, the difference quotient of the square root is not simplified. In exercise 4, $f$ is called increasing, but its maximum is at $x = 3$. In exercise 6, $R_f$ is $(-3,0] \cup \left (\frac{ 1 }{ 3 },\infty \right )$, not $(-3,\infty)$. In 6.6, $f(-2 a) = 4 a^2 - 4$, not $4 a - 4$. In exercise 8, the physical domain is $(0,6)$, without $(10,\infty)$. In exercise 9, $h = 2 \sqrt{ 3 } r$, so $V = 2 \sqrt{ 3 } \pi r^3$, not $4 \pi r^2 \sqrt{ 3 r^2 }$.

- [ ] [[99-archive/college/semesters/01/calculo_i/03-functions|Functions]]: the proof in exercise 3 does not show uniqueness. In 4.3, the domain of $f \circ g$ excludes $x = \frac{ 2 }{ 3 }$, not $\sqrt{ \frac{ 1 }{ 3 } }$; the bracket at $\infty$ is open. In 4.4, the domain of $g^{ -1 }$ is $x \geq 0$, not $\mathbb{ R }$. Exercise 8 checks $f \circ g$ but not $g \circ f$. Exercise 10 still has "TODO: redo the image.".

- [ ] [[99-archive/college/semesters/01/calculo_i/04-linear_and_quadratic_function|Linear and quadratic function]]: 7.1 asks for the domain of the area function, $(0,3)$, but does not give it.

- [ ] [[99-archive/college/semesters/01/calculo_i/06-exponential_and_logarithmic_function|Exponential and logarithmic function]]: exercise 2 asks for the domain and range of $f$ and $g$ ($\mathbb{ R }$ and $(0,\infty)$) but does not give them. In 9.1, only the domain is found; $\plog{ x } + \plog{ 5 } = \plog{ 5 x }$, so the equality holds only at $x = \frac{ 5 }{ 4 }$. In 9.3, $(\plog{ x })^3$ is treated as $\plog{ x^3 }$; with $w = \plog{ x }$ the equation factors as $(w + 1) (w^2 - 4) = 0$, so $x = \frac{ 1 }{ 10 }$, $x = 100$ or $x = \frac{ 1 }{ 100 }$.

- [ ] [[99-archive/college/semesters/01/calculo_i/07-trigonometric_functions|Trigonometric functions]]: 2.1 stops at $\pcos{ \frac{ 3 \pi }{ 4 } }$ without its value, $-\frac{ \sqrt{ 2 } }{ 2 }$. Exercise 3 asks for the six functions but finds only sine and cosine. It still has "TODO: create a standard angle link.". 5.3 finds $b$ but not $\alpha$ and $\gamma$. In 9.1 and 9.6, the cases are guessed instead of derived. Case 2 of 9.1 is wrong, because $\psin{ \theta } = 0$ and $\pcos{ \theta } = 1$ give $-1$; the second family is $\theta = \pi + 2 \pi k$. In 9.2, $\psin{ x } = \frac{ 2 }{ 3 }$ gives $x = \parcsin{ \frac{ 2 }{ 3 } } + 2 \pi k$ and $x = \pi - \parcsin{ \frac{ 2 }{ 3 } } + 2 \pi k$. In 9.3, $\psin{ x } (\psin{ x } + 2) = 0$ gives $x = \pi k$, not $2 \pi k$. 9.4 stops at $\parcsin{ -\frac{ 1 }{ 2 } } = -\frac{ \pi }{ 6 }$, which is outside $[0,2 \pi]$; the solutions are $\frac{ 7 \pi }{ 6 }$ and $\frac{ 11 \pi }{ 6 }$. 9.8 still has a "TODO" after the image.

- [ ] [[99-archive/college/semesters/01/calculo_i/08-limits|Limits]]: in 2.7, rationalizing turns $\frac{ -3 }{ 0^+ }$ into an indeterminate $\frac{ 0 }{ 0 }$, so the step does not justify $-\infty$; the limit follows directly from the original expression. 7.3 and 7.4 find only the $x$ coordinates; the points are $\left (\pm \frac{ 1 }{ \sqrt{ 3 } },5 \mp \frac{ 2 }{ 3 \sqrt{ 3 } } \right )$ and $(\pm \sqrt{ 2 },5 \pm \sqrt{ 2 })$.

- [ ] [[99-archive/college/semesters/01/calculo_i/09-limits_and_continuity|Limits and continuity]]: in 1.5, $\frac{ x (2 \psin{ x } \pcos{ x }) }{ \psin{ x^2 } }$ becomes $\frac{ 2 x \pcos{ x } }{ \psin{ x } }$, which treats $\psin{ x^2 }$ as $\psin{ x }^2$; the limit is 2 because $\frac{ \psin{ 2 x } }{ 2 x } \to 1$ and $\frac{ x^2 }{ \psin{ x^2 } } \to 1$. In 2.1, $x = -1$ is also a vertical asymptote. In 4.1, $-x^3 \leq x^3 \pcos{ \frac{ 1 }{ x } } \leq x^3$ holds only for $x > 0$; the bounds are $\pm \abs{ x }^3$.

- [ ] [[99-archive/college/semesters/01/calculo_i/13-applications_of_the_derivative|Applications of the derivative]]: exercise 7 asks for a sketch that is missing. Exercise 8 never computes the height $y = 20$, so the dimensions ($10 \times 10 \times 20$) are not stated.

- [ ] [[99-archive/college/semesters/01/fundamentos_de_programacion/02-generative_recursion_and_accumulative_functions|Generative recursion and accumulative functions]]: both versions of `product_list` return 0 for an empty list, but the empty product is 1, the identity that the `reduce` example in [[99-archive/college/semesters/01/fundamentos_de_programacion/01-abstraction|Abstraction]] uses.

- [ ] [[99-archive/college/semesters/07/inteligencia_artificial/02-fundamentals_of_artificial_intelligence|Fundamentals of artificial intelligence]]: the Turing test section lists two capabilities; the usual list (Russell and Norvig) has four, adding automated reasoning and machine learning.

- [ ] [[99-archive/college/semesters/07/inteligencia_artificial/08-decision_trees|Decision trees]]: the note is empty.

- [ ] [[99-archive/college/semesters/index|College index]]: the 10th semester has no table, although its notes are in the archive.

- [ ] [[99-archive/college/semesters/08/impactos_ambientales/classes/02-environmental_issues_and_sustainable_development|Environmental issues and sustainable development]]: the climate change section puts the average temperature of the Earth at about 35 degrees Celsius; it is about 15 degrees Celsius, roughly 33 degrees warmer than it would be without greenhouse gases. The section on soil contamination and loss only describes the loss of tropical forest to fires.

- [ ] [[99-archive/college/semesters/08/impactos_ambientales/classes/03-regulations_and_environmental_impact_study|Regulations and environmental impact study]]: the note has only its title.

- [ ] [[99-archive/college/semesters/08/introduccion_a_la_ciencia_de_datos/08-data_mining-clustering|Data mining: clustering]]: hierarchical clustering is said to have two approaches, but only the agglomerative one is described; the divisive one is missing.

- [ ] [[99-archive/college/semesters/08/simulacion_y_computacion_numerica/02-second_exam|Second exam]]: 1.3, 1.4 and exercises 2 to 4 have only their statements.

- [ ] [[99-archive/college/semesters/08/simulacion_y_computacion_numerica/classes/08-conjugate_gradient|Conjugate gradient]]: in the iteration, the new direction is $p_i = r_i + \beta_i p_{ i - 1 }$ with $\beta_i = -\frac{ { p_{ i - 1 } }^T A r_i }{ { p_{ i - 1 } }^T A p_{ i - 1 } }$; the note uses $r_{ i - 1 }$ in both formulas and drops the minus sign.

- [ ] [[99-archive/college/semesters/08/simulacion_y_computacion_numerica/classes/12-splines|Splines]]: the degree zero spline is given $2 k$ interpolation equations, but each piece is a single constant, so only the $k$ conditions $S_i(t_i) = y_i$ can hold.

- [ ] [[99-archive/college/semesters/08/simulacion_y_computacion_numerica/homework/01-differential_equations|Differential equations]]: exercise 3 reverses the reaction (a breeder reactor turns uranium 238 into plutonium 239), the usual data is 0.043 percent instead of 0.0043, and the half-life is never evaluated; with 0.043 percent it is about 24,180 years. Exercise 4 only starts the third equation, and exercises 6 (geometric interpretation and solutions), 7 and 8 have no solution.

- [ ] [[99-archive/college/semesters/08/simulacion_y_computacion_numerica/homework/02-error|Error]]: in 4.1, the three-digit results have four digits (1.133); with three digits the result is 1.13 and the relative error $2.94 * 10^{ -3 }$. In 4.3, the rounding error is about $6.8 * 10^{ -5 }$, not $6.73 * 10^{ -4 }$. Exercise 6 does not apply the three-digit rounding, so the comparison between the two formulas, which is the point of the exercise, is missing.

- [ ] [[99-archive/college/semesters/08/simulacion_y_computacion_numerica/homework/03-taylor_series|Taylor series]]: the error bound in exercise 4 evaluates $f^4$ at 0, which gives 0 and contradicts the real error of $1.337 * 10^{ -2 }$; the bound uses the maximum of $\abs{ f^4 }$ on $[0,0.4]$, about 54.8, so $\abs{ R_3(0.4) } \leq 0.058$. Exercise 6 is unfinished (its last line ends in "!!!!"), exercise 8 does not find the number of terms and exercise 10 stops before the optimal price.

- [ ] [[99-archive/college/semesters/08/simulacion_y_computacion_numerica/homework/04-iterative_methods-linear_equation_systems|Iterative methods for solving linear equation systems]]: exercise 3 shows two iterations with relaxation before jumping to the solution; the system is never solved without relaxation. Exercises 4 and 5 and the computer problems have no solution.

- [ ] [[99-archive/college/semesters/08/simulacion_y_computacion_numerica/homework/05-regression_interpolation_and_natural_spline|Regression, interpolation and natural spline]]: an interpolating polynomial passes through every data point, so the Newton results must be exactly 8, 5.2 and 4.6; the errors of 8.068, 5.1 and 4.848 come from rounding the coefficients. In 1.2, a difference of 0.068 is 0.85 percent, not 0.0085 percent. Exercise 9 sets up the $28 \times 28$ system but does not solve it.

- [ ] [[99-archive/college/semesters/09/analisis_y_diseño_de_algoritmos_ii/homework/03-minimizing_the_extremism_present_in_a_population|Minimizing the extremism present in a population]]: the note has only the problem statement, and it uses a set of movements $s$ that is never defined.

- [ ] [[99-archive/college/semesters/09/introduccion_a_la_gestion_de_proyectos_de_software/classes/07-risk_management|Risk management]]: the risk responses leave out acceptance, which the PMI lists for both negative and positive risks (along with escalation).

- [ ] [[99-archive/college/semesters/09/proyecto_integrador_ii/homework/03-play_ht|Play HT]]: the note covers the history of speech technology but never describes Play HT itself.

- [ ] [[99-archive/college/ases/grosman/01-regular_expression|Regular expression]]: the expression accepts strings that break the rule, such as 01100 (from $(0^+1)(10^+)$) and 111001. A correct one is $(0 \cup 10)^* (\varepsilon \cup 1 \cup 11 (1 \cup 01)^* (\varepsilon \cup 0))$: the part before the first 11 has no 11, and the part after it has no 00.

- [ ] [[99-archive/college/ases/grosman/03-entity-relationship_problems|Entity-relationship problems]]: in the second JAPE-SHOES exercise, the text says each address belongs to a single employee ($1:1$) while the diagram is $1:N$. In the third one, the text allows zero or one return per transaction while the diagram allows many. From the second one on, the store-product relation changes from $M:N$ to $1:N$ without explanation.

- [ ] [[99-archive/college/ases/grosman/general_questions|General questions]]: the 32-bit section computes the largest unsigned value, $2^{ 32 } - 1$; the memory that 32-bit addresses reach is $2^{ 32 }$ bytes (4 GiB).

- [ ] [[99-archive/college/ases/hector/matematicas_discretas_i/01-predicate_logic_exercises|Predicate logic exercises]]: in 2.4, the second premise uses $Q$ where it needs $C$: $(\lnot C \implies \lnot O) \pand (\lnot Q \implies M)$. Step 9 derives $M$ where clauses 6 and 7 give $\lnot M$. With the corrected clauses the refutation is: 8. $O$ (5,7), 9. $\lnot M$ (6,7), 10. $C$ (2,8), 11. $Q$ (3,9), 12. $\lnot C \por \lnot Q$ (1,4), 13. $\lnot Q$ (10,12), 14. $\blacksquare$ (11,13). Exercises 1, 2.1 to 2.3, 3 and 4 have no answer.

- [ ] [[99-archive/college/ases/jairo/01-physics_problem|Physics problem]]: item 3 (total distance) has no answer; it is 90 meters (30 in each interval). The two graphs still have a "TODO" next to them.

- [ ] [[99-archive/college/ases/manuela/01-discrete_math_exercise|Discrete math exercise]]: the first derivation applies resolution five times, although the restriction allows it once. The second derivation respects the restriction but gives no justification for its steps.

- [ ] [[99-archive/college/ases/sara/matematicas_basicas/02-review_midterm|Review midterm]]: exercise 1 only considers the cases where the numerator and the denominator have the same sign. For $\frac{ 1 }{ 3 } \leq x < 2$ the fraction is not positive and the inequality holds when $x < 1$, so the solution is $(-3,1)$.
