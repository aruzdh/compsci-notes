
=

Elemento minimo

Entrada: Arreglo $A$ de $n >= 1$ enteros
Salida: Elemento $x$ tal que

+ $x in A$
+ $forall y in A, space.med x <= y$

//TODO:

// def minInt (A):
// m = A[1:]
// for y in A:
// if y < m: m = y
// return m

Invariante de ciclo

$m$ contiene el valor minimo del prefijo procesado

Primera Iteración: 

// A: [_ _ _ _ _] - m = A[0]


Quinta Iteración: 

// A: [_ _ _ _ _] - m = A[4]
