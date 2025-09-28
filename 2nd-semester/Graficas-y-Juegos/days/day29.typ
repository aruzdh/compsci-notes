#import "../lib.typ":*

= 22 de Septiembre 2025 - Unidad 3: Apareamientos y Coloración

== Gráfica Bipartita

#definition("Gráfica Bipartita")[
  Sea $G$ una gráfica simple y no trivial. Se dice que $G$ es *bipartita* si existen $V_1, V_2 subset.eq V(G)$ con $V_1, V_2 != emptyset$ y distintas tal que $V_1 inter V_2 = emptyset$, de tal forma que $forall e in A(G)$ un extremo está en $V_1$ y el otro en $V_2$.
]

#note()[
  %Si $u,v in V(V_i)$, entonces $(u,v) in.not A(G)$, para $i = 1,2$
]

// Los ejemplos están en las fotos

En general, si $V_1, dots, V_k subset.eq V(G)$ con $V_i != emptyset$, $V_i != V_j$, y $V_i inter V_j = emptyset$ tales que las aristas de $G$ van de $V_i$ a $V_j$, entonces $G$ es $k-$partita.

#definition("Gráfica Bipartita Completa")[
  Si $G$ es una gráfica bipartita tal que $forall x in V_1$ y $forall y in V_2$ $(x,y) in A(G)A$, entonces $G$ es bipartitas completa.
]

#note()[
  Si $abs(V_1) = m$ y $abs(V_2) = n$, entonces se denota como $K_(m n)$
]

#remark()[
  Si $G$ una gráfica es un ciclo impar, entonces *no* hay bipartición. De lo contrario si la hay.
]

== Apareamientos

#definition("Apareamiento (Matching)")[
  Sea $G$ una gráfica simple y no trivial. Llamamos a $M subset.eq A(G)$ un *apareamiento* si $forall e,f in M$ *no* comparten ningún vértice.

  Otra forma de dnfinirlo: Un apareamiento es un conjunto de aristas independientes.
]

#definition("Aristas Emparejadas (matched)")[
  Si $e in M$ y $e = (x,y)$, decimos que $x$ y $y$ están *emparejadas*.
]

#definition("M-Saturación")[
  $M$ *satura* a un vértice $v in V(G)$ si existe $f in M$ tal que $v$ es extremo de $f$. Se dice que $v$ es *$M-$saturado*.
]

#definition("Apareamiento Perfecto")[
  Decimos que $M$ es *apareamiento perfecto* si $M$ satura a todo vértice de $G$.
]

#definition("Apareamiento Máximo")[
  Decimos que $M$ es *apareamiento máximo* si no existe $M'$ otro apareamiento tal que $abs(M') > abs(M)$.
]

// Los ejemplos están en las fotos


