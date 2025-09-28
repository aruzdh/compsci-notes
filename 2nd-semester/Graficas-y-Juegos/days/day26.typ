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
  Sea $G$ una gráfica. Llamamos la cerradura de $G (overline(G))$ a la gráfica que resulta de unir vértices *no* adyacentes cuya suma de grados sea mayor o igual al $abs(V(G))$
]

Sean $G_1$ y $G_2$(distintas) las gráficas obtenidas del proceso de la definición de cerradura. Sean $A = {a_1, a_2, dots, a_k}$ las aristas agregadas a $G$ para obtener $G_1$, $B = {b_1, b_2, dots, b_m}$ las aristas agregadas a $G$ para obtener $G_1$.

Sea $a_i$ una arista que no esté en $G_2$. Sean $x,y in V(G)$ tales que $a = (x,y)$. Como $a_i in G_1$, entonces $"d"_G (x) + "d"_(G^l)(y) >= abs(V(G))$, pero entonces la arista $(x,y) in G_2$. Por tanto, $A subset.eq B$.

Análogamente se concluye que $B subset.eq A$, y entonces $ G_1 = G_2$

#theorem()[
  $G$ es Hamiltoniana si y solo si $overline(G)$ es Hamiltoniana
]

#proof()[
  $arrow.double$ Sea $G$ Hamiltoniana. Sean $A = {a_1, a_2, dots, a_k}$ las aristas (en orden)para obtener a $overline(G)$. Entonces $G + a_1$ es Hamiltoniana, $G + a_1 + a_2$ es Hamiltoniana, y por tanto $G + a_1 + dots + a_k = G + A = overline(G)$ es Hamiltoniana.

  $arrow.double.l$ Sea $overline(G)$ Hamiltoniana. Entonces se tiene que $G + a_1 + dots + a_k-1$ es Hamiltoniana, $G + a_1 + dots + a_(k-2)$, y se sigue que $G - a_1 = G$ es Hamiltoniana.
]

#corollary()[
  Si$overline(G) tilde.equiv K_n$, entonces $G$ es Hamiltoniana.
]
