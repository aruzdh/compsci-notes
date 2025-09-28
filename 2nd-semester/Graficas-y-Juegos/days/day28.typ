#import "../lib.typ":*

= 19 de Septiembre 2025

== Teorema

#theorem()[
  Sea $G$ una gráfica simple, $abs(V(G)) >= 3$, y $d_1, d_2, dots, d_n$ su sucesión de grados con $d_1 <= d_2 <2 d_3 <= dots <= d_n$. Si no existe un $m in NN < abs(V(G))/2$ tal que $d_m < m$ y $d_(n-m) < n - m$, entonces $G$ es Hamiltoniana.
]

#proof()[
  $arrow.double$ Supongamos $G$ con toda las hipótesis anteriores, pero que no sea Hamiltoniana.

  Se usará la notación $d_(overline(G))(k) = overline(d(v))$.

  Como $G$ no es Hamiltoniana, entonces $overline(G)$ no puede ser completa. Deben de existir $x,y in V(G) = V(overline(G))$ tales que $x,y$ no son adyacentes y 
  - $d(x) <= d(y) (s.p.g)$
  - $overline(d(x)) + overline(d(y))$ es tan grande como sea posible.

  Por como se construye $overline(G)$, $overline(d(x)) + overline(d(y)) < abs(V(G))$
  Sean $S_x = {v in V(G) bar (x,v) in.not A(overline(G))} subset.eq V(G) - {x}$ y $S_y = {v in V(G) bar (v,y) in.not A(overline(G))} subset.eq V(G) - {y}$

  Observemos que
  + $abs(S_x) = n - 1 - overline(d(x))$
  + $abs(S_y) = n - 1 - overline(d(y))$

  Supongamos (s.p.g)que $overline(d(x)) = m$, y vamos a usar $overline(d(x)) + overline(d(y)) < n$, y los dos puntos anteriores.

  $overline(G)$ tiene que tener $m$ vértices de grado a lo más $m$ y al menos $n-m$ vértices de grado al menos $n-m$ por hipótesis. Como $V(G) = V(overline(G))$, pero $A(G) subset.eq A(overline(G))$, se tiene que $G$ es subgráfica generadora de $overline(G)$.

  Se puede observar $d_m <= overline(d_m) <= m$, $d_(n-m)<= overline(d_(n-m)) <= n-m$ y $abs(S_x) = n - 1 - overline(d(G)) >= n - 1 - n/2$ y $abs(S_y) = n - 1 - overline(d(y)) >= n - 1 - n/2$. Sumando ambos se tiene $n/2 - 1$
]

