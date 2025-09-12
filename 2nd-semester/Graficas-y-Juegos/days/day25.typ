#import "../lib.typ":*

= 12 de Septiembre 2025

== Demostración del Teorema Anterior (10 sep)

#proof()[

  $dots$

  Si existiera $x in R inter S$, $exists u_j$ tal que $u_j = x$
  //TODO: foto

  Usando que $abs(A union B) = abs(A) + abs(B) - abs(A inter B)$, tenemos que
  $abs(R union S) = abs(R) + abs(S) - abs(R union S)$, donde $abs(R union S) = 0$, y entonces $abs(R union S) + abs(R) + abs(S) = "d"_G(u) + "d"_G(v)$

  Ahora
  $
  "d"_G(u) + "d"_G(v) < abs(V(G)) arrow.l.r.double delta <= "d"_G(u) < abs(V(G)) - "d"_G(v)
  $

  $
  arrow.double delta < abs(V(G)) - "d"_G(v) < abs(V(G)) - delta
  $

  $
  arrow.double delta < abs(V(G)) - delta arrow.double 2delta < abs(V(G)) = delta < abs(V(G)) / 2
  $, siendo esto una contradicción.
]

== Lema

#lemma()[
  Sea $G$ una gráfica simple. Sea $u,v in V(G)$ tal que $(u,v) in.not A(G)$, y además $"d"_G(u) + "d"_G(v) >= abs(V(G))$. Si $G$ es Hamiltoniana, si y solo si $G union {(u,v)}$ es Hamiltoniana.
]

#proof()[
  $arrow.double$
  Si $G$ es Hamiltoniana, entonces existe $C$ un ciclo hamiltoniano que comienza y termina en $u$, $T = (v,u) union "ciclo abierto"$
]

