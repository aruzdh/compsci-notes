#import "../lib.typ":*

= 26 de Agosto 2025

== Teorema

#theorem()[
  $G$ es un árbol $arrow.long.double.r.l$ $abs(V(G)) - 1 = abs(A(G))$
]

#proof()[
  $arrow.l.double.long$

  Sea $G$ una gráfica tal que $abs(V(G)) - 1 = abs(A(G))$

  *PD:* $G$ es árbol, es decir, $G$ es conexa y acíclica.

  Sea $G$ conexa, ya que de lo contrario, $G$ no puede ser árbol.

  *PD:* $G$ es acíclica.

  Supongamos que $G$ tiene un ciclo $gamma$. Entonces como $G$ es conexa, y tiene un ciclo, si tomamos $a in A(gamma)$, sabemos que $G-{a}$ es conexa. Además
  $
  abs(V(G -{A})) - 1 <= abs(A(G-{a}))
  $
  Observemos que

  + $abs(V(G-{a})) = abs(V(G))$: Entonces puede escribir lo siguiente:
    $
    abs(V(G)) - 1 <= abs(V(G-{a}))
    $
  + $abs(A(G-{a})) < abs(A(G))$: Entonces puede escribir lo siguiente:
    $
    abs(V(G)) - 1 < abs(A(G))
    $
    *Contradiciendo la hipótesis de $abs(V(G)) - 1 = abs(A(G))$*

    Por lo tanto, $G$ no tiene un ciclo. Como $G$ es acíclica y conexa, podemos concluir que $G$ es un árbol.

    $$
]

== Ejercicio

#note()[
  $
  binom(m,n) = (m!)/(n! (m-n)!)
  $
]

#exercise()[
  Sea $G$ una gráfica. Muestre que
  $
  abs(A(G)) = binom(abs(V(G)),2) arrow.l.r.double.long G "es completa"
  $

  Tenemos que $abs(A(K_n)) = (n(n-1)) / 2$.

  $arrow.long.double$

  Sea $G$ de orden $n$. 
  $
  abs(A(G)) &= binom(abs(V(G)), 2) = binom(n, 2) = (n!) / (2! (n-2)!)\
  &= (1(2)dots.c (n-2)(n-1)n)/(2 (n-2)!) = (n (n-1)) / 2
  $
  $
  therefore G "es completa"
  $

  $arrow.long.double.l$

  Sea $G$ completa de orden $n$. Sabemos que
  $
  abs(A(G)) = (n(n-1)) / 2 dot.c (n-2)!/(n-2)! = (n!) / (2! (n-2)!) = binom(n,2) = binom(abs(V(G)),2)
  $
]

== Árboles Generadores a partir de una Gráfica (Ejercicio)

Sea $G$ la gráfica

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


    a [pos=".5,0!"]
    b [pos="2,-1!"]
    c [pos="3,-.5!"]
    d [pos="3.5,-2!"]
    e [pos="1.8,-3!"]
    f [pos="0,-3!"]
    g [pos="-1,-1!"]

    a -- b -- d -- c -- b -- g -- f -- e -- g
    a -- e -- c
  }
  ```,
      width: 28em
    )
  ]

  Dar dor árboles generadores a partir de $G$

  $T_1 = {a,b,d,c,e,f,g}$

  $T_2 = {a,b,g,f,e,c,d}$

