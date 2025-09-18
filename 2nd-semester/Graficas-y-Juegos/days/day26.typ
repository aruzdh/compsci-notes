#import "../lib.typ":*

= 17 de Septiembre 2025

== Teorema Bonely y Chavital

#theorem()[
  Si $G$ es simple y $u,v in V(G)$ *no* adyacentes en $G$ con $"d"(u) + "d"(v) >= abs(V(G))$, entonces $G$ es Hamiltoniana si y solo si $G union {(u,v)}$ es Hamiltoniana.
]

#proof()[

$arrow.double$
Si $G$ es Hamiltoniana, entonces existe $C$ ciclo Hamiltoniano, y como $V(G) = V(G + {(u,v)})$, se tiene que $C$ tambien es Hamiltoniano en $G + {(u,v)}$, y entonces $G + {(u,v)}$ es Hamiltoniana.

$arrow.l.double$

Supongamos que $G union {(u,v)}$ es Hamiltoniana. Entonces existe $C$ ciclo Hamiltoniano. Si $(u,v) in.not A(G)$, $C$ es ciclo Hamiltoniano en $G$.

Supongamos entonces que $(u,v) in C$. Consideramos $T = {u_1, u_2, dots, u_n = v}$ la trayectoria sin la arista $(u,v)$.

Notemos que $V(G) = V(T)$

Sean
$
P = {u_i bar (u, u_i) in A(G)} != emptyset \
Q = {u_j bar (u_j, v) in A(G)} != emptyset \
$

Por hipótesis $"d"(u) + "d"(v) >= abs(V(G))$, y por el principio del palomar:
$
exists u_i, u_(i+1) in V(G) "tal que" (u, u_(i+1)), (u_i, u_n = v)
$

Considerando $C' = {u_i, u_n, u_(n-1), u_(n-2), u_(i+1), u_1, u_2, dots, u_(i-1), u_i$ el ciclo Hamiltoniano, y $(u, v) in.not A(G)$. Entonces $C' subset.eq G$, y $G$ es Hamiltoniana.
]

#definition("Cerradura")[
  Sea $G$ una gráfica. Llamamos la cerradura de $G (G^-)$ a la gráfica que resulta de unir vértices *no* adyacentes cuya suma de grados sea mayor o igual al $abs(V(G))$
]

#example()[

  //TODO: gráfica
]

Sean $G_1$ y $G_2$(distintas) las gráficas obtenidas del proceso de la definición de cerradura

#theorem()[
  $G$ es Hamiltoniana si y solo si la cerradura de $G$ es Hamiltoniana
]

#corollary()[
  Si la cerradura de $G^-$
]
