#import "../lib.typ":*
#show: codly-init.with()

= 08 de Septiembre de 2025

== Divide y Vencerás: Problema - Par de puntos más cercanos.
== Entrada y Salida

#align(center)[
  *Entrada*: Conjunto $S$ de $n$ puntos en $RR^2$: $S = {(x_0, y_0), (x_1, y_1), dots, (x_n, y_n)}$, y tal que $S$ está ordenado por $x_i$: $i < j arrow.double x_i <= x_j$ (o con $y_i$).

  *Salida*: El par de puntos de $S$ más cercanos.
]

== Razonamiento

La distancia entre dos puntos cualesquiera es:
$
"d"^2((x_i, y_i), (x_j, y_j)) = (x_j - x_i)^2 + (y_j - y_i)^2
$

=== Algoritmo (Fuerza Bruta): $O(n^2)$

Si 🤓.

=== Algoritmo

Para formar particiones no desastrosas, definimos una linea vertical $x_s$ como umbral:
//TODO: grafica

con $L$ y $R$ las particiones a "resolver" usando recursión.

Considerando $delta = "min"(d_L, d_R)$
//TODO: DIVISION de bandas

OBS: Para todo punto en la banda izquierda $B_L$ el número de puntos de la banda derecha a distancia $< delta$ es a lo más una cierta constante


