#import "../lib.typ":*

= 02 de Septiembre 2025

== Gráfica Máxima Acíclica

#definition("Gráfica Máxima Acíclica")[
  Sea $G$ una gráfica. $G$ es *máxima acíclica* si para cualquier par de vértices de $G$ tal que $(x,y) in.not A(G)$, $G union {(x,y)}$ tiene un ciclo.
]

== Teorema

#theorem()[
  Sea $G$ una gráfica conexa. $G$ es un árbol si y sólo si $G$ es máxima con la propiedad de ser acíclica.

  $arrow.double$

  Sea $G$ un árbol. Considero $x,y in V(G)$, $(x,y) in.not A(G)$. Como $x,y in V(G)$, existe una única $x y$-trayectoria $w$

  Si $G union {(x,y)} arrow.double G$ tiene un ciclo

  $arrow.l.double$

  $G$ es una gráfica que satisface la propiedad de ser máxima acíclica. Como por hipótesis $G$ también es conexa, entonces $G$ es una árbol.
]

