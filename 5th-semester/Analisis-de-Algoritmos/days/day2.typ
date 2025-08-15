#import "../lib.typ":*
#import "@preview/codly:1.3.0": *
#show: codly-init.with()

= 12 de Agosto de 2026 

Pseudocodigo para expresar un algoritmo

- Modelo RAM
  - Arreglos
  - Enteros
  - Flotantes
  - Complejos
- Variables
- Aritmetica/logica
-Control

Framework

+ Problema:
  - Instancias de ejemplo
+ Algoritmo
  - Propuesta
  - Análisis de correctud
  - Análisis de complejidad

== Problema 1 (Trivial)

=== Definición del Enunciado

Sea $A$ un arreglo de $n > 0$ enteros dados. Calcular el elemento $x$ más pequeño de $A$, donde $x$ debe cumplir las siguientes condiciones.
- $x in A$
- $forall y in A, space.med x <= y$

=== Instancias de Ejemplo

Si $A = [2,3,4]$, la salida correcta debe ser 2.
Si $A = [-1,6,25]$, la salida correcta debe ser -1.

#definition("Correctud de un Algoritmo")[
  Un *algoritmo es correcto* si _para toda entrada válida_, su salida cumple las propiedades requeridas por el problema.
]

=== Propuesta de algoritmo
== Iterativo

```python
def minIter(A):
  m = A[0]
  for i in range(1, len(A)):
    if A[i] < m:
      m = A[i]
  return m
```

== Recursivo

```python
def minRec(A):
  if len(A) == 1:
    return A[0]
  else:
    min_l = minRec(A[:-1])
    if min_l <= A[-1]:
      return min_l
    else:
      return A[-1]
```

=== Demostración

#theorem()[
  El algoritmo _minRec_ es un algoritmo *correcto* para el problema 1.
]

Por demostrar:

_Para todo arreglo $A$, no vacío de $n$ enteros, la salida $x = "minRec"(A)$ cumple_
+ $x in A$
+ $forall y in A, space.med x <= y$

#proof()[
Por inducción en $n$.

*Caso Base*. Sea $n = 1$.

En este estado se devuelve $A[0]$, y es evidente que se verifican 1) y 2).

*Hipotesis de Inducción*. Supongamos que el algoritmo es correcto para toda lista $A$ de $k$ elementos.

Por Demostrar: El algoritmo es correcto para toda lista de $k+1$ elementos.

Sea $A = B + [z]$, donde $B$ es una lista con $k$ elementos, y $z$ es un elemento arbitrario.

Puesto que $A[:-1] = B$ tiene $k$ elementos, se aplicamos la Hipotesis de Inducción. Así, $m = "minRec"(A[-1])$ calcula *correctamente* el minimo de $B$.

Tenemos dos casos:
+ $m <= z$
+ $m > z$
]

