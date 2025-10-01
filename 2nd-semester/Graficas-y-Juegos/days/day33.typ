#import "../lib.typ":*

= 01 de Octubre 2025 

== Vecinos de un Conjunto

=== Vecinos de un Conjunto (definición)

#definition("Vecinos de un Conjunto")[
  Sea $S != emptyset subset.eq V(G)$. Definimos a $N_G (S)$ al conjunto de todos los vértices adyacentes a los vértices de $S$.
  Dicho de otro modo, $N_G (S) = {v in V(G) bar v in N_G (u), forall u in S}$
]

=== Teorema

#theorem()[
  Sea $G$ una gráfica bipartita con bipartición $(X, Y)$, entonces $G$ contiene un apareamiento que satura a todo vértice en X si y solo si $abs(N_G (S)) >= abs(S), forall S subset.eq X$. (S.P.G $abs(X) <= abs(Y)$)
]

// La demostración está con ss en la galeria

// #proof()[
//   $arrow.double$
//
//   Si $G$ tiene un apareamiento que satura a cada vértice de $X$, y tomamos $S subset.eq X$, entonces $forall s_i in S$ debe existir $y_i in Y$ tal que $(s_i, y_i) in M$ y al menos $abs(S)$ de vértices en $N_G (S)$
//
// ]
