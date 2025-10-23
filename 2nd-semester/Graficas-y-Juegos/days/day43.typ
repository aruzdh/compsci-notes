#import "../lib.typ": *

= 23 de Octubre 2025 

== Teorema

#theorem()[
  Muestre que si $G$ es una gráfica simple, entonces
  $
  chi(G) >= (V^2)/(V^2 - 2 A)
  $

  con $V = abs(V)$, y $A = abs(A)$
]

#proof()[
  Sea $G$ una gráfica simple tal que que $chi(G) = k$, entonces podemos tener al menos $k$ conjuntos independientes (clases de equivalencia de los colores) disjuntos: $C_1, C_2, dots, C_k$

  Entonces el número máximo de aristas que puedo tener es 
  $
  A <= sum_(i <= i < j <= k) abs(C_i) abs(C_j)
  $

  Sabemos que
  $
  (sum_(i = 1)^k abs(C_i))^2 = sum_(i = 1)^k abs(C_i)^2 + 2 sum_(1 <= i < j <= k) abs(C_i) abs(C_j)
  $

  Se sigue
  $
   V^2 = sum_(i = 1)^k abs(C_i)^2 + 2 sum_(1 <= i < j <= k) abs(C_i) abs(C_j)
  $

  Usando la primera desigualdad
  $
   2 A <= V^2 - sum_(i = 1)^k abs(C_i)^2
  $

  Para minimizar $sum_(i=1)^k abs(C_i)^2$ y así maximizar el número de aristas, los tamaños de los $C_i$ tiene que ser lo más iguales posibles (en cuanto al número de vértices). El caso óptimo sería cuando todos los $C_i$ tienen $V/k$ vértices.

  Entonces la suma se minimiza como
  $
  sum_(i=1)^v abs(C_i)^2 >= k(V/k)^2 = V^2/k
  $

  Sustituyendo
  $
  2A <= V^2 - (V^2/k)
  arrow.l.r.double
  2A <= (k V^2 - V^2)/k
  arrow.l.r.double
  2k A <= k V^2 - V^2
  arrow.l.r.double
  V^2 <= k V^2 - 2k A
  arrow.l.r.double
  V^2 <= k (V^2 - 2A)
  $

  Entonces
  $
  V^2/(V^2 - 2A) <= k arrow.long V^2/(V^2 - 2A) <= chi(G)
  $

]
