#import "../lib.typ":*
#show: codly-init.with()

= 25 de Agosto de 2025

==

=== Problema

Sea $S = S_0, S_1, dots$
tal que
$S_(k+2) = 3 dot.c S_(k+1) + 2 dot.c S_k$
y con $S_0 = 1$ y $S_1 = 2$

Ejemplo: $S = 1,2,8,28, dots$

Calcular: $S_1000000000$

=== Algoritmo (1)

```python
def f(n):
  if n == 0: return 1
  if n == 1: return 2
  return 3 * f(n-1) + 2 * f(n-2)
```
//TODO: Arbol de recursion

=== Algoritmo (2)

```python
def fiter(n):
  a = 1
  b = 2
  k = 0
  while k < n:
    k += 1
    a,b = b, 3 * b + 2 * a
  return a
```

*Invariante:* en el par $a$ y $b$ se lleva el par de valores $S_k$ y $S_(k+1)$, respectivamente. La condición de parada es $n = k$. Por tanto $a$ es el valor correcto.

Complejidad: Lineal en $n$.

== Algoritmo (3)

*_Se usa el Algoritmo de la clase pasada: fastpow._* Con la modificación del caso base (para que aplique a matrices)

==== Python

//TODO: bien
```python
  M = [[3,2],[1,0]]
  def ffast(n):
    m_n = fastpow(M)
    return (m_n * [2,1])[1]
```
==== Julia

```julia
f(n) = ([BigInt(3) 2 ; 1 0]^n) * [2 ; 1]
```
