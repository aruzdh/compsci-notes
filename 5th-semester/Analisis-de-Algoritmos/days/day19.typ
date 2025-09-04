#import "../lib.typ":*
#show: codly-init.with()

= 04 de Septiembre de 2025

// == Quick Sort

// algos/qs.py
// El swap entre el pivote y k se añade en "pivotea"

// ```python
// def qsort (A,b,e):
//     if e - b < 2: 
//         return
//     k = pivotea (A,b,e)
//     qsort(A,b, k)
//     qsort(A,k + 1, e)
// ```

== Quick Sort Iterativo

```phyton
def pivotea(A, b, e):
    p = A[e - 1]
    k = b
    for i in range(b, e - 1):
        if A[i] < p:
            A[i], A[k] = A[k], A[i]
            k += 1
    A[k], A[e - 1] = A[e - 1], A[k]
    return k
```

```python
def qsortIter(A):
    tasks = []
    tasks.append((0,len(A)))
    while tasks: # len(tasks) != 0
        (b,e) = tasks.pop()
        if e - b >= 2: 
            k = pivotea(A,b,e)
            tasks.append((b,k))
            tasks.append((k + 1,e))
```

//TODO: 
*Invariante:* Para todo rango, se aplicó correctamente "pivote" 

*Invariante:* En todo moment la cola contiene sub rangos de elementos no ordenados
