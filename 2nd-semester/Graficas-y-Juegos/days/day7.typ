#import "../lib.typ":*

= 19 de Agosto 2025

== Operaciones en una Gráfica

Sea $G = (V(G),A(G))$ una gráfica

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


    v_1 [pos="0,-.5!"]
    v_2 [pos="2,-.5!"]
    v_3 [pos="3,-2!"]
    v_4 [pos="5,-2!"]
    v_5 [pos="3,-4!"]
    v_6 [pos="1,-4!"]
    v_7 [pos="-1.7,-3.5!"]
    v_8 [pos="-.3,-2.8!"]

    v_1 -- v_2
    v_1 -- v_8
    v_1 -- v_5
    v_1 -- v_7
    v_2 -- v_6
    v_2 -- v_3
    v_2 -- v_4
    v_3 -- v_8
    v_4 -- v_5
    v_5 -- v_6
    v_6 -- v_7
    v_6 -- v_8
  }
  ```,
      width: 36em
    )
  ]

=== Eliminar un Vértice

Sea $v in V(G)$. Llamamos $G - {v}$ a la gráfica con vértices $V(G) - {v}$ y $A(G - {v}) = {(x,y) bar.v (x,y) in A(G) and x != v and y != v}$

#example()[
  $G - {v_7}$, siendo subgráfica de $G$.
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


      v_1 [pos="0,-.5!"]
      v_2 [pos="2,-.5!"]
      v_3 [pos="3,-2!"]
      v_4 [pos="5,-2!"]
      v_5 [pos="3,-4!"]
      v_6 [pos="1,-4!"]
      v_8 [pos="-.3,-2.8!"]

      v_1 -- v_2
      v_1 -- v_8
      v_1 -- v_5
      v_2 -- v_6
      v_2 -- v_3
      v_2 -- v_4
      v_3 -- v_8
      v_4 -- v_5
      v_5 -- v_6
      v_6 -- v_8
    }
    ```,
        width: 30em
      )
    ]
]

=== Eliminar un Conjunto de Vértices

Sea $S subset.eq V(G)$. Llamamos $G - S$ a la gráfica con vértices $V(G) - S$ y $A(G - S) = {(x,y) bar.v (x,y) in A(G) and x,y in.not S}$

#example()[
  Sea $S = {v_2, v_6}$, con $G - S$ una subgráfica de $G$.
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


      v_1 [pos="0,-.5!"]
      v_3 [pos="3,-2!"]
      v_4 [pos="5,-2!"]
      v_5 [pos="3,-4!"]
      v_7 [pos="-1.7,-3.5!"]
      v_8 [pos="-.3,-2.8!"]

      v_1 -- v_8
      v_1 -- v_5
      v_3 -- v_8
      v_4 -- v_5
      v_1 -- v_7

    }
    ```,
        width: 37em
      )
    ]
]

=== Eliminar una Arista

Sea $e = (x,y) in A(G)$. Llamamos $G - {e}$ a la gráfica resultante de solo eliminar la arista $e$.

#example()[
  $G - {(v_1,v_8)}$
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


      v_1 [pos="0,-.5!"]
      v_2 [pos="2,-.5!"]
      v_3 [pos="3,-2!"]
      v_4 [pos="5,-2!"]
      v_5 [pos="3,-4!"]
      v_6 [pos="1,-4!"]
      v_7 [pos="-1.7,-3.5!"]
      v_8 [pos="-.3,-2.8!"]

      v_1 -- v_2
      v_1 -- v_5
      v_1 -- v_7
      v_2 -- v_6
      v_2 -- v_3
      v_2 -- v_4
      v_3 -- v_8
      v_4 -- v_5
      v_5 -- v_6
      v_6 -- v_7
      v_6 -- v_8
    }
    ```,
        width: 36em
      )
    ]
]

#note()[
  $G - {(x,y) = e}$, con $e$ una arista, es una subgráfica generadora.
]

=== Eliminar un Conjunto de Aristas

Sea $E subset.eq in A(G)$. Llamamos $G - E$ a la gráfica resultante de eliminar las aristas de $E$.

