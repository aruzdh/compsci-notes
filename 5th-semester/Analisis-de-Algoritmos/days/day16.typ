#import "../lib.typ":*
#show: codly-init.with()

= 01 de Septiembre de 2025

== Quick Sort

=== Algoritmo

==== Recursivo

===== Usando memoria adicional:

```python
def qsort(A):
    if len(A) < 2:
        return A
    ptr = A[-1]
    left = qsort([x for x in A[:-1] if x <= ptr])
    right = qsort([x for x in A[:-1] if x > ptr])
    return left + [ptr] + right
```

===== In place

```python
def qsort (A, b, e):
  n = e - b
  if n < 2:
    return
  p = A[e - 1]
```

==== Iterativo
