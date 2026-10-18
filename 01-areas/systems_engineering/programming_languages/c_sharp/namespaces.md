---
reviewed_on: 2026-03-01
---

# Namespaces

It is a logical container used to group types and avoid naming collisions. A namespace name becomes part of a type's fully qualified name.

Two common namespace declaration styles exist.

- Block-scoped namespace.

- File-scoped namespace.

```cs
// block-scoped
namespace MyApp.Data
{
    public class UserRepository { }
}

// file-scoped
namespace MyApp.Data;

public class UserRepository { }
```

Types are resolved by name lookup rules. When ambiguities occur, a fully qualified name can be used to select a specific type.

```cs
var t = new System.Text.StringBuilder();
```

When a conflict exists with a local namespace or type name, the `global::` qualifier can be used to force resolution from the global namespace.

```cs
var t = new global::System.Text.StringBuilder();
```

## `using` directives

It imports a namespace (or a type) into the current scope so that types can be referenced without fully qualifying them. `using` directives are typically placed at the top of a file and they affect name resolution for the file (or for the containing scope, when used inside a namespace block).

```cs
using System;
using System.Collections.Generic;

namespace MyApp;

public class Demo
{
    public List<int> Values = new();
}
```

A few important variants exist.

- Type aliasing, used to disambiguate or shorten names.

- Static import, used to reference static members without a type qualifier.

```cs
using Text = System.Text;
using static System.Math;

namespace MyApp;


public class Demo
{
    public Text.StringBuilder sb = new();

    public double r = Sqrt(9);
}
```

It is useful to distinguish `using` directives from the `using` statement, which controls resource disposal.

```cs
using var stream = System.IO.File.OpenRead("data.bin");
// stream is disposed at end of scope
```

## `global using` directive

It applies to the entire compilation unit (the whole project) rather than a single file. It is commonly used for namespaces that appear across many files.

```cs
global using System;
global using System.Collections.Generic;

namespace MyApp;

public class Demo
{
    public List<int> Values = new();
}
```

In many modern .NET templates, global usings are generated automatically when implicit usings are enabled in the project file. When enabled, the build may generate a file under `obj/` (often named similarly to `GlobalUsings.g.cs`) that contains `global using` directives. These generated directives can be supplemented with explicit `global using` directives in source, or disabled by turning off implicit usings.

```xml
<PropertyGroup>
    <ImplicitUsings>disable</ImplicitUsings>
</PropertyGroup>
```
