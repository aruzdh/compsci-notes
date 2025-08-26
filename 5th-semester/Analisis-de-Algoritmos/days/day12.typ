#import "../lib.typ":*
#show: codly-init.with()

= 26 de Agosto de 2025

Considerando el algoritmo recursivo pasado. El tamaño del árbol $T(n) = 1 + T(n-1) + T(n-2)$, con $n$ la entrada del algoritmo. Además, $T(n) >= T(n-1) + T(n-2)$. Esto es similar a la sucesión de Fibonacci.

== Fibonacci

El razonamiento del problema pasado su puede aplicar.

=== Algoritmo

//TODO: algo quitar o acomodar
```julia
f(n) = (([BigInt(1) 1 ; 1 0]^n) * [f_1 ; f_0])[2]
```
con $f_1$ y $f_0$ los casos bases.

//TODO: formula cerrada de la sucesión para el tamaño del arbol
$
f(n) = (((1+ sqrt(5))/2)^n - ((1 - sqrt(5))/2)^n) / sqrt(5)
$

El numero de operaciones aritmeticas es como la proporcion aura a la n $< 2^n$


