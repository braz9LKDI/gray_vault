# Discrete math exercise

Determine usando inferencia si la conclusión de la siguiente fórmula proposicional es válida:

> Restricción: para este ejercicio no puede hacer uso de las reglas de adición, ni silogismo disyuntivo y solo puede usar una vez la regla de resolución.

$$
[(p \implies q) \pand (p \implies (q \implies r)) \pand (q \implies (r \implies s))] \implies (p \implies s)
$$

## Negación de la fórmula

La validez se demuestra por contradicción, negando la fórmula original.

$$
\neg \left( [(p \implies q) \pand (p \implies (q \implies r)) \pand (q \implies (r \implies s))] \implies (p \implies s) \right)
$$

Se aplica la negación al condicional.

$$
[(p \implies q) \pand (p \implies (q \implies r)) \pand (q \implies (r \implies s))] \pand \neg(p \implies s)
$$

## Simplificación de la negación del condicional

$$
\neg(p \implies s) \equiv p \pand \neg s
$$

La fórmula resultante es

$$
[(p \implies q) \pand (p \implies (q \implies r)) \pand (q \implies (r \implies s))] \pand p \pand \neg s
$$

## Descomponiendo los condicionales

Se usan las equivalencias de los condicionales:

- $p \implies q \equiv \neg p \por q$.

- $p \implies (q \implies r) \equiv \neg p \por (\neg q \por r) \equiv \neg p \por \neg q \por r$.

- $q \implies (r \implies s) \equiv \neg q \por (\neg r \por s) \equiv \neg q \por \neg r \por s$.

La fórmula se transforma en

$$
(\neg p \por q) \pand (\neg p \por \neg q \por r) \pand (\neg q \por \neg r \por s) \pand p \pand \neg s
$$

## Listar las cláusulas y aplicar resolución

Las cláusulas obtenidas son:

1. $\neg p \por q$.

2. $\neg p \por \neg q \por r$.

3. $\neg q \por \neg r \por s$.

4. $p$.

5. $\neg s$.

6. $\neg q \por \neg r$: resolvente $(3,5)$.

7. $\neg p \por \neg q$: resolvente $(2,6)$.

8. $\neg q$: resolvente $(4,7)$.

9. $\neg p$: resolvente $(1,8)$.

10. $\blacksquare$: resolvente $(4,9)$.

Es insatisfactible, por lo tanto, la fórmula original es válida.

> Esta derivación no cumple la restricción, porque usa la regla de resolución cinco veces.

## Derivación con la restricción

Se parte de las premisas y se llega a la conclusión $p \implies s$, usando la regla de resolución una sola vez.

1. $p \implies q$: premisa.

2. $q \implies (r \implies s)$: premisa.

3. $p \implies (r \implies s)$: silogismo hipotético $(1,2)$.

4. $\neg p \por \neg r \por s$: definición condicional $(3)$.

5. $p \implies (q \implies r)$: premisa.

6. $\neg p \por \neg q \por r$: definición condicional $(5)$.

7. $\neg p \por \neg q \por s$: resolvente $(4,6)$.

8. $\neg q \por (\neg p \por s)$: conmutativa y asociativa $(7)$.

9. $q \implies (\neg p \por s)$: definición condicional $(8)$.

10. $p \implies (\neg p \por s)$: silogismo hipotético $(1,9)$.

11. $\neg p \por \neg p \por s$: definición condicional $(10)$.

12. $\neg p \por s$: idempotencia $(11)$.

13. $p \implies s$: definición condicional $(12)$.
