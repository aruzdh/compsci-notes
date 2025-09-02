#import "../lib.typ":*
#show: codly-init.with()

= 29 de Agosto de 2025

== Merge Sort

Algoritmo recursivo usado memoria adicional

```python
def merge(A, B):
    res = []
    a_ptr, b_ptr = 0, 0
    while a_ptr < len(A) and b_ptr < len(B):
        if A[a_ptr] <= B[b_ptr]:
            res.append(A[a_ptr])
            a_ptr += 1
        else:
            res.append(B[b_ptr])
            b_ptr += 1

    while a_ptr < len(A):
        res.append(A[a_ptr])
        a_ptr += 1

    while b_ptr < len(B):
        res.append(B[b_ptr])
        b_ptr += 1
    return res

def msort(A):
    if len(A) <= 1:
        return A
    n = len(A) // 2
    left = msort(A[:n])
    right = msort(A[n:])
    return merge(left, right)
```
