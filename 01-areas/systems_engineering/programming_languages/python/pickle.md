---
type: concept
status: draft
sources:
    - author: Davide Mastromatteo
      url: https://realpython.com/python-pickle-module
      language: English
---

# Pickle

The pickle module implements binary protocols for serializing and deserializing a Python object structure. "Pickling" is the process by which a Python object hierarchy is converted into a byte stream, and "unpickling" is the inverse operation, by which a byte stream is converted back into an object hierarchy.

> It is possible to construct malicious pickle data which will execute arbitrary code during unpickling.

The Python pickle module provides four main functions:

1. `pickle.dump(obj, file, protocol=None, *, fix_imports=True, buffer_callback=None)`.

2. `pickle.dumps(obj, protocol=None, *, fix_imports=True, buffer_callback=None)`.

3. `pickle.load(file, *, fix_imports=True, encoding="ASCII", errors="strict", buffers=None)`.

4. `pickle.loads(bytes_object, *, fix_imports=True, encoding="ASCII", errors="strict", buffers=None)`.

## Example

```python
import pickle

letters = ["l", "i", "s", "t"]

with open("file", "wb") as file:
    pickle.dump(letters, file)

with open("file", "rb") as file:
    letters = pickle.load(file)

print(letters)
```
