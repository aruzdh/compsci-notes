#import "../lib.typ": *

= 24 de Octubre 2025 

== Bloques de una Gráfica

#definition("Bloques de una Gráfica")[
  Sea $G$ una gráfica simple y conexa, y sea $S$ un conjunto de corte $(S subset.eq V(G))$.
  Tomamos $V_1$ el conjunto de vértices de la componente conexa 1, $V_2$ el conjunto de vértices de la componente conexa 2, $dots$, $V_k$ el conjunto de vértices de la componente conexa k. 

  Llamamos *bloque $i$-esimo* a $G_i = <V_i union S>$. A la unión de los $G_i$'s se le llama *bloques de $G$*.
]

// Ejemplo en las fotos

#definition("Coincidencia de Color")[
  Decimos que las coloraciones de los bloques $G_1, G_2, dots, G_k$ coinciden en $S$ si $forall v in S$ tiene el mismo color en cada $G_i$
]

#definition("Clan")[
  Un *clan* de una gráfica $G$ es una subgráfica propia $H$ que sea completa.
]

== Teorema

#theorem()[
  En una gráfica $G$ crítica (si $chi(G) = k arrow.double forall H " subpropia", chi(H) < k$), ninguno de sus conjuntos de corte es clan.
]

#proof()[
  Por contradicción.

  Sea $G$ gráfica tal que $chi(G) = k$ y sea crítica tal que el generado por su conjunto de corte sea clan. Sean $G_1, G_2, dots, G_n$ los bloques de $G$.

  Como $G$ es crítica, $chi(G_i) < k$, cada $G_1$ puede ser $k-1$ coloreable. Luego, como $S$ su conjunto de corte es un clan, se necesita al menos $abs(S)$ para colorear a $S$ y $abs(S) < k$

  Esas $k-1$ coloraciones las puedo arreglar de manera que coincidan en $S$. Cada bloque no necesita más de $k-1$ colores, y $S$ que es clan está propiamente coloreado y coincide. Se necesita $k-1$ colores para colorear bien
  $
  a union.big_(i = 1)^n G_i = G
  $
]

#theorem()[
  Toda gráfica crítica es un bloque (no tiene vértices de corte).
]

#proof()[
  Suponemos que $G$ es crítica pero no es bloque. Sea $v in V(G)$ tal que $G - {v}$ es no conexa. Entonces $<v> = K_1$, y por el teorema anterior, $G$ no puede tener cortes que sean clan, y entonces no puede haber cortes.
]

#theorem("Teorema de Brooks")[
  Si $G$ es gráfica simple y conexa, y que no sea completa ni que tenga ciclos impares, entonces 
  $
  chi(G) <= Delta
  $
]

#theorem()[
  Las gráficas 4-crómaticas tiene como subgráfica a la gráfica completa $K_4$
]

== Conjetura de Hajos

Si $G$ es k-crómatica, se puede contraer $G$ a una completa $K_k$

