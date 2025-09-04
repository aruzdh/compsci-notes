#import "../lib.typ":*
#show: codly-init.with()

= 03 de Septiembre de 2025

== Quick Sort

=== Función Auxiliar
```python
def particiona (A, b,e):
  p = A[e-1]
  i = 0
  k = 0
  for i in range(b,e-1):
    if A[i] < p:
      A[i], A[k] = A[k], A[i]
      k += 1
```

```python
def particiona (A, b,e):
  p = A[e-1]
  i = 0
  k = 0
  for i in range(b,e-1):
    if A[i] < p:
      A[i], A[k] = A[k], A[i]
      k += 1
  return k
```
=== Algoritmo

```python
def qsort (A, b,e):
  m = e - b
  if m < 2:
    return
  k = particiona(A,b,e)
  A[k], A[e-1] = A[e-1], A[k]
  qsort(A,b,k)
  qsor(A,k+1,e)
```
//TODO: change code

