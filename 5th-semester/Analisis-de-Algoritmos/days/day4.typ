#import "../lib.typ":*
#show: codly-init.with()

#import "@preview/cetz:0.4.1": canvas, draw
#import "@preview/cetz-plot:0.1.2": plot

= Análisis de Complejidad Temporal

La complejidad temporal es el número de operaciones básicas que toma la ejecución del algoritmo.

Costo (asintótico) en el peor caso

Cuando $n = 1$

```python
def minIter(A):
  acc = A[0] # Se ejecuta 1 vez
  for v in A: # Se ejecuta 1 vez
    if v < acc # Se ejecuta 1 vez
      acc = v # Se ejecuta 0 veces
  return v # Se ejecuta 1 vez
```

Cuando $n = 2$

```python
def minIter(A):
  acc = A[0] # Se ejecuta 1 vez
  for v in A: # Se ejecuta 2 veces
    if v < acc # Se ejecuta 2 veces
      acc = v # Se ejecuta 1 vez
  return v # Se ejecuta 1 vez
```

$dots.v$

Cuando $n = k$

```python
def minIter(A):
  acc = A[0] # Se ejecuta 1 vez
  for v in A: # Se ejecuta k veces
    if v < acc # Se ejecuta k veces
      acc = v # Se ejecuta k-1 veces
  return v # Se ejecuta 1 vez
```

Con los exemplos anteriores se puede observar que se hacen a lo más $n$ asignaciones en _acc_.


== Costo Doble de un Algoritmo Lineal

Dada $f(n) = c dot.c n^2$, para procesar el doble de información, en general, se usa el doble de recursos:
$
f(2n)/f(n) = (c dot.c (2n^2))/(c dot.c n^2) = 4n^2/n^2
$

Generalizando:
$f(n) = c dot.c n^k$
$
f(2n)/f(n) = (c dot.c (2n^k))/(c dot.c n^2) = 2^k
$

== Notación Big O

#definition("O")[
  Sean $f$ y $g$ funciones sobre $NN$. Decimos que $f(n) in O(g(n))$ si $exists c in RR$ y $n_0 in NN$ tal que $forall n >= n_0, f(n) <= c dot.c g(n)$ 
]

=== Interpretación

- La constante $c$ es un *factor de escalado* que compensa las diferencias en las constantes multiplicativas entre $f(n)$ y $g(n)$, asegurando que, a partir de un cierto punto, $c dot.c g(n)$ siempre será un límite superior para $f(n)$.

- El umbral $n_0$ es un *punto de corte* que establece a partir de qué valor de entrada $n$ la relación $f(n) <= c dot.c g(n)$ comienza a ser válida, permitiendo "ignorar" el comportamiento inicial de la función para enfocarse en su crecimiento a largo plazo.

En esencia, la definición de Big O utiliza $c$ y $n_0$ para afirmar que, más allá de un cierto valor de entrada $n_0$, la función $f(n)$ *nunca crecerá más rápido que la función $g(n)$ escalada por una constante $c$.*

=== Ejemplo Grafico de un Algoritmo Lineal

#align(center)[
  #canvas({
    import draw: *
    import plot: *
    plot(
      size: (9, 4),
      x-tick-step: none,
      y-tick-step: none,
      axis-style: "left",
      {
        add(
          style: (stroke: red),
          domain: (-5,3),
          x => x,
        )
        add(
          style: (stroke: blue),
          domain: (-5,3),
          x => 2 + 1.5*x,
        )
      },
    )
    set-style(
      stroke: (dash: "dashed")
    )
    content((3,2.8), text(size: 10pt)[$n_0$])
    content((5,2.8), text(size: 10pt)[$c dot.c g$])
    content((5,1.1), text(size: 10pt)[$f$])
    line((3,0), (3, 2.3))
  })
]

