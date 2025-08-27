#import "../lib.typ":*

= 27 de Agosto 2025

== Caracterizaciones de Árboles

== 2

//TODO:
$T$ es un árbol $arrow.l.r.long.double$ $forall u,v in V(T), exists ! u v$-trayectoria.

#proof()[
  $arrow.long.double$
  Sea $T$ un árbol y $u,v in V(T)$ tales que $u != v$ y $(u,v) in.not A(T)$.

  Como $T$ es árbol, $T$ es conexa, y debe existir al menos una $u v$-trayectoria $w$.

  Supongamos que $w$ no es única y existe $w'$ otra $u v$-trayectoria. Entonces $C = w union w'$ es un camino cerrado, donde $C$ admite un ciclo, pero $T$ no puede tener ciclos por ser árbol.

  $arrow.long.double.l$

  Sea $T$ una gráfica tal que $forall u,v in V(T)$ existe una única $u v$-trayectoria. Entonces $T$ es conexa. Si esa trayectoria es única, no hay ciclos. En caso contrario, si existe $C$ ciclo en $T$, tomo cualquier par $u_i, u_j in C$. Si $C = {u_0, u_1, dots, u_k = u_0}$, con $w_1 = {u_i, u_(i+1), dots, u_j}$ y $w_2 = {u_(i-1), u_(i-2), dots, u_0, u_(k-1), dots, u_j}$ trayectorias. Por tanto $T$ es un árbol.
]

== 3

Todo árbol no trivial tiene al menos 2 vértices de grado 1

#proof()[
  Sea $T$ un árbol con $abs(V(T)) >= 2$. Sea $w$ la $x y$-trayectoria de mayor longitud. $w$ es de la forma
  $
  w = {x_0, x, x_1, dots, x_k = y}
  $
  Afirmación: $x$ y $y$ tienen grado 1.

  Supongamos que no, spg $"d"_T (x) > 1$. Debe existir $z in v(T)$ tal que $(x,z) in A(T)$. Notemos que si $z in.not V(w)$, $(z,x) union w$ y es una trayectoria más grande.

  Si $z$ es vértice de $w$, $exists x_i in V(w)$ tal que $x_i = z$, y entonces $C = {z, x = x_0, x_1, dots, x_i = z}$ es un ciclo en $T$ árbol.
  
  Por tanto $"d"_T (x) = 1$, y analogamente, $"d"_T (y) = 1$.
]

== Hojas

#definition("Hojas")[
  Los vértices de un árbol con grado 1 se llaman *hojas* (vértices terminales).
]

== 4

#note()[
  $a$ en ciclo $arrow.long.double$ $G-{a}$ es conexa

  $a$ no está en ciclo $arrow.l.r.long.double$ $G-{a}$ se desconecta.
]

Si $G$ conexa es árbol $arrow.l.r.double.long$ Toda arista es puente

#proof()[
  $arrow.double$

  Si $T$ ya es árbol, ninguna arista está en ciclo, y entonces $T-{a}, forall a in A(T)$ se desconecta. Entonces toda arista es puente.

  $arrow.l.double$

  Supongamos que toda arista de $G$ conexa es puente pero no es árbol. $G$ tiene un ciclo $C$ con $a in C$. $G-{a}$ sigue siendo conexa (teorema), y $a$ no es de corte.

  $G$ no puede tener ciclos y entonces es conexa.
]

== Ejemplo de las Caracterizaciones

#example()[
  Sea $T$ con vértices 
  $
  {a,b,c,d,e,f,g,h,i,j}
  $ y aristas 
  $
  A(T) = {(a,b), (a,c), (a,d),(a,e), (a,f), (b,g),(d,h),(d,j), (e,i)}
  $

  Dado que $abs(V(G)) = 10$ y $abs(A(G)) = 9$, y cumple la Caracterización 1, $G$ es árbol.

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

      a [pos="6,2!"]
      f [pos="5,2.8!"]
      b [pos="7,3!"]
      g [pos="8,2.3!"]
      c [pos="7,1!"]
      e [pos="5,1!"]
      i [pos="3.5,0!"]
      d [pos="6,0!"]
      j [pos="5,-1!"]
      h [pos="7,-1!"]

      i -- e -- a -- b -- g
      f -- a -- d -- h
      a -- c
      j -- d

    }
    ```,
        width: 30em
      )
    ]
  ]
