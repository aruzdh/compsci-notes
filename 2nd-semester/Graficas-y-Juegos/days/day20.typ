#import "../lib.typ":*

= 05 de Septiembre 2025

== Recorridos Eulerianos y Hamiltonianos

1736 - Euler
+ Propone su representación con nodos y lineas
+ Euler prueba que no es posible.

=== Paseo Euleriano

#definition("Paseo Euleriano")[
  Un paseo (camino que no repite aristas) en una gráfica $G$ (simple) que cubre todas las aristas de $G$ se llama *Euleriano*. Si este paseo es cerrado, entonces es un camino Euleriano cerrado
]

=== gráfica Euleriana

#definition("Gráfica Euleriana")[
  Sea $G$ una gráfica. Si $G$ tiene un paseo Euleriano cerrado, entonces $G$ es Euleriana.
]

#example()[
  Sea la siguiente gráfica.
  //TODO: gráfica
]

== Teorema

#theorem()[
  Sea $G$ una gráfica no trivial y conexa. $G$ es Euleriana si y solo si no hay vértices de grado impar.
]
