#import "../lib.typ":*

= 15 de Octubre 2025 

== Corolario

#corollary()[
  Si $G$ es bipartita $k-$regular ($k > 0$), entonces $G$ tiene un apareamiento perfecto
]

#proof()[
  Si $X,Y$ es la bipartición, y es $k-$regular, entonces $abs(X) = abs(Y)$

  Sea $S subset.eq X$. Como $G$ es $k-$regular, $k abs(S) = A_1$, con $A_1$ las aristas que "salen" de $S$.

  Tenemos que $N_G (S) subset.eq Y$, además cada $y in N_G (S)$ tiene $k$ vértices con el cúal está unido, y formamos $A_2 = k abs(N_G (S))$

  También tenemos que $A_1$ son las aristas que unen $S$ con sus vecinos, pero si tomamos $y in N_G (S)$ no necesariamente está conectado con vértices de $S$. Entonces
  $
  abs(A_1) <= abs(A_2)
  $
  
  Sustituyendo
  $
  k abs(S) <= k abs(N_G (S)) arrow.double abs(S) <= abs(N_G (S)) space.quad forall S subset.eq X
  $
]
$$

== Cubiertas

#definition("Cubiertas")[
  Una *cubierta* de una gráfica $G$ es un conjunto $K subset.eq V(G)$ tal que cualquier arista al menos tiene un extremo en $K$.
]

// foto
#example()[
  y
]

=== Cubierta Minima

#definition("Cubierta Minima")[
  Una *cubierta* $K$ es *minima* si _no_ existe $K' subset.eq V(G)$ otra cubierta de menor tamaño.
]

// foto
#example()[

]

== Teorema

#theorem()[
  Sea $G$ gráfica con apareamiento máximo $M*$ tal que satura a la mayoría de vértices. Si tomamos al menos un extremo de cada arista de $M*$, tenemos una cubierta de $G$.

  Notemos que si $abs(M*) = m$, la cubierta, al tomar solo un vértice de cada arista de $M*$, es al menos $m$. Entonces, dado cualquier otro apareamiento $M$,$bar(K)$ la cubierta minima, y $K$ cualquier otra cubierta:

  $
  abs(M) <= abs(M*) <= abs(bar(K)) <= abs(K)
  $
]

#lemma()[
  Si $M$ es apareamiento, y $K$ se cubierta tal que $abs(M) = abs(K)$, entonces $M$ se máximo y $K$ es minima.
]

#proof()[
  Si $M*$ es apareamiento máximo
  $
  abs(M*) <= abs(K) = abs(M) arrow.double abs(M) = abs(M*)
  $

  y

  $
  abs(M) <= abs(bar(K)) <= abs(K) = abs(M)
  $

  Entonces
  $
  abs(bar(K)) = abs(K)
  $

  $therefore K$ es minima
]

// foto
#example()[

]

== Teorema

#theorem("Tutle")[
  En una gráfica bipartita \# aristas de un apareamiento máximo $=$ \# vértices de una cubierta minima
]


