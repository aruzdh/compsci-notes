#import "../lib.typ":*

= 29 de Agosto 2025

== Excentricidad

#definition("Excentricidad")[

  Para cada vértice $v in V(G)$, y para todos los demás vértices $w in V(G), w != v$. Definimos la *excentricidad*, denotado por $"ex"(v)$ o $epsilon(V)$, en $v$ como la máxima de las $"d"(v,w)$. Es decir
  $
  epsilon(v) = "max"{"d"(v,w) bar.v w != v in V(G)}
  $
]

#note()[
  Si $G$ *no* es conexa, $epsilon(v) = infinity$, $forall v in V(G)$
]

#definition("Diametro")[
  La excentricidad máxima es el *diametro*:
  $
  "max"{epsilon(v) bar.v v in V(G)}
  $
]

#definition("Radio")[
  La excentricidad minima es el *radio*:
  $
  "min"{epsilon(v) bar.v v in V(G)}
  $
]

#example()[
  Sea la siguiente gráfica.

  #align(center)[
    #raw-render(
      ```
      graph camino {
        layout=neato;
        bgcolor="transparent";
        overlap=false;

      node [
        shape=circle,
        style=filled,
        fillcolor="transparent", 
        fontcolor=black,
        penwidth=2,
        color="#333333",
        fixedsize=true,
        width=0.5
      ];

      edge [
        color="#666666",
        penwidth=1.5
      ];

      A [pos="0,-1!"]
      B [pos="1,0!"]
      C [pos="1,-2!"]
      E [pos="3,0!"]
      D [pos="3,-2!"]
      F [pos="4,-1!"]

      A -- B -- D -- F -- E -- C -- A
      B -- C
      E -- D

    }
    ```,
        width: 20em
      )
    ]
  $
  "d"(A,B) = 1, space.med
  "d"(A,C) = 1, space.med
  "d"(A,D) = 2, space.med
  "d"(A,E) = 2, space.med
  "d"(A,F) = 3
  $

  Entonces, $epsilon(A) = 3$

  $
  "d"(B,A) = 1, space.med
  "d"(B,C) = 1, space.med
  "d"(B,D) = 2, space.med
  "d"(B,E) = 2, space.med
  "d"(B,F) = 2
  $
  Entonces $epsilon(B) = 2$

  Con el mismo proceso se obtiene lo siguiente:
  $
  epsilon(C) = 2, space.med
  epsilon(D) = 2, space.med
  epsilon(E) = 2, space.med
  epsilon(F) = 2
  $

  Por otra lado, el diametro es 3, y el radio es 2.
]

#definition("Centros")[
  Los vértices donde la excentricidad sea minima se llaman *centros*. El conjunto de centros es el centro de la gráfica.
]

#note()[
  Los centros son llamados raíces
]

#example()[
  En el ejemplo anterior, $B, E, C, D$ son centros. ${B,C,D,E}$ es el centro de la gráfica.
]

#example()[
  Sea lo siguiente gráfica.

  #align(center)[
    #raw-render(
      ```
      graph camino {
        layout=neato;
        bgcolor="transparent";
        overlap=false;

      node [
        shape=circle,
        style=filled,
        fillcolor="transparent", 
        fontcolor=black,
        penwidth=2,
        color="#333333",
        fixedsize=true,
        width=0.5
      ];

      edge [
        color="#666666",
        penwidth=1.5
      ];

      x_1 [pos="0,0!"]
      x_2 [pos="0,-2!"]
      x_3 [pos="1,-2.5!"]
      x_4 [pos="1,-1!"]
      x_5 [pos="2,-1!"]
      x_6 [pos="3,-1!"]
      x_7 [pos="4,0!"]
      x_8 [pos="4,-2!"]

      x_1 -- x_4 -- x_5 -- x_6 -- x_8
      x_2 -- x_4
      x_3 -- x_4
      x_6 -- x_7

    }
    ```,
        width: 25em
      )
    ]

  Tenemos que
  $
  epsilon(x_1) = 4, space.med
  epsilon(x_2) = 4, space.med
  epsilon(x_3) = 4, space.med
  epsilon(x_4) = 3, space.med
  epsilon(x_5) = 2, space.med
  epsilon(x_6) = 3, space.med
  epsilon(x_7) = 4, space.med
  epsilon(x_8) = 4
  $
  Además, $x_5$ es el centro de la gráfica.
]

== Teorema

#theorem()[
  Todos los árboles tienen un centro o dos centros adyacentes.
]

#proof()[
  Por inducción sobre $abs(V(G)) = n$.

  *Caso Base.* Para $n = 1, n = 2$, y $n = 3$ es sencillo mostrarlo.

  *Hipótesis de Inducción:* Sea $k in NN$. Supongamos que $forall T$ árbol tal que $abs(V(T)) < k$, el teorema se cumple.

  *Paso Inductivo.* Sea $T$ un árbol tal que $abs(V(T)) = k$. 

  Tenemos 
  + $T$ tiene al menos dos vértices de grado 1
  + Si quitamos los hojas, lo gráfica resultante es árbol.

  Sea $H = {x_1, dots, x_l}$ las hojas de $T$. Por (1), $abs(H) >= 2$. 

  Consideremos $T' = T - H$. Por (2), $T'$ es árbol, y $abs(V(T')) = abs(V(T)) - abs(H) = k - abs(H) < k$

  Por Hipótesis de Inducción, $T'$ tiene un centro o dos adyacentes. Afirmamos que el (o los) centro $T'$ es el (los) centro de $T$.

  - Caso 1: Sea $x in V(T')$ el único centro. Por definición, $forall w in V(T), epsilon(x) < epsilon(w)$

    $
    "max"{"d"(x,v) bar.v v in T'} < "max"{"d"(w,v) bar.v w,v in T'}\
    arrow.l.r.long.double\
    "max"{"d"(x,v) bar.v v in T'} + 1< "max"{"d"(w,v) bar.v w,v in T'} + 1\
    arrow.l.r.long.double\
    epsilon_T (x) < epsilon_T' (v) space.quad forall v != x
    $

  - Caso 2: Sean $y,x$ los centros de $T'$. $(x,y) in T'$ y $(x,y) in T$.


  Si $x,y$ son centros, entonces $epsilon_T' (x) = epsilon_T' (y)$. 
  $
  "max"{"d"(x,v) bar.v v in T'}  < "max"{"d"(w,v) bar.v w != x and v != x}\
  arrow.l.r.long.double\
  "max"{"d"(y,v) bar.v v in T'} < "max"{"d"(w,v) bar.v w !=y and v !=y}\
  $

  Como hay una única manera de llegar de $x$ (o de $y$) a las hojas de $T$

  $
  "max"{"d"(x,v)} + 1 < "max"{"d"(w,v)} + 1\
  arrow.l.r.long.double\
  "max"{"d"(x,v) bar.v v in T} < "max"{"d"(w,v) bar.v v!=x, w != x in T}
  $
  El caso con $y$ es similar.
]

