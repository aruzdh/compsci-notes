#import "../lib.typ":*

= 18 de Agosto de 2025

== Continuacion 4.3

- Subgrafica generadora
  $H$ es subgrafica generadora de $P$ si $V(H) == V(P)$

  $H_1 = {V'(A,B,C,D,E,I,J,L,M,N), emptyset)}$

  $H_1 = {V'(A,B,C,D,E,I,J,L,M,N) = V(P), A(P) = {(A,I), (B,J), (L,C), (M,D), (E,N)}}$

- Conjunto de vértices independientes (3,4,5)

#definition("Conjunto de Vértices Independientes")[
  Es un conjunto de vértices que no son adyacentes entre si.
]

$V I_2 = {A,C}, {B,E}$
$V I_3 = {D,B,I}, {J,C,E}$
$V I_4 = {D,B,I,N}, {N,A,C,M}$
$V I_5 = emptyset$

== Inducción Debil y Fuerte

Sea $K_n$ una gráfica completa de orden $n$. Probar que
$
abs(A(K_n)) = (n(n-1)) / 2
$

#proof()[
  Hacemos inducción sobre $n$.

  *Base de Inducción:* $n = 1$
  $
  abs(K_1) = (1(1-1)) / 2 = 0
  $

  *Base de Inducción:* $n = 2$
  $
  abs(K_2) = (2(2-1)) / 2 = 1
  $

  *Hipótesis de Inducción:*
  - Debil: Supongo que la "propiedad" se cumple para $n = h$
  - Fuerte: Supongo que la "propiedad" se cumple para todo $n <= h$

  *Paso Inductivo:* Probamos que la "propiedad" es válida para $n = h + 1$

  $
  abs(K_(h+1)) &= abs(A(k_n)) + h\
  &= (h(h-1)) / 2 + h = (h^2 - h + 2h) / 2 \
  &= (h^2 + h) / 2 = (h (h+1)) / 2 \
  &= ((h+1)((h+1)-1)) / 2 \
  $
  Como la "propiedad" es válida para $n = "base"$ y suponiendola válida para todo $n <= h$ se probró que se cumple para $n = h + 1$, entonces la "propiedad" es válida todo $n in NN$
]

== Proposición sobre Gráficas completas e Inducidas

#proposition()[
  Toda gráfica inducida de una gráfica completa es completa.
]

#proof()[
  Sea $K_n$ una gráfica completa de orden $n$. Sea $S subset.eq V(K_n)$.Por demostrar: $G[S]$ es completa.

  Sea $u,v in S$ dos vértices cualesquiera. Sabemos que $u,v in V(K_n)$, luego como son vértices de la gráfica completa $K_n$, hay una arista que los une. Como $u,v$ son cualquier par de vértices de $S$, esto sucede para todos los vértices de $S$. Por lo tanto $G[S]$ es completa.
]

