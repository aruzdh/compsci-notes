#import "../lib.typ":*

= 20 de Agosto 2025

== Distancia entre Vértices

Sea $G$ una gráfica, y dos vértices $u,v in V(G)$.

#definition("Distancia")[
  La *distancia*, denotada por $"d"(u,v)$, es la longitud de la minima trayectoria entre $u$ y $v$, es decir:
  $
  "d"(u,v) = "min"{l(w) bar.v w "es una "u v"-trayectoria"}
  $
]

#note()[
  + Si $"d"(u,v) = 0$, entonces $u=v$
  + Si $"d"(u,v) = 1$, entonces $(u,v) in A(G)$
  + Si no hay trayectorias que unan a $u$ y $v$, entonces $"d"(u,v) = infinity$
]

#exercise("Tarea Moral")[
  Probar que para cualesquiera $u,v,w in V(G)$
  $
  "d"(u,w) <= "d"(u,v) + "d"(v,w)
  $
]

== Conexidad

Sea $G = (V(G), A(G))$ una gráfica. Sea $u,v in V(G)$, diremos que $u$ y $v$ están *conectados* si existe una $u v$-trayectoria entre ellos.

#definition("Gráfica Conexa")[
  Diremos que una *gráfica $G$ es conexa* si cualquier par de vértices están conectados. En otro caso, se llama *disconexa*.
]

//TODO: Hacer grafica
#example()[
  Sea $G$ la siguiente gráfica.

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


    1 [pos="0,0!"]
    2 [pos="1,-1!"]
    3 [pos="-1,-1!"]
    9 [pos="0,-2!"]

    5 [pos="1,-3!"]
    4 [pos="-1,-3!"]

    6 [pos="4,-2!"]
    7 [pos="4.5,-1!"]
    8 [pos="4.5,-3!"]

    1 -- 2 -- 9 -- 3 -- 1
    5 -- 9 -- 4
    7 -- 6 -- 8


  }
  ```,
      width: 35em
    )
  ]


  1,2,3,4,5 y 9 *si* están conectados, así como 6,7 y 8 están conectados, pero $"d"(1,7) = infinity$, por tanto $G$ es disconexa
]

#note()[
  En *cualesquiera grafica* se puede definir la relación $u tilde v arrow.r.l.double.long exists u v"-trayectoria"$, donde $tilde$ es de equivalencia.
]

#proof()[
  - Reflexividad: $u tilde u$ es inmediato.
  - Simetria: Toda $u v$-trayectoria es una $v u$-trayectoria. Entonces, si $u tilde v$, $v tilde u$.
  - Transitividad: 

    Si $u tilde v$, sea $T_(u v) = {u=u_0, u_1, dots, u_k = v}$ una $u v$-trayectoria.
    Si $v tilde w$, sea $T_(v w) = {v=v_0, v_1, dots, v_l = w}$ una $v w$-trayectoria.

    Podemos tomar $T = {u = u_0, dots, u_k = v = v_0, dots, v_l = w}$ un camino de $u$ a $w$. Además, debe existir una trayectoria en $T$ entre $u$ y $w$ (dem pasada). Por tanto $u tilde w$
]

#definition("Componentes Conexas")[
  Sea $G$ una grafica. A las clases de equivalencia definidas por $tilde$ las llamamos *componentes conexas* (particiones ajenas). Se denota como:
  $
  omega(G) = "# componentes conexas"
  $
]

#important()[
  Las componentes conexas *son ajenas* o *son la misma*.
]

#proof()[
  Sea $C_i$ y $C_j$ componentes conexas distintas, pero $C_i inter C_j != emptyset$. Debe existir $x in C_i inter C_j$

  Sea $u_i != x in C_i$, $u_j != x in C_j$. Como $x in C_i$, entonces $exists u_i x$-trayectoria $T_1$. Como $x in C_j$, entonces $exists x u_j$-trayectoria $T_2$. Entonces $w = T_1 union T_2$ es un $u_i u_j$-camino que tiene una $u_i u_j$-trayectoria.
  Lo anterior genera que
  $
  u_i in C_j and u_j in C_i
  $
]

#example()[
  La siguiente es una grafica disconexa con 3 componentes conexas.
#align(center)[
    #raw-render(
      ```
  graph grafo_no_conexo {
      layout=fdp
      compound=true;

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

      subgraph cluster_C1 {
          label = "C1";
          fontsize = 14;
          fontcolor = "#ff00ff";
          style = "rounded";
          color = "gray";

          node [
            color="#ff00ff"
          ]

          edge [
            color="#ff00ff"
          ]

          c1_n1, c1_n2, c1_n3, c1_n4, c1_n5, c1_n6;

          c1_n1 -- c1_n2
          c1_n2 -- c1_n3;
          c1_n2 -- c1_n4;
          c1_n3 -- c1_n4
          c1_n4 -- c1_n5;
          c1_n5 -- c1_n6;
      }

      subgraph cluster_C2 {
          label = "C2";
          fontsize = 14;
          fontcolor = "#333333";
          style = "rounded";
          color = "gray";

          node [
            color="green"
          ]

          edge [
            color="green"
          ]
          c2_n1, c2_n2, c2_n3, c2_n4, c2_n5, c2_n6, c2_n7

          c2_n1 -- c2_n3;
          c2_n2 -- c2_n3;
          c2_n4 -- c2_n3;
          c2_n5 -- c2_n3;
          c2_n5 -- c2_n6;
          c2_n6 -- c2_n7;
      }

      subgraph cluster_C3 {
          label = "C3";
          fontsize = 14;
          fontcolor = "blue";
          style = "rounded";
          color = "gray";
          node [
            color="blue"
          ]

          edge [
            color="blue"
          ]

          c3_n1 -- c3_n2;
      }
  }
  ```,
      width: 35em
    )
  ]
]

#note()[
  Se tiene que
  $
  1 <= omega(G) <= abs(V(G))
  $
  donde 1 representa el caso para la grafica conexa y $abs(V(G))$ la grafica vacía
]

