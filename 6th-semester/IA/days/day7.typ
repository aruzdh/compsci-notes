#import "../lib.typ": *

= 13 - Febrero - 2026

== Búsqueda

1. Desinformados
  - BFS
  - DFS
2. Informados
  - $A^*$
  - Ambicioso
  - $A^*$ pesado

#note("Complejidades")[
  Las complejidades
  - BFS - $O(b^d)$
  - DFS - $O(b^h), d <= h$
]

#definition("Heurística")[
  Es una función $H : V arrow RR$ tal que mapea un nodo a un valor con respecto a la meta.
]

#note()[
  $h(n,m)$ si $m$ es conocida, denotamos $h(n)$
]

#example()[
  //TODO: foto
  //  #figure(
  // image("../imgs/.jpeg", width: 80%),
  // )


]

#definition("Función de Prioridad")[
  Una función de prioridad $f : V arrow RR$ de define, usualmente
  $ f(n) = g(n) + h(n) $ con $g(n)$ el costo acumulado y $h(n)$ la heurística.
]

//TODO: foto
#definition("Algoritmo de Búsqueda")[
  Input: $P = (S, A, s_0, F, T, c)$ y $f$ la prioridad.

  ```c
  n <- NODE(STATE = s)
  frontier <- QUEUEP.PUSH(n)
  reached <- TABLE(s_0 : n)
  while(not f)
  ```
]

#definition("Checado")[
  Revisa si un nodo corresponde al estado final.
  1. Checado temprano: Revisa al expandir el nodo
  2. Checado tardío: Revisa el sacar de la frontera

  ```c
  if(n.STATE in F) then
    return n
  ```

  Usamos una cola de prioridad:
  - POP: Se da por una función de prioridad. Saca el nodo con $f$ más baja.
]

#example()[
  - $f = "depht"(n) arrow$ BFS
  - $f = -"depht"(n) arrow$ DFS
]

#definition("Primero Mejor Ambicioso")[
  Es un algoritmo de búsqueda informada, cuya función de prioridad se da:
  $ f(n) = h(n) $ con $h$ la heurística
]

#example()[
  //TODO: foto
  //  #figure(
  // image("../imgs/.jpeg", width: 80%),
  // )
]

#definition("Algoritmo A*$")[
  Algoritmo de búsqueda informada definido por:
  $ f(n) = g(n) + h(n) $ con $g(n)$ el costo acumulado y $h(n)$ la heurística.
]


#example()[
  //TODO: foto
  //  #figure(
  // image("../imgs/.jpeg", width: 80%),
  // )
]
