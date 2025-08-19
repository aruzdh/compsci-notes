#import "../lib.typ":*
#show: codly-init.with()


= 15 de Agosto de 2025

$T(A) in O(n)$
$arrow.double.long$
$T(A) in O(n log n)$
$dots.v$
$T(A) in O(n^2)$



```python
def minRec(A):
  if len(A) == 1:
    return A[0]
  else:
    B = A[:-1] # O(n) | O(1)
    c = A[-1]
    minB = minRec(B)
    if c < minB:
      return c
    else:
      return minB
```

Bajo $O(1) arrow.long O(n)$
Bajo $O(n) arrow.long O(n^2)$

== Árbol de Recursión

//TODO: 
Árbol de recursión de _minRec_ con entrada  $A = [1,2,3,4]$


//TODO: para una lista n


