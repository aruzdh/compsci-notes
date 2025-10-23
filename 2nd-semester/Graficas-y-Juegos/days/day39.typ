#import "../lib.typ":*

= 17 de Octubre 2025 

== Coloraciones

=== Coloraciones por Aristas

#definition("k-coloración por arista")[
  Sea $G$ una gráfica simple. Una *$k-$coloración por arista* es una asignación de $k-$colores a las TODAS las aristas de $G$.
]

#definition("k-coloración propia")[
   Una *$k-$coloración* es *propia* si todas las aristas que coinciden en algún vértice tienen "color" distinto.
]

Sean $c_1, c_2, dots, c_k$ los colores de la asignación, y $a in A(G) inter c_i$ si le asignamos el color $i$. Si $e, f in A(c_i)$, $e$ y $f$ son *independientes* (no comparten vértice)

#definition("Gráfica k-coloreable por aristas")[
  Si $k in NN$ es el menor natural para el cual $G$ tiene una $k$-coloración propia por aristas, entonces decimos que $G$ es *$k-$coloreable por aristas*.
]

// Ejemplos en las fotos

#definition("Número Cromático por arista")[
  Al entero $k$ de la definición pasada, con el cual $G$ se colorea propiamente, se le llama *número cromático por arista*. Se denota por $chi'(G)$.
]

#proposition()[
  Si $x in V(G)$ es tal que $Delta = d_G (x)$ es el mayor de $G$, entonces hay $Delta$ aristas que inciden en $x$:
  $
  Delta <= chi'(G)
  $

  Si tengo que $G$ es completa y tiene orden $n$, entonces necesito $n - 1$ colores para colorear a $G$:
  $
  chi'(G) <= abs(V(G)) - 1
  $
]

// Ejemplos en las fotos

=== Coloraciones por Vértices

#definition("k-coloración por vértices")[
  Si $G$ es una gráfica simple, decimos que tiene una *$k$-coloración por vértices* si hay una asignación entre $k-$colores y los vértices de $G$. 
]

#definition("coloración propia por vértices")[
  Si $forall e = (x,y) in A(G)$ y $x,y$ tienen colores distintos, entonces $G$ tiene una coloración propia.
]

#definition("Número Cromático por vértice")[
  Al entero $k$ de la definición pasada, con el cual $G$ se colorea propiamente, se le llama *número cromático por vértice*. Se denota por $chi(G)$.
]

#note()[
  Si $chi(G) = m$, entonces también hay una $m+1$ coloración, y también una $m+2$ coloración, y ...
]

== Clase Cromática
#definition("Clase Cromática")[
  Al conjunto $V_i subset.eq V(G)$ tal que tienen color $i$ se llama *clase cromáticas*.
]

#remark()[
  Las clases cromáticas son de equivalencia, además:
  $
  x tilde y arrow.l.r.double.long "tienen el mismo color"
  $
]

