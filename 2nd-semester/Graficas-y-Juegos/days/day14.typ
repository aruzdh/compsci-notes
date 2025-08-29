#import "../lib.typ":*

= 28 de Agosto 2025

== Demostraciones

#exercise()[
  Demuestra que dada $G$ una gráfica, tal que $"d"(v) >=2$, $forall v in V(G)$, entonces $G$ tiene un ciclo.
]

#proof()[
  Sea $w$ una trayectoria de longitud máxima en $G$: 

  $
  w = {x_1, x_2, dots, x_n}
  $

  + Si $w$ tiene un ciclo, ya acabamos.
  + Si $w$ no tiene un ciclo, consideramos spg que $x_1$ solo aparece una vez en $w$. Pero como $"d"(x_1) >= 2$, existe $x* in V(G)$ tal que $(x_1,x*) in A(G)$
    Observemos que:
    + $x* in.not w$. Podemos extender $w$ a $w* = w union {x*}$, pero la longitud de $w*$ es mayor que la de $w$.
    + $x* in w$. $x* = x_i$ con $i = 2,dots,n$ tal que $C = {x_1, x_2, dots, x_i = x*, x_1}$ que es un ciclo.

  $
  therefore G "tiene un ciclo"
  $
]
==
#theorem()[
  Sea $G$ una gráfica, si $abs(V(G)) < abs(A(G))$, entonces $G$ tiene un ciclo.
]

#proof()[
  Inducción sobre $abs(V(G))$

  *Caso Base.* $abs(V(G)) = 4 < 5 = abs(A(G))$, donde claramente hay un ciclo.

  *Hipótesis de Inducción:* Sea $G^*$ una gráfica donde $abs(V(G^*)) < n$, tal que $abs(V(G^*)) < abs(A(G^*))$, entonces $G^*$ tiene un ciclo.

  *Paso Inductivo.* Consideramos $G$ una gráfica tal que $abs(V(G)) = n < abs(A(G))$

  Observemos que: $G = G^* union {v}$, es decir, $abs(V(G)) = abs(V(G^*)) + 1$

  Se tiene $abs(A(G)) = abs(A(G^*)) + "d"(v)$

  + Si $"d"(v) >= 2$, por el teorema anterior, $G$ tiene un ciclo.
  + Si $"d"(v) = 0$, $abs(A(G)) = abs(A(G^*)) > abs(V(G^*))$, como $G^*$ tiene ciclo, entonces $G$ tiene un ciclo
  + Si $"d"(v) = 1$, tenemos que $abs(A(G^*)) = abs(A(G)) - 1 > abs(V(G^*))$, por tanto $abs(A(G^*)) > abs(V(G^*))$, por Hipótesis de Inducción, $G^*$ tiene un ciclo, y podemos concluir que $G$ tiene ciclo.
]

== 
#lemma()[
  Si borramos la hoja de un árbol, se obtiene un árbol.
]

#proof()[
  Sea $T$ un árbol. Consideramos $x in V(T)$ tal que $"d"(x) = 1$. Sea $G = T - {x}$

  Como $T$ es árbol, sabemos que $abs(A(T)) = abs(V(T)) - 1$

  $abs(A(T)) - "d"(w) = abs(V(T)) - 2$

  $abs(A(G)) = abs(V(G)) - 1$

  $
  therefore G "es árbol"
  $
]


