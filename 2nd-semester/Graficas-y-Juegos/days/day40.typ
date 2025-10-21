#import "../lib.typ": *

= 20 de Octubre 2025 

== Afirmaciones

// no se remark 
#remark()[
  Cada clase cromática es un conjunto independiente
]

#note()[
  Si $S subset.eq V(G)$ es independiente, entonces $s,t in S$ ((s,t) in.not A(G))
]

#remark()[
  Si $V_i$ y $V_j$ son dos conjuntos de colores distintos, entonces $V_i inter V_j = emptyset$
]

#remark()[
  Si $V_1, V_2, dots, V_k$ son las clases cromáticas, entonces $union.big_(i = 1)^k V_i = V(G)$
]

== Teorema

#theorem()[
  G es bipartita si y solo si $chi (G) = 2$
]

#proof()[
  Si $G$ es bipartita, entonces $exists X, Y subset V(G)$, tales que
  + $X != emptyset, Y != emptyset$
  + $X inter Y = emptyset$
  + $X union Y = V(G)$
  $
  arrow.long.l.r.double
  $

  Exiten 2 "colores", rojo y azul, tales que:
  - Si $x in X$, entonces $X$ es colo rojo
  - Si $y in Y$, entonces $Y$ es colo azul

  Entonces $G$ tienen una 2-coloración. Como $X, Y != emptyset$, $exists (u,v) in A(G)$ tal que $u$ si de un color, y $v$ es de otro.
  $
  arrow.long.l.r.double
  $
  $chi(G) = 2$
]

== Corolario

#corollary()[
  Si $T$ es un árbol, entonces $chi(T) = 2$
]

== Teorema

#theorem()[
  Sea $G$ simple. $G$ es 2 cromática si y solo si $G$ no tiene ciclos impares.
]

#proof()[
  Si $chi(G) = 2$, entonces cualquier ciclo $C$ solo puede tener dos colores. Si $abs(C) = 2n - 1$, el último vértice tendrías que tener color distinto al de los pares, pero también como $(2_(n-1),1) in A(G)$, no puede tener el mismo color del 1er vértice.

  Por otro lado. Si $G$ tiene un ciclo impar $C$, entonces $C = {V_1, V_2, dots, V_(2n - 1), V_1}$, y $(V_(2n - 1), V_1), (V_(2n - 2), V_(2n - 1)) in A(G)$, se tiene que $V_i$ pares, y $V_j$ impares, y tienen colores distintos.

  Por tanto, se necesita otro color distinto a la de los pares e impares para colorear a $V_(2n - 1)$, y entonces $chi(G) > 2$.
]

== Gráfica Crítica

#definition("Gráfica Crítica")[
  Una gráfica $G$ se llama *crítica* con respecto a su número cromático $chi(G)$ si $forall H$ subgráfica propia $chi(H) < chi(G)$

  Si $chi(G) = k$ y $G$ es crítica, entonces $G$ es $k-$cromática crítica.
]

