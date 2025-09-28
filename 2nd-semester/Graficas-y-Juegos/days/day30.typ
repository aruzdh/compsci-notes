#import "../lib.typ":*

= 23 de Septiembre 2025

== Teorema

#theorem()[
  En una gráfica bipartita completa *existe una única* bipartición.
]

#proof()[
  Sean ${U_1, U_2}$, ${V_1, V_2}$ dos biparticiones de $V(G)$.

  Con $v in V_1$ y $v in U_1, v in U_2$. Supongamos que $v in U_i$, con $i = 1,2$, y tomamos $u in V_2$, entonces $v$ es adyacente a $u$ ya que $G$ es completa.

  Como $v in U_i$, con $i = 1,2$, se tiene que $u in U_j$, con $j = 1,2$ pero $i != j$. Entonces $V_1 subset U_j$.

  Análogamante $V_1 subset U_i$, y como ${V_1, V_2}, {U_1,U_2}$ son particiones de $V(G)$, entonces $V_2 = U_j$, y $V_1 = U_i$. Por lo tanto la partición es única.
]

// Los ejemplos están en las fotos

