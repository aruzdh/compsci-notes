#import "../lib.typ":*

= 15 de Agosto de 2025

#definition("Camino")[
  Sea $G$ una gráfica. Diremos que una sucesión de vértices $w = {v_0, v_1, dots, v_K}$ es un *camino*, denotado como $u v$-camino (donde $u,v$ son los extremos del camino), si la arista $(v_i, v_(i+1)) in A(G)$ para todo $i = (0, dots, k-1)$. 

]

#example()[
  Sea $G$ la siguiente grafica.

  #align(center)[
    #raw-render(
      ```
      graph camino {
        layout=neato;
        bgcolor="transparent";
        overlap=false; // Prevents nodes from overlapping

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


    h [pos="0,-.5!"]
    a [pos="2,-.5!"]
    b [pos="-2,-2!"]
    c [pos=".7,-1.5!"]
    i [pos="3,-2!"]
    j [pos="4,-2!"]
    e [pos="-1,-3.5!"]
    g [pos="1,-3.5!"]
    d [pos="3,-3.5!"]
    f [pos="0,0.0!"]
    

    a -- i
    a -- h[color="#ff8800"]
    a -- c[color="#ff8800"]
    a -- g
    c -- d
    d -- i
    d -- g
    h -- c[color="#ff8800"]
    h -- b[color="#ff8800"]
    h -- g[color="#ff8800"]
    b -- e
    b -- f[color="#ff8800"]
    e -- g
    a -- f[color="#ff8800"]

    }
      ```,
      width: 30em
    )
  ]

  El camino $w = {h,c,a,f,b,h,a,c,h,g}$ es representado por las aristas narajas. Notese que $h,a in V(G)$ y $(a,c) in A(G)$ se repiten. 
]

//TODO: Grafica


#note()[
  En un camino se pueden repetir vértices, aristas, o ambos.
]

== Trayectorias

#definition("Trayectorias")[
  Si $w$ es un _camino_ y además no repite vértices, entonces $w$ es una *trayectoria*, denotado como $u v$-trayectoria (donde $u,v$ son los extremos de la trayectoria).
]

#example()[
  Tomando $T = {h,a,c,d,g,e,b,f}$ en la siguiente grafica.

  #align(center)[
    #raw-render(
      ```
      graph camino {
        layout=neato;
        bgcolor="transparent";
        overlap=false; // Prevents nodes from overlapping

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


    h [pos="0,-.5!", color="#ff00ff"]
    a [pos="2,-.5!"]
    b [pos="-2,-2!"]
    c [pos=".7,-1.5!"]
    i [pos="3,-2!"]
    j [pos="4,-2!"]
    e [pos="-1,-3.5!"]
    g [pos="1,-3.5!"]
    d [pos="3,-3.5!"]
    f [pos="0,0.0!", color="#ff00ff"]
    

    a -- i
    a -- h[color="#ff00ff"]
    a -- c[color="#ff00ff"]
    a -- g
    c -- d[color="#ff00ff"]
    d -- i
    d -- g[color="#ff00ff"]
    h -- c
    h -- b
    h -- g
    b -- e[color="#ff00ff"]
    b -- f[color="#ff00ff"]
    e -- g[color="#ff00ff"]
    a -- f

    }
      ```,
      width: 30em
    )
  ]
  Las aristas moradas representan la trayectoria $T$. Notese que $T$ inicia en $h$ y termina en $f$
]

== Paseos

#definition("Paseo")[
  Si $w$ es un camino que no repite aristas, $w$ es un *paseo*.
]

#example()[
  Sea la siguiente grafica, y tomando $P = {h,g,e,b,h,c,d,i,a,h}$
  #align(center)[
    #raw-render(
      ```
      graph camino {
        layout=neato;
        bgcolor="transparent";
        overlap=false; // Prevents nodes from overlapping

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


    h [pos="0,-.5!", color="blue"]
    a [pos="2,-.5!"]
    b [pos="-2,-2!"]
    c [pos=".7,-1.5!"]
    i [pos="3,-2!"]
    j [pos="4,-2!"]
    e [pos="-1,-3.5!"]
    g [pos="1,-3.5!"]
    d [pos="3,-3.5!"]
    f [pos="0,0.0!"]

    a -- i[color="blue"]
    a -- h[color="blue"]
    a -- g
    c -- d[color="blue"]
    d -- i[color="blue"]
    d -- g
    h -- c[color="blue"]
    h -- b[color="blue"]
    h -- g[color="blue"]
    b -- e[color="blue"]
    b -- f
    e -- g[color="blue"]
    a -- f

    }
      ```,
      width: 30em
    )
  ]
  Las aristas azules representan el paseo $P$.
]

#note()[
  - Las trayectorias *son* paseos.
  - Los paseos *no siempre* son trayectorias.
]

== Camino Cerrado

#definition("Camino Cerrado")[
  Si $w$ es un camino en $G$, y sucede que $v_0 = v_k$, entonces es un camino cerrado
]

== Ciclo

#definition("Ciclo")[
  Si $t$ es una trayectoria tal que $v_0 = v_k$, entonces se llama *ciclo*.
]

== Longitud de un camino

#definition("Longitud de un Camino")[
  La *longitud de un camino*, denotado por $"l"(w)$, es el número de aristas que contiene el camino.
]

=== Teorema

#theorem()[
  Todo $u v$-camino contiene una $u v$-trayectoria.
]

#proof()[
  Por inducción sobre la longitud del camino.

  *Caso Base:* Sea $w$ un $u v$-camino tal que $"l"(w) = 1$

  Como $u != v$, entonces $w = {u,v}$ y no hay vértices repetidos

  *Caso Base (2):* Sea $w$ un $u v$-camino tal que $"l"(w) = 2$

  Así, $w = {u,x,v}$, por hipotesis $u!=v$, entonces si $x!=u$ y $x!=v$

  Si $x=u$ o $x=v$ entonces $(u,x)$ o $(x,v)$ es un lazo. Por tanto $w$ es una trayectoria.

  *hipotesis de Inducción:* Supongamos que para cualquier $u v$-camino $w$ tal que $"l"(w) < n$, tiene una $u v$-trayectoria.

  *Paso Inductivo:* Sea $w$ un $u v$-camino de longitud $n$. 

  $
  w = {u = v_0, v_1, dots, v_(n-1) = v}
  $

  Si todos los vértices son distintos, entonces $w$ es una trayectoria.

  //TODO: Grafica
  Supongamos que al menos existen $v_i, v_j in w$ tales que $v_i = v_j$

  Sea $S = {v_(i+1), v_(i+1), dots, v_(j-1)}$ el pedazo de $w$ que se encuentra entre $v_i$ y $v_j$ en $w$

  Como no admitimos lazos ni multiaristas entonces $"l"(S) >= 3$

  Consideremos el nuevo camino $w' = w - S$. Observemos que $"l"(w') < "l"(w) = n$, entonces cumple con la hipotesis de inducción, teniendo que existir una $u v$-trayectoria tal que $T subset.eq w' subset.eq w$, entonces $T$ es una trayectoria de $w$.

]
