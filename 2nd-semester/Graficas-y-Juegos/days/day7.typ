#import "../lib.typ":*

= 19 de Agosto 2025

== Operaciones en una Gráfica

Sea $G = (V(G),A(G))$ una gráfica

//TODO: Gráfica G 

=== Eliminar un Vértice

Sea $v in V(G)$. Llamamos $G - {v}$ a la gráfica con vértices $V(G) - {v}$ y $A(G - {v}) = {(x,y) bar.v (x,y) in A(G) and x != v and y != v}$

#example()[
  $G - {v_7}$, siendo subgráfica de $G$.
]

=== Eliminar un Conjunto de Vértices

Sea $S subset.eq V(G)$. Llamamos $G - S$ a la gráfica con vértices $V(G) - S$ y $A(G - S) = {(x,y) bar.v (x,y) in A(G) and x,y in.not S}$

#example()[
  Sea $S = {v_2, v_6}$, con $G - S$ una subgráfica de $G$.
]

=== Eliminar una Arista

Sea $e = (x,y) in A(G)$. Llamamos $G - {e}$ a la gráfica resultante de solo eliminar la arista $e$.

#example()[
  $G - {(v_1,v_8)}$
]

#note()[
  $G - {(x,y) = e}$, con $e$ una arista, es una subgráfica generadora.
]

=== Eliminar un Conjunto de Aristas

Sea $E subset.eq in A(G)$. Llamamos $G - E$ a la gráfica resultante de eliminar las aristas de $E$.

#example()[
  Sea $E = {(x,y) in A(G) bar.v x,y "son impares"}$
]

=== Contracción de una Arista

Sea $e = (x,y) in A(G)$. Para "contraer" esa arista:
+ Eliminamos la arista $e$.
+ Los extremos $y$ y $x$ vértices se "fusionan" en un nuevo vértice $w = x y$.
+ Las aristas que incidian en $x$ o $y$ ahora inciden en $w$. Se eliminan multiaristas. 

#example()[
  Considerando $e = (v_2,v_3)$.
]

== Operaciones entre Gráficas

//TODO: Gráficas
Sean $G_1 = (V_1, A_1), G_2 = (V_2, A_2)$ gráficas.

=== Unión de Gráficas

Sean $G_1$ y $G_2$ gráficas tales que $V_1 inter V_2 = emptyset$. Llamamos a la unión $G_1 union G_2$ a la gráfica con 
$
V(G_1 union G_2) = V_1 union V_2
space.quad
"y"
space.quad
A(G_1 union G_2) = A_1 union A_2
$

#example()[

]

=== Suma de Gráficas

La suma, denotado por $G_1 + G_2$. Es la gráfica con 
$
V(G_1 + G_2) = V_1 union V_2
space.quad
"y"
space.quad
A(G_1 + G_2) = A_1 union A_2 union {(x,y) bar.v x in V_1 and y in V_2}
$

#example()[

]

=== Producto Cartesiano 

El producto cartesiano, denotado por $G_1 square G_2$. Es la gráfica con 
$
V(G_1 square G_2) = {x y bar.v x in V_1 and y in V_2}\
"y"\
A(G_1 square G_2) = {(x_1 y_1, x_2 y_2) in A(G_1 square G_2)} arrow.l.r.long.double
cases(
(x_1 = x_2 and (y_1, y_2) in A_2)\
(y_1 = y_2 and (x_1, x_2) in A_1)
)
$

#note()[
  *No* es una contracción.
]

