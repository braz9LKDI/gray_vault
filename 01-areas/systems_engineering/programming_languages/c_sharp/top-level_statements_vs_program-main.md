---
type: concept
status: draft
---

# Top-level statements vs `Program.Main`

In modern C#, executable code can be written directly in a file without explicitly declaring a `Program` class and a `Main` method. This is called top-level statements. The compiler still generates a `Main` method behind the scenes.

## How they compile

Both approaches produce an entry point. With top-level statements, the compiler generates something equivalent to a `Program` class and a `Main` method and moves the top-level code into it. Practically, this means:

- A `string[] args`-style argument list is available (as `args`) if needed.

- `return` can still be used to return an exit code in appropriate forms, similar to returning an `int` from `Main`.

- Async works: `await` can be used at the top level and the compiler uses an async-capable entry point shape.
