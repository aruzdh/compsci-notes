#import "../lib.typ":*
#show: codly-init.with()

= 01 de Septiembre de 2025

== Quick Sort

=== Algoritmo

//TODO: recursivo

==== Recursivo

===== Usando memoria adicional:

```python
def qsort (A):
  if len(A) < 2:
    return A
  else:
    p = A[-1]
    l = [x for x in A[:-1] if x < p]
    r = [x for x in A[:-1] if x >= p]
    l = qsort(l)
    r = qsort(r)
    return l + [p] + r
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
