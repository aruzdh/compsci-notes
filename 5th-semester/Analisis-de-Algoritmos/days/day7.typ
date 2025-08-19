#import "../lib.typ":*
#show: codly-init.with()

= 19 de Agosto de 2025

== Problema

Entrada: $a >= b$, $a != 0$, $a,b in NN$

Salida: $D in NN$ tal que $exists x,y in NN$, con $a = D dot.c x$ y $b = D dot.c y$, donde $D$ es el máximo con esa propiedad, es decir, 
$
forall D', "divisor común de" a,b,D' <= D
$

#proposition()[
  Sean $a > b$, y $b != 0$ enteros. El conjunto de divisores comunes de $(a,b)$ y $(b, a-b)$ es el mismo.
]

#proof()[

  $subset.eq$: Sea $d$ un divisor común de $a$ y $b$, así $a = d dot.c x$, $b = d dot.c y$. Restando: $a-b = d dot.c (x-y)$

  $supset.eq$: Sea $d$ un divisor común de $b$ y de $a-b$, así $b = d dot.c x$, $a-b = d dot.c y$. Sumando: $a = d dot.c (x+y)$
  
]

== Algoritmo (0)

```python
def MCDRec (a,b):
  if b == 0:
    return a
  else:
    c = b
    d = a-b
    if c < d:
      c,d = d,c
    return MCDRec (c,d)
```

== Arbol de Recursion

//TODO: foto

con $(16,7)$

== Algoritmo Alternativo (1)

```python
def MCDRec (a,b):
  if b == 0:
    return a
  while a - b >= b:
    a = a-b
  return MCDRec (b,a-b)
```

== Algoritmo Alternativo (2)

Complejidad lineal el el número de bits de la entrada, log en la magnitud

```python
def MCDRec (a,b):
  if b == 0:
    return a
  return MCDRec (b,a % b)
```
#lemma()[
  La Complejidad temporal de MCDRec (opción 0) es 
  $
  O("suma de valores de a y b")
  $
]

// la suma de los valores disminuye en al menos 1

#lemma()[
  La Complejidad temporal de MCDRec (opción 2)  es 
  $
  O("# bits de a + # bits de b")
  $
]

// el número de bits entre el padre e hijo disminuye en al menos un bit

#proposition()[
  $(b,a % b)$ tiene un bit menos que $(a,b)$
]


- $b >= a/2$
- $b < a/2$ //(***)

===  Propiedades del Residuo

$a = k dot.c b + r$, con $r < b$ //(***)

como $a >= b$, $k >= 1$
