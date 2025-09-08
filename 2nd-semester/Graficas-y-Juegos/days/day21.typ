#import "../lib.typ":*

= 08 de Septiembre 2025

== Caracterización de Gráficas Eulerianas

Demostración del teorema anterior.

#proof()[
  Sea $G$ una gráfica conexa no trivial.

  $arrow.double$
  Sea $G$ Euleriana.

  Sea $w$ un paseo cerrado euleiano en $G$: 
  $
  w = {v_0, v_1, dots. v_k = v_0}
  $
  , donde se pueden repetir vértices.

  Sea $v_i in V(w) subset.eq V(G)$. $"d"(v_i) = k$ para algún $k in NN, k > 0$. Como $v_i in V(w)$, y $w$ es euleriano, entonces $v_i$ aparece en $w$ $l$ veces, y así $k = "d"(v_i) = 2 dot.c l$. Por tanto, todos los vértices de $G$ tiene grade par.

  $arrow.double.l$
  $forall v in V(G)$, $"d"(v)$ es par.

  Por contradicción: Supongamos $G$ no Euleriana.

  Como $G$ es conexa, entonces no hay vértice tal que $"d"(v) = 0$, y se tiene que $"d"(v) >= 2$. Con lo anterior (y un teorema), $G$ contiene un ciclo $C$. Particularmente, $C$ es un paseo cerrado.

  Sea $P$ un paseo cerrado (no repite aristas) de mayor longitud en $G$. Como $G$ no es euleriana, entonces $P$ no puede tener a todas las aristas de $G$

  Considerando $G' = G - P$ (quitamos aristas). Por lo anterior, $abs(A(G')) > 0$. Tenemos que $V(G') = V(G)$, y las aristas de $P$ que quitamos en $G$ le quita un número par de grados a sus vértices en $G'$. Con esto, todos los vértices de $G'$ tienen grado par. Pero sabemos que $abs(A(G')) > 1$, entonces $G'$ no puede ser trivial, y tampoco se pueden tener trayectorias (paseos) abiertas, ya que de otra forma, el grado del vértice inicial y el grado del vértice final sería impar, pero no es posible por que a cada vértice de $G$ le quité un número par de grados en $G$ (P).

  Sea $P'$ un camino cerrado en $G'$. Notemos que $A(P) inter A(P') = emptyset$, $V(P) inter V(P') != emptyset$. Sea $v_0 in V(P) inter V(P')$. 

  Consideremos $P_1 = "Paseo " P " comenzando y terminando en " v_0$.Consideremos $P_2 = "Paseo " P' " comenzando y terminando en " v_0$. Pero $A(P') subset.eq A(G)$. $P_3 = P_1 union P_2$ es de mayor longitud, siendo esto una contradicción.

  Entonces $P$ es euleriano, $G'$ no existe o es vacía, y $G$ es euleriana.
]

== Corolarios

#corollary()[
  Las gráficas $K_(2n + 1)$ (completa de grado impar) son gráficas eulerianas.
]

#proof()[
  $"d"(v) = 2n + 1 - 1 = 2n, forall v in V(K_(2n + 1))$
]

#corollary()[
  Si $G$ es $2k$-regular, entonces $G$ es euleriana.
]

#proof()[
  $forall v in V(G), "d"(v) = 2k$ es par.
]

== Teorema

#theorem()[
  Sea $G$ una gráfica conexa. $G$ tiene un paseo euleriano $arrow.l.r.double.long$ solo tiene 2 vértices de grado impar.
]

#proof()[
  $arrow.double$

  Si $G$ tiene $P = {v_0, v_1, dots, v_k}$ euleriano, entonces $"d"(v_i) = 2k$ para todo $i != 0, != k$. SPG, quitemos la arista $(v_0, v_1)$. Si $v_0$ aparece $l$ veces en $P$,el $"d"(v_0) = 2 l$ en $G-{(v_0,v_1)} arrow.double "d"_G(v_0) = 2l + 1$

  $arrow.l.double$

  Sea $G$ conexa. Sea $u,v in V(G)$ tal que $"d"(u), "d"(v)$ son impares.

  Considerando $G' = G union {(u,v)}$. Se tiene que $"d"_G' (u) = 2l + 1 + 1 = 2l + 2$ y $"d"_G' (v) = 2m + 1 + 1 = 2m + 2$, entonces $G'$ es euleriana y tiene un paseo euleriano cerrado $P$, pero $P-{(u,v)}$ es paseo euleriano pero no cerrado en $G$
]

