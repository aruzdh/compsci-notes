#import "../lib.typ":*

= 22 de Agosto 2025

== Proposición

// #graph(
//     ```
//     graph camino {
//       layout=neato;
//       bgcolor="transparent";
//       overlap=false;
//
//     node [
//       shape=circle,
//       style=filled,
//       fillcolor="transparent", 
//       fontcolor=black,
//       penwidth=2,
//       color="#333333",
//       fixedsize=true,
//       width=0.5
//     ];
//
//     edge [
//       color="#666666",
//       penwidth=1.5
//     ];
//
//
//     1 [pos="0,0!"]
//     2 [pos="0,-2!"]
//     4 [pos="-1,-3!"]
//     3 [pos="1,-3!"]
//
//
//     1 -- 2 -- 3
//     2 -- 4
//
//     a [pos="3,0!"]
//     b [pos="4,-1.5!"]
//     c [pos="3,-3!"]
//     d [pos="3,-3!"]
//     e [pos="2,-1.5!"]
//
//     c -- a -- e -- b -- d
//
//   }
//   ```
// )

#proposition()[
  Si $G$ una gráfica *no* es conexa, entonces $G^c$ *si* es conexa.
]

#proof()[
  Sea $G$ una gráfica y $G^c$ us complemento. Sean $u,v in V(G)$. Como $G$ no es conexa, entonces $u$ y $v$ están conectados en $G$ o no lo están.

  - Caso 1: Si no existe una $u v$-trayectoria (no están conectados), entonces $(u,v) in.not A(G)$, y así $(u,v) in A(G^c)$ y $u$ y $v$ están conectados en $G^c$.
  - Caso 2: Supongamos que $u,v$ si están conectados en $G$.
    - Si $(u,v) in.not A(G)$, entonces $(u,v) in A(G^c)$
    - Si $(u,v) in A(G)$, entonces $u$ , $v$ están en una misma componente conexa. Dado que $G$ no es conexa, existe al menos otra componente conexa (no vacía), existiendo $x in V(G)$ tal que $x$ está en dicha componente conexa. 

      Como ya probamos, las componentes conexas son ajenas, garantizando que las aristas $(x,u), (x,v) in.not A(G)$, y entonces $(x,u), (x,v) in A(G^c)$. Tomamos $w = {u,x,v}$ una trayectoria en $G^c$ que una a $u$ con $v$.
]

== Vértices de Corte

#definition("Vértice de Corte")[
  Sea $G$ una gráfica. Decimos que un $v in V(G)$ es un *vértice de corte* si 
  $
  underbrace(omega (G), "# componentes conexas de G") < (omega (G - {v})
  $
]

#definition("k-corte por Vértices")[
  Sea $S subset.eq V(G)$ tal que $abs(S) = k$. Decimos que $S$ es un $k$-corte por vértices si
  $
  omega(G) < omega(G - S)
  $
]

== Corte por Aristas

#definition("Arista de Corte")[
  Sea $G$ una gráfica. Decimos que $e in A(G)$ es una *arista de corte* o *puente* si
  $
  omega(G) < omega(G-{e})
  $
]

#definition("m-conjunto de Corte por Aristas")[
  Si tenemos $E subset.eq A(G)$ tal que $abs(E) = m$ y 
  $
  omega(G) < omega(G - E)
  $
  decimos que $E$ es un $m$-conjunto de corte por aristas.
]

#example()[
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


      a [pos="0,-2!"]
      b [pos="1,-1!"]
      f [pos="0,0!"]
      c [pos="2,0!"]
      d [pos="2,-1!"]
      e [pos="2,-2!"]

      a -- b -- f 
      c -- d -- e
      b -- c
      b -- d
      b -- e
      

    }
    ```,
    width: 13em
    )
  ]
  - Si tomamos $F = {(a,b)}$, entonces $omega(G) = 1 < omega(G-F) = 2$, y por tanto $F$ es un 1-corte por aristas.
  - Si tomamos $E = {(a,b), (b,c)}$, entonces $omega(G) < omega(G-E)$, y por tanto $E$ es un 2-corte por aristas.
]

== Teorema sobre Conexidad

#theorem()[
  Sea $G$ una gráfica conexa, tal que $G$ tiene un ciclo (trayectoria cerrada). Sea $gamma$ el ciclo y $a in A(gamma)$. Entonces $G-{a}$ es conexa.
]

#proof()[
  Sean $G, gamma, a$ como en las hipótesis. Consideramos $G - {a}$. Sean $x,y in V(G)$ Como $G$ es conexa, debe existir $x y$-trayectoria en $G$.
  - Caso 1: Si $a$ *no* es arista de la $x y$-trayectoria, entonces al quitarla no se altera la trayectoria y $x$ y $y$ siguien unidos.
  - Caso 2: Sea $T = {u_0 = x, u_1, dots, u_n = y}$ la $x y$-trayectoria. Supongamos que $a = (u_i, u_(i+1) in T$.
    Sea $gamma = {v_0, dots, v_j = u_i, v_(j+1) = u_(i+1), dots, v_n = v_0}$. La arista $(u_i, u_(i+1) = a = (v_j, v_(j+1)$. Vamos a tomar
    $
    T_1 = {u_0 = x, u_1, u_2, dots, u_i = v_j}
    $
    $
    T_2 = {v_j, v_(j-1), v_(j-2),dots, v_0 = v_n, v_(n-1), dots, v_(j+1)}
    $
    $
    T_3 = {v_(j+1) = u_(i+1), u_(i+2), dots, u_n = y}
    $
    Tomamos $w = T_1 union T_2 union T_3$ un $x y$-camino que *no* pasa por $a$. Como ya probamos, debe existir $T'$ una $x y$-trayectoria contenida en $w$. Entonces $a in.not T'$ y $T'$ une a $x$ y $y$ en $G-{a}$
]

#corollary()[
  *Toda* gráfica conexa tiene una subgráfica que es
  - Generadora
  - Conexa
  - Sin ciclos
]
