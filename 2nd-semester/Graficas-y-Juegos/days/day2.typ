#import "../lib.typ":*

= 12 de Agosto de 2025 

Retomando la definición del Grado de un Vértice.
Dado que
$
abs(N_G (v)) = d_G (v), space.med forall v in V(G)
$
se tiene que
$
0 <= d_G (v) <= abs(V(G)) - 1
$
ya que no se consideran lazos, multiaristas, ni aristas dirigidas.

#definition("Grado Mínimo de G")[
  Dada una grafica $G$. El *grado mínimo de G*, denotado por $delta (G)$, es el grado más pequeño considerando todos los vértices en $V(G)$.
]

#definition("Grade Máximo de G")[
  Dada una grafica $G$. El *grado máximo de G*, denotado por $Delta (G)$, es el grado más grande considerando todos los vértices en $V(G)$.
]

//TODO: hacer las referencias
#example()[
  Dada la grafica $G$ del ejemplo 1.
  $
  delta (G) = 2
  space.quad "y" space.quad
  Delta (G) = 5
  $
]

#example()[
  Dada la grafica $G$ del ejemplo 2.
  $
  delta (G) = 2
  space.quad "y" space.quad
  Delta (G) = 6
  $
]

#definition("Vértices Adyacentes")[
  Dada una grafica $G = (V(G), A(G))$ y $u,v in V(G)$. Se dice que los vértices $u$ y $v$ son *adyacentes* si $a = (u,v) in A(G)$, es decir. si $u$ y $v$ nos extremos de una arista de $G$
]

#definition("Aristas Incidentes")[
  Dada una grafica $G = (V(G), A(G))$ y $a,b in A(G)$. Se dice que las aristas $a$ y $b$ son *incidentes* si $a = (u,v), b = (u,w) in A(G)$, es decir. si $a$ y $b$ comparten un extremo.

  Además, la arista $a$ *incide* en $v in V(G)$ si $a=(v,x)$ para otro $x in V(G)$
]

//TODO: Poner ejemplo para una grafica regular
== Tipos de Graficas
Sea $G$ una grafica.
- Trivial: $G$ tiene solo un vértice.
  #align(center)[
    #raw-render(```
      graph {
        node [fixedsize=true, width=0.5, height=0.5, shape=circle];
        A
      }
    ```) 
  ]
- Vacía: $G$ no tiene aristas
  #align(center)[
    #raw-render(```
      graph {
        node [fixedsize=true, width=0.5, height=0.5, shape=circle];
        graph [
          layout = fdp
        ]
        A B C
      }
    ```) 
  ]
- Completa, denotada por $K_n$: Todos los vértices de $G$ están conectados.
  #align(center)[
    #raw-render(```
      graph {
        node [fixedsize=true, width=0.5, height=0.5, shape=circle];
        graph [
          layout = fdp
        ]
        A[pos="2,6"]
        B[pos="9,1"]
        C[pos="3,2"]
        D[pos="9,2"]

        A -- B
        A -- C
        A -- D
        B -- C
        B -- D
        C -- D
      }
    ```) 
  ]
- Regular, denotada por $k-"regular"$: $d_G (v) = K, space.med forall v in V(G)$


== Suma de Grados de G

Considerando lo siguiente. Sea $G$ una grafica con $"orden" = abs(v(G)) = n$ y $"tamaño" = abs(A(G)) = m > 0$. Además, $V(G) = {v_1, v_2, dots, v_n}$.

Si $v_i!= v_j$, pero son tales que hay una arista entre si, entonces $v_i$ es vecino de $v_j$, y $v_j$ vecino de $v_i$.
Con lo anterior se observa que
$
sum_(v in V(G)) d_G (v) = 2m
$
De manera equivalente se tiene
$
m = (sum_(v in V(G)) d_G (v) ) /2
$

Lo anterior se establece en el siguiente teorema.

#theorem()[
  Para cualquier grafica $G$ de orden $n$ y tamaño $m$ se cumple
  $
  sum_(v in V(G)) d_G (v) = 2m
  $
]

== Principio del Palomar

#theorem("Principio del Palomar")[
  En cualquier grafica G hay *al menos* 2 vértices con el mismo grado.
]

#proof()[
  Sea $G$ una grafica tal que su orden es $n$ y su tamaño es $m$.
  Considerando los siguientes casos:
  - $G$ es grafica vacía. 

    Es trivial.
  - En otro caso. 

    Supongamos que *todos* los vértices tienen grado distinto. Sea $V(G) = {v_0, v_1, dots, v_(n-1)}$ tales que
    $
    d_G (v_0) = 0\
    d_G (v_1) = 1\
    dots\
    d_G (v_(n-1)) = n-1\
    $
    Al cumplirse lo anterior, se tiene que $v_(n-1)$ está conectado con todos los vértices, generando una contradicción con el hecho de que $d_G (v_0) = 0$.

  $
  therefore "En cualquier grafica G hay al menos 2 vértices con el mismo grado."
  $
]

== Subgraficas

#definition("Subgrafica")[
  Sea $G = (V(G), A(G))$ una grafica. Se dice que $H = (V(H), A(H))$ es *subgrafica* de $G$ si:
  - $V(H) subset.eq V(G)$
  - $A(H) subset.eq A(G)$
]

#definition("Subgrafica Generadora")[
  Sea $G = (V(G), A(G))$ una grafica. Se dice que $H = (V(H), A(H))$ es *grafica generadora* de $G$ si $V(H) = V(G)$.
]

#definition("Subgrafica Inducida")[
  Sea $G = (V(G), A(G))$ una grafica, $S subset.eq V(G)$, y $(u,v) in A(G)$ tales que $u,v in S$. Se dice que $G_[S]$ es la *subgrafica inducida* por $S$.
]

#example()[
  Considerando el ejemplo 1. Sea $S = {"Nombres que empiezan con \"L\""} = {"Lupita", "Luis"}$. $G_[S]$ queda de la siguiente manera.
    #align(center)[
    #raw-render(```
      graph {
        node [fixedsize=true, width=0.5, height=0.5, shape=circle];
        Luis Lupita
      }
    ```) 
  ]

]

#example()[
  Considerando el ejemplo 1. Sea $S = {"Personas del sexo masculino"} = {"Luis", "Jose", "Pedro"}$.$G_[S]$ queda de la siguiente manera.
    #align(center)[
    #raw-render(```
      graph {
        node [fixedsize=true, width=0.5, height=0.5, shape=circle];
        Jose -- Luis
        Pedro
      }
    ```) 
  ]

]

//TODO: hacer grafica

#example()[
  Considerando el ejemplo 2, y considerando una grafica $H$ tal que:
  - $V(G) = V(H)$
  - $A(H) = {(u,v) bar.v (u,v) "son vecinos en" G and u " ó " v "colindan con otro estado"}$
]

