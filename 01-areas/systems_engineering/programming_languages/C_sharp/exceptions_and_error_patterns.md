---
reviewed_on: 2026-03-15
---

# Exceptions and error patterns

## `try`, `catch` and `finally`

A `try` block contains code that may fail. A `catch` block handles a matching exception. A `finally` block runs whether an exception happened or not, which makes it useful for cleanup work.

```cs
try
{
    int x = int.Parse(text);
    Console.WriteLine(x);
}
catch (FormatException)
{
    Console.WriteLine("invalid number format");
}
finally
{
    Console.WriteLine("done");
}
```

A common pattern is to catch only the exceptions that can actually be handled. If the code cannot recover or translate the error meaningfully, catching only to swallow the problem usually makes debugging harder.

Different `catch` blocks can be used for different exception types.

```cs
try
{
    var text = File.ReadAllText(path);
    Console.WriteLine(text);
}
catch (FileNotFoundException)
{
    Console.WriteLine("file was not found");
}
catch (UnauthorizedAccessException)
{
    Console.WriteLine("access denied");
}
```

A general `catch (Exception)` exists, but it should usually be reserved for boundaries such as logging, translating an error or preventing the whole application from crashing at a top level.

## Rethrowing

Sometimes an exception is caught only to add context or perform logging. When rethrowing the same exception, `throw;` preserves the original stack trace.

```cs
try
{
    SaveOrder(order);
}
catch (Exception)
{
    Console.WriteLine("save failed");
    throw;
}
```

By contrast, `throw ex;` resets the stack trace and usually loses useful debugging information.

## `finally` and cleanup

`finally` is useful when some cleanup must always happen.

```cs
FileStream? stream = null;

try
{
    stream = File.OpenRead(path);
    Console.WriteLine(stream.Length);
}
finally
{
    stream?.Dispose();
}
```

This pattern appears less often in modern code because `using` usually handles it more cleanly.

## `using` and `await using`

`using` is used with objects that implement `IDisposable`. It ensures disposal even if an exception happens, which makes it behave like structured cleanup.

```cs
using var stream = File.OpenRead(path);
using var reader = new StreamReader(stream);

string text = reader.ReadToEnd();
Console.WriteLine(text);
```

This is roughly similar to writing a `try` / `finally` where `Dispose()` is called in the `finally` block.

```cs
var stream = File.OpenRead(path);

try
{
    Console.WriteLine(stream.Length);
}
finally
{
    stream.Dispose();
}
```

`await using` is the async version for types that implement `IAsyncDisposable`. Disposal is awaited instead of happening synchronously.

```cs
await using var resource = new AsyncResource();
await resource.SaveAsync();
```

The main idea is the same: cleanup happens reliably, even when an exception is thrown.

## When to throw

Exceptions are usually appropriate when something unexpected, invalid or impossible for normal flow happens.

Examples include invalid arguments, missing required state, unsupported operations and infrastructure failures such as file or network problems.

```cs
public static int Divide(int a, int b)
{
    if (b == 0)
    {
        throw new DivideByZeroException();
    }

    return a / b;
}
```

For argument validation, exceptions such as `ArgumentNullException`, `ArgumentException` and `ArgumentOutOfRangeException` are commonly used.

```cs
public static void SetAge(int age)
{
    if (age < 0)
    {
        throw new ArgumentOutOfRangeException(nameof(age));
    }
}
```

A useful rule is this: exceptions are usually for exceptional situations, not for expected outcomes that happen often during normal logic.

For example, "user typed a wrong password" or "search returned no rows" is often better modeled as normal control flow, not as an exception.

## When not to throw

Exceptions are usually a poor fit when failure is expected and frequent.

Parsing is a classic example. If invalid input is common, a `Try...` pattern is often better than throwing repeatedly.

```cs
if (int.TryParse(text, out int value))
{
    Console.WriteLine(value);
}
else
{
    Console.WriteLine("invalid input");
}
```

This avoids using exceptions for ordinary input checking.

## Custom exceptions

A custom exception is useful when a domain-specific failure should be represented explicitly.

```cs
public class InsufficientFundsException : Exception
{
    public InsufficientFundsException()
        : base("balance is too low for this operation")
    {
    }
}
```

It can then be thrown from domain logic.

```cs
public static void Withdraw(decimal balance, decimal amount)
{
    if (amount > balance)
    {
        throw new InsufficientFundsException();
    }
}
```

Custom exceptions are most useful when the calling code needs to distinguish that specific failure from other failures.

When creating a custom exception, inheriting from `Exception` is the usual starting point. Extra constructors or additional data can be added if needed.

```cs
public class OrderValidationException : Exception
{
    public OrderValidationException(string message)
        : base(message)
    {
    }
}
```

## Choosing exception types

In many cases, using an existing framework exception is better than inventing a new one.

`ArgumentNullException`, `InvalidOperationException`, `NotSupportedException` and `TimeoutException` already communicate common meanings clearly.

A custom exception tends to make more sense when the failure belongs to the application's own domain, such as `PaymentDeclinedException` or `OrderValidationException`.

## Result-style patterns

Sometimes an operation can fail, but that failure is part of normal flow rather than an exceptional condition. In those cases, returning a result object can be clearer than throwing.

A simple result style might look like this.

```cs
public record Result(bool IsSuccess, string? Error);

public static Result ValidateName(string name)
{
    if (string.IsNullOrWhiteSpace(name))
    {
        return new Result(false, "name is required");
    }

    return new Result(true, null);
}
```

Usage then becomes explicit.

```cs
var result = ValidateName(input);

if (!result.IsSuccess)
{
    Console.WriteLine(result.Error);
}
```

This style keeps expected failures inside normal control flow.

A generic version can also carry a value.

```cs
public record Result<T>(bool IsSuccess, T? Value, string? Error);

public static Result<int> ParsePositiveInt(string text)
{
    if (!int.TryParse(text, out int value))
    {
        return new Result<int>(false, default, "not a valid integer");
    }

    if (value <= 0)
    {
        return new Result<int>(false, default, "must be positive");
    }

    return new Result<int>(true, value, null);
}
```

Usage:

```cs
var result = ParsePositiveInt(text);

if (result.IsSuccess)
{
    Console.WriteLine(result.Value);
}
else
{
    Console.WriteLine(result.Error);
}
```

## Exceptions vs result style

The difference is mostly about what kind of failure is being modeled.

- Exceptions fit unexpected or exceptional failures.

- Result values fit expected outcomes such as validation failures, missing search results or user input problems.

- Exceptions interrupt control flow automatically.

- Result values keep failure visible in the method's return type.

A useful practical split is this: domain validation and user-facing expected failures often fit result-style code, while programming errors and infrastructure failures often fit exceptions.

## Common pattern at application boundaries

A common design is to use result-style failures in domain logic and convert truly unexpected failures into exceptions, then handle those exceptions at an outer boundary such as a web endpoint, UI event handler or background worker.

This keeps the inner logic explicit while still allowing unexpected failures to be logged and handled centrally.

## Quick summary

`try`, `catch` and `finally` are the core exception-handling tools. `using` and `await using` are structured cleanup tools that are closely related to `finally`.

Exceptions are best for exceptional failures, invalid state and infrastructure problems. Custom exceptions are useful when a domain-specific failure needs its own meaning.

When failure is expected and common, a result-style pattern often leads to clearer control flow than throwing exceptions.
