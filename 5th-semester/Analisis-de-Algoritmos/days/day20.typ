#import "../lib.typ":*
#show: codly-init.with()

= 05 de Septiembre de 2025

== Merge Sort Iterativo

Consideramos
$P(n) : "max" k bar.v 2^k < n$

//TODO: diagrama

=== Idea general

```python
sorted_size = 1

while sortedSize < n:
    # Aparea bloques de tamaño <= sorted_ize
    # for cad par de bloques: fusiona
    sorted_size *= 2
```

#note()[
  No dividimos el arreglo (como en la versión recursiva) por que al considerar a cada elemento como una lista unitaria, y con la propiedad $P(n)$, cada elemento está "ordenado" y "dividido".
]

#note()[
  Programación Dinamica:Un recorrido bottom-up de un árbol recursivo
]


