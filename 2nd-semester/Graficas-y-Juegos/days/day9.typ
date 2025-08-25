#import "../lib.typ":*

= 21 de Agosto 2025

== 

//TODO: gráficas
Sean $G_1 = (V_1, A_1)$ y $G_2 = (V_2, A_2)$ gráficas. $G_1 + G_2 = (V_plus.circle, A_plus.circle)$

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
    2 [pos="0,-2!"]
    4 [pos="-1,-3!"]
    3 [pos="1,-3!"]


    1 -- 2 -- 3
    2 -- 4

    a [pos="3,0!"]
    b [pos="4,-1.5!"]
    c [pos="3,-3!"]
    d [pos="3,-3!"]
    e [pos="2,-1.5!"]

    c -- a -- e -- b -- d

  }
  ```,
      width: 30em
    )
  ]



=== Suma

$V_plus.circle = V_1 union V_2$
$A_plus.circle = A_1 union A_2 union {(x,y) bar.v x in V_1 and y in V_2}$


//TODO: gráficas

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
    2 [pos="0,-2!"]
    4 [pos="-1,-3!"]
    3 [pos="1,-3!"]


    1 -- 2 -- 3
    2 -- 4

    a [pos="3,0!"]
    b [pos="4,-1.5!"]
    c [pos="3,-3!"]
    d [pos="3,-3!"]
    e [pos="2,-1.5!"]

    c -- a -- e -- b -- d

    1 -- a
    1 -- b
    1 -- c
    1 -- d
    1 -- e

    2 -- a
    2 -- b
    2 -- c
    2 -- d
    2 -- e

    3 -- a
    3 -- b
    3 -- c
    3 -- d
    3 -- e

    4 -- a
    4 -- b
    4 -- c
    4 -- d
    4 -- e

  }
  ```,
      width: 30em
    )
  ]

=== Producto Cartesiano

$G_1 square G_2 = (V_square, A_square)$
$V_square = {v_1 v_2 bar.v v_1 in V_1, v_2 in V_2}$

//TODO: fix cases
$
A_square = {(x_1 y_1, x_2 y_2) in A(G_1 square G_2) bar.v cases(
  x_1 = x_2 and exists (y_1, y_2) in A_2\
  y_1 = y_2 and exists (x_1, x_2) in A_1\
)
}
$

//TODO: gráfica - bend edge

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


    "1a" [pos="-1,0!"]
    "1b" [pos="0,0!"]
    "1c" [pos="1,0!"]
    "1d" [pos="2,0!"]
    "1e" [pos="3,0!"]

    "2a" [pos="-1,-1!"]
    "2b" [pos="0,-1!"]
    "2c" [pos="1,-1!"]
    "2d" [pos="2,-1!"]
    "2e" [pos="3,-1!"]

    "3a" [pos="-1,-2!"]
    "3b" [pos="0,-2!"]
    "3c" [pos="1,-2!"]
    "3d" [pos="2,-2!"]
    "3e" [pos="3,-2!"]

    "4a" [pos="-1,-3!"]
    "4b" [pos="0,-3!"]
    "4c" [pos="1,-3!"]
    "4d" [pos="2,-3!"]
    "4e" [pos="3,-3!"]

    // "1c" -- "1a" -- "1e"
    // "1a" -- "2a"
    // "1b" -- "1c"
    // "1b" -- "2b"
    // "1c" -- "2c"
    // "2a" -- "2b"
    // "2b" -- "2c"
  }
  ```,
      width: 20em
    )
  ]


== Demostraciones

Prueba que en toda gráfica $G$ el número de vértices de grado impar es par.

//TODO:
#proof()[
  Sea $G$ una gráfica. Consideramos 
  $
  V_1 = {v in V(G) bar.v v "es de grado par"
  space.quad
  "y"
  space.quad
  V_2 = {v in v(G) bar.v v "es de grade impar"}
  $

  $
  underbrace(2 abs(A(G)), "es par") = sum_(v in v(G)) "d"(v) =
  underbrace(sum_(v in V_1) "d"(v), "es par") 
  + underbrace(sum_(v in V_2) "d"(v), "tiene que ser par")
  $

  además, para que la $sum_(v in V_2) "d"(v)$ sea par tiene que haber una cantidad par de vértices en $V_2$.
]

Pruebe que 
$
delta <= 2 abs(A(G)) / abs(v(G)) <= Delta
$

//TODO:
#proof()[
  Sea $G$ una gráfica. Sabemos que que $delta <= "d"(v) <= Delta$.

  $abs(v(G)) delta <= abs(v(G)) "d"(v) <= abs(v(G)) Delta$
]
