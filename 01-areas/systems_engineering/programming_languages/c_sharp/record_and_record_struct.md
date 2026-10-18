---
type: concept
status: draft
---

# `record` and `record struct`

`record` and `record struct` are type declarations designed for "data-shaped" types. The main features are value-like equality and concise syntax for creating and copying values.

## `record`

It declares a [[01-areas/systems_engineering/programming_languages/c_sharp/value_types_vs_reference_types#Reference types|reference type]] (like `class`), but with value-like equality by default. Two records are considered equal when their contents (their components) are equal, not when they are the same instance.

```cs
public record Person(string Name, int Age);

var a = new Person("ana", 20);
var b = new Person("ana", 20);

bool same = (a == b); // true
```

Records are often used in an "immutability-ish" style: init-only properties and primary constructors encourage creating values once and using non-mutating updates.

```cs
public record Person(string Name, int Age);

var p1 = new Person("ana", 20);

var p2 = p1 with { Age = 21 }; // copy with one change
```

This `with` expression creates a new record instance with selected properties changed, leaving the original unchanged.

## `record struct`

It declares a [[01-areas/systems_engineering/programming_languages/c_sharp/value_types_vs_reference_types#Value types|value type]] (like `struct`) with record-style features. It is copied by value by default, and it still provides value-like equality based on contents.

```cs
public record struct Point(int X, int Y);

var p1 = new Point(1, 2);
var p2 = new Point(1, 2);

bool same = (p1 == p2); // true
```

Because it is a `struct`, it is stored inline (value-type behavior) and copying happens on assignment and method calls unless `ref`/`in` is used.
