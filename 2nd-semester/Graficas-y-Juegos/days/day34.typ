#import "../lib.typ":*

= 03 de Octubre 2025 

== Demostraciones - Propiedades

#proposition()[
  Sea $G$ una gráfica bipartita con $abs(X) = r$ y $abs(Y) = s$.
  - $abs(A(G)) <= r s$
  - $abs(A(G)) <= abs(V(G))^2 / 4$
  - Si $G = {X,Y}$ es $k-$regular, con $k >= 1$, entonces $abs(X) = abs(Y)$
]

#exercise()[
  Describa a las gráficas bipartitas para las cuales se cumple la igualdad $abs(A(G)) = abs(V(G))^2 / 4$

  Para las bipartitas completas.
]

#theorem()[
  Un árbol tiene un apareamiento perfecto (todos los vértices saturados)si y solo si $sigma_(G-v)("# de vértices en " G-v = 1), forall v in V(G)$
]