#example()[
  Sea $E = {(x,y) in A(G) bar.v x,y "son impares"}$
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


      v_1 [pos="0,-.5!"]
      v_2 [pos="2,-.5!"]
      v_3 [pos="3,-2!"]
      v_4 [pos="5,-2!"]
      v_5 [pos="3,-4!"]
      v_6 [pos="1,-4!"]
      v_7 [pos="-1.7,-3.5!"]
      v_8 [pos="-.3,-2.8!"]

      v_1 -- v_2
      v_1 -- v_8
      v_2 -- v_6
      v_2 -- v_3
      v_2 -- v_4
      v_3 -- v_8
      v_4 -- v_5
      v_5 -- v_6
      v_6 -- v_7
      v_6 -- v_8
    }
    ```,
      width: 36em
    )
  ]

]

=== Contracción de una Arista

Sea $e = (x,y) in A(G)$. Para "contraer" esa arista:
+ Eliminamos la arista $e$.
+ Los extremos $y$ y $x$ vértices se "fusionan" en un nuevo vértice $w = x y$.
+ Las aristas que incidian en $x$ o $y$ ahora inciden en $w$. Se eliminan multiaristas. 

#example()[
  Considerando $e = (v_2,v_3)$.
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


      v_1 [pos="0,-.5!"]
      v_4 [pos="5,-2!"]
      v_5 [pos="3,-4!"]
      v_6 [pos="1,-4!"]
      v_7 [pos="-1.7,-3.5!"]
      v_8 [pos="-.3,-2.8!"]
      v_2v_3[pos="3,-1.5!"]

      v_1 -- v_2v_3
      v_1 -- v_8
      v_1 -- v_5
      v_1 -- v_7
      v_2v_3 -- v_6
      v_2v_3 -- v_4
      v_2v_3 -- v_8
      v_4 -- v_5
      v_5 -- v_6
      v_6 -- v_7
      v_6 -- v_8
    }
    ```,
      width: 36em
    )
  ]

]

== Operaciones entre Gráficas

Sean $G_1 = (V_1, A_1), G_2 = (V_2, A_2)$ gráficas.

=== Unión de Gráficas

Sean $G_1$ y $G_2$, respectivamente, gráficas tales que $V_1 inter V_2 = emptyset$. Llamamos a la unión $G_1 union G_2$ a la gráfica con 

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


    1 [pos="-1,0!"]
    2 [pos="0,0!"]

    a [pos="2.8,0!"]
    b [pos="3.5,1!"]
    c [pos="4.2,0!"]

    1 -- 2

    a -- b
    b -- c

  }
  ```,
      width: 30em
    )
  ]
$
V(G_1 union G_2) = V_1 union V_2
space.quad
"y"
space.quad
A(G_1 union G_2) = A_1 union A_2
$

#example()[
  La unión de $G_1$ y $G_2$ queda de la siguiente manera:
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


      1 [pos="-1,0!"]
      2 [pos="0,0!"]

      a [pos="2.8,0!"]
      b [pos="3.5,1!"]
      c [pos="4.2,0!"]


      a -- b
      b -- c

    }
    ```,
        width: 30em
      )
    ]
]

=== Suma de Gráficas

La suma, denotado por $G_1 + G_2$. Es la gráfica con 
$
V(G_1 + G_2) = V_1 union V_2
space.quad
"y"
space.quad
A(G_1 + G_2) = A_1 union A_2 union {(x,y) bar.v x in V_1 and y in V_2}
$

#example()[
  La suma de $G_1$ y $G_2$ queda de la siguiente manera:
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
      b [pos="1.5,0!"]
      c [pos=".8,1!"]
      2 [pos="0,-1!"]
      a [pos="1.5,-1!"]

      1 -- 2
      1 -- b
      1 -- a
      1 -- c
      2 -- b
      2 -- a
      2 -- c
      b -- a
      b -- c


    }
    ```,
      width: 15em
    )
  ]

]

=== Producto Cartesiano 

El producto cartesiano, denotado por $G_1 square G_2$. Es la gráfica con 
$
V(G_1 square G_2) = {x y bar.v x in V_1 and y in V_2}\
"y"\
A(G_1 square G_2) = {(x_1 y_1, x_2 y_2) in A(G_1 square G_2)} arrow.l.r.long.double
cases(
(x_1 = x_2 and (y_1, y_2) in A_2)\
(y_1 = y_2 and (x_1, x_2) in A_1)
)
$

#example()[
  El producto cartesiano entre $G_1$ y $G_2$ queda como:
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

    "2a" [pos="-1,-1!"]
    "2b" [pos="0,-1!"]
    "2c" [pos="1,-1!"]

    "1a" -- "1b"
    "1a" -- "2a"
    "1b" -- "1c"
    "1b" -- "2b"
    "1c" -- "2c"
    "2a" -- "2b"
    "2b" -- "2c"
  }
  ```,
      width: 20em
    )
  ]


]

#note()[
  Esta operación *no* es una contracción.
]

