#import "../lib.typ":*

= 14 de Octubre 2025 

== Componente Conexa Impar

#definition("Componente Conexa Impar")[
  $H$ es una componente conexa impar si $H$ es conexa y $abs(V(H))$ es impar.
]

$sigma_(G - v)$: número de componentes conexas impares.

==

Demuestra que un árbol tiene un apareamiento perfecto si y solo si $sigma_(T - v) = 1$ para cada $v in V(T)$

#proof()[
  $arrow.double$

  Supongamos que $T$ tiene un apareamiento perfecto, y entonces sabemos que $abs(V(T))$ es par.

  Sea $v in V(T)$
  - Si $v$ es hoja, entonces $T - v$ es una gráfica conexa tal que $abs(V(T - v))$ es impar, y $sigma_(T - v) = 1$
  - Si $v$ no es hoja, entonces $v$ es vértice de corte, entonces supongamos $T = T_1 union T_2$. Entonces $abs(V(T - v))$ es impar. Si $u v in M$, apareamiento perfecto, supongamos que $u v in T_1$ (SPG). Luego $T_1$ es una componente conexa con un número impar de vértices, ya que el vértice eparejado de $v$ está en $T_1$

  $arrow.l.double$

  Sea $M = {e in A(T) bar.v sigma_(T - e) = 2}$. Como $sigma_(T - v) = 1, forall v in T$, una de las aristas incidentes en $v$ están en $M$, mostrando que $M != emptyset$.

  Sea $H$ la componente conexa impar y $u in V(H)$ el único vértice adyacente a $v$. $u v in M$, ya que si existiera $u'$ adyacente a $v$, $u' v$ no está en $M$

]
