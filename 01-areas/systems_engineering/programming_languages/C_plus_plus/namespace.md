---
reviewed_on: "2025-01-12"
sources:
    - author: NA
      url: https://www.geeksforgeeks.org/namespace-in-c
      language: English
---

# `namespace`

It defines a scope, or context, in which identifiers are declared and defined.

## Why use it?

A namespace is designed to overcome the name collision error and is used as additional information to differentiate functions, classes, similar variables, etc.

> For example, different libraries that use the same names.

## Declaring a namespace

A namespace definition begins with the `namespace` keyword followed by the namespace name as follows:

```cpp
namespace  namespace_name {
    // Code declarations
}
```

> Namespaces can be nested.

## `using`

This directive tells the compiler that the subsequent code is making use of names in the specified namespace.

```cpp
using namespace <namespace>;

// Following code
```

## Usage example

```cpp
#include <iostream>
#include <string>

namespace first_namespace {
    void func() {
        std::cout << "Inside first_namespace" << std::endl;
    }

    namespace second_space {
        void func() {
            std::cout << "Inside second_namespace" << std::endl;
        }
    }

    void cout(std::string text) {
        std::cout << text << std::endl;
    }
}

using namespace first_namespace::second_space;
int main () {
    func();
    first_namespace::cout("text");

    return 0;
}
```
