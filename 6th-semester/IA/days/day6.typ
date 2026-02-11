
#import "../lib.typ": *

= 11 - Febrero - 2026

#definition("Camino")[
  Es una secuencia de acciones $a_(i 1), a_(i 2), dots, a_(i k) in A^*$

]

#definition("Solución")[
  Un camino $a_(i 1), dots, a_(i k)$ tal que inicia en $s_0$ y $T(s_(i k-1), a_(i 1), dots, a_(i k) in F$
]

#example()[
  #figure(
    image("../imgs/completo_w2.jpeg", width: 80%),
  )
]

#definition("Solución optima")[
  Es una solución que minimiza el costo.

  $
    hat(a_1), dots, hat(a_n) = "argmin" sum_(i = 1)^(n - 1) c(s_i, a_i, s_(i + 1))
  $
]

#definition("Árbol de búsqueda")[
  Es un árbol $G = (V, E)$ ordenado tal que para un $P = (S, A, s_0, F, T, c)$:
  1. Cada nodo $v in V$ está indexado por un estado $s in S$
  2. Las aristas $E$ se indexan por acciones
  3. $s_0$ corresponde a la raíz del árbol
  4. Por cada $T(s,a)$ para toda $a in A$ y creamos hijos como estados resultantes
]

#example()[
  #figure(
    image("../imgs/arbol_busqueda_w2.jpeg", width: 50%),
  )
]

== Propiedades (Estructura) de nodos

1. Estado: el estado que representa
2. Parent: el nodo que lo genera.
3. Acción: la $a in A$ que lo genera
4. Costo: costo acumulado (inicial 0)

#definition("Frontera")[
  Estructura de datos que almacena los nodos sin expandir del árbol de búsqueda.
  - Cola: BFS -> Exploración. BFS, en un ambiente finito y con costo constante,  nos da una solución optima. Como explora, expande todos los caminos posibles, y si la solución optima tiene tamaño $d$, entonces encontramos la solución en la profundidad $d$, y como $d <= d'$ para toda $d'$ otra solución, entonces encuentra primero la solución de tamaño $d$.
  - Pila: DFS -> Explotación. DFS no da una solución optima, y además, si entra en un ciclo, no da una solución. Si no hay ciclos, encuentra una solución.
]

#definition("Indice de Ramificación")[
  En un árbol de búsqueda el indice de ramificación es el número máximo de nodos que se pueden expandir. Si $P$ es determinista $b <= |A|$ es el indice de ramificación.
]

#corollary("Complejidad de BFS y DFS")[
  - BFS: $O(b^d)$
  - DFS: $O(b^h)$ con $h$ la profundidad máxima del árbol.
  con $d <= h$.
]

