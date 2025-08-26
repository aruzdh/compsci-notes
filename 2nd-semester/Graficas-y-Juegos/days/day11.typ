#import "../lib.typ":*

= 25 de Agosto 2025

== Demostración del corolario

#proof()[
  Inducción sobre \# aristas

  Sea $n = abs(V(G)), m = abs(A(G))$

  *Caso Base.* $m = 1$.

  Como $G$ tiene que ser conexa, entonces $G tilde.equiv $, y entonces $G$ es la subgráfica que buscamos.

  *Caso Base'.* $m = 3$

  $G$ tiene al menos 3 vértices.

  - Caso 1 -> 3 vértices
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


        1 [pos="0,-2!"]
        2 [pos="-1,-3!"]
        3 [pos="1,-3!"]

        1 -- 2 -- 3

      }
      ```,
          width: 10em
        )
      ]
  Si se toma cualquier arista $v$ y se quita, $G-{v}$ siguie siendo conexa.

  - Caso 2 -> 4 vértices
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


        1 [pos="0,-2!"]
        2 [pos="-1,-3!"]
        3 [pos="1,-3!"]
        4 [pos="2,-2!"]

        1 -- 2 -- 3 -- 4

      }
      ```,
          width: 15em
        )
      ]
  $G_2$ es la subgráfica que buscamos.

  *Hipótesis de Inducción:* Fijamos $m$ y suponemos que se cumple para toda gráfica $abs(A(G)) < m$

  *Caso Inductivo.* Sea $G$ conexa tal que $abs(A(G)) = m$.

  - Caso 1: $G$ no tiene ciclos y entonces $G$ es la subgráfica que buscamos.
  - Caso 2: $G$ tiene ciclos. Sea $C$ un ciclo en $G$, y sea $a in A(C)$. Por el teorema anterior, $G-{a}$sigue siendo conexa.
    Notemos que: 
    - $V(G) = V(G-{a})$
    - $abs(A(G-a)) = abs(A(G)) - 1 < m$
    Entonces, $G-{a}$ es subgráfica generadora, y por la Hipótesis de Inducción y como $abs(A(G-a)) < m$, $G-{a}$ tiene una subgráfica generadora sin ciclos $G'$.
    Así, $V(G') = V(G-{a}) = V(G)$, y por tanto $G'$ es una subgráfica generadora y sin ciclos.
]

#theorem()[
  Sea $G$ una gráfica. Si $G$ es conexa, entonces $abs(V(G) - 1) <= abs(A(G))$
]

#proof()[
  Por Inducción sobre \# aristas.

  Supongamos que $abs(V(G)) = n$ y $abs(A(G)) = m$.

  *Caso Base.*$m = 1$.

  Entonces $G tilde.equiv K_2$. Se tiene que $m = 1, n = 2$, entonces $n - 1 = 1 <= 1 = m$.

  *Hipótesis de Inducción:* Sea $k in NN$. Supongamos que el teorema es válido para toda gráfica $G$ conexa tal que $m < k$.

  *Paso Inductivo.* Sea $G$ una gráfica conexa tal que $abs(A(G)) = k$

  - Caso 1. $G$ tiene un ciclo $C$. Sea $a in A(C)$ y tomamos $G-{a}$. Notemos que:
    + Por teorema, $G-{a}$ es conexa.
    + $V(G) = V(G-{a})$
    + $abs(A(G-{a})) = abs(A(G)) - 1 = k - 1$
   Entonces 
   $
   abs(V(G)) - 1 = abs(V(G-{a})) - 1 <= abs(A(G-{a})) < abs(A(G)) arrow.long.double abs(V(G)) - 1 <= abs(A(G))
   $

  - Caso 2. $G$ no tiene ciclos. Sea $a in A(G)$ cualquiera, y consideramos $G-{a}$
    - Caso 2.1. Si $omega(G-{a}) = omega(G)$, tenemos un caso como el primero.
    - Caso 2.2. Si $omega(G-{a}) > omega(G)$. Sean $C_1$ y $C_2$ las componentes conexas $G-a$. Por Hipótesis de Inducción, $abs(V(C_1)) - 1 <= abs(A(C_1))$ y $abs(V(C_2)) - 1 <= abs(A(C_2))$. Notemos que $abs(V(C_1)) + abs(V(C_2)) = n$. Sumando
    $
    underbrace((V(C_1)) + abs(V(C_2)) - 2, abs(V(G))=n) <= abs(A(C_1)) + abs(A(C_2))
    $
    $
    n - 2 <= abs(A(G)) - 1
    $

    $
    n-1 <= abs(A(G))
    $
]

== Árboles

#definition("Árbol")[
  Sea $T$ una gráfica. Si $T$ es conexa y sin ciclos (aciclica), entonces $T$ será un *árbol*.
]

#definition("Bosque")[
  Un *bosque* es una unión de árboles.
]

=== Caracterización de Árboles

+ Si $G$ es un árbol, 
$
arrow.r.l.long.double
abs(V(G)) - 1 = abs(A(G))
$

#proof()[
  Por Inducción sobre $abs(V(G)) = n$.

  *Caso Base.* $n = 2$.

  Sean $x_1, x_2$ vértices ($(x_1, x_2) in A(G)$). Entonces
  $
  n - 1 = 2 - 1 = 1 = abs(A(G))
  $

  *Hipótesis de Inducción:* Sea $k in NN$ fijo pero arbitrario. Supongamos válido $forall n < k$.

  *Paso Inductiv.* Sea $T$ un árbol de orden $k$. Sea $w$ la trayectoria de mayor longitud en $T$. Sea $a in w$ una arista, y la quitamos. Notemos que $T-{a}$no puede ser conexa.
    Sean $u_0, u_l$ son los extremos de $w$. Si $T-{a}$ fuera conexa, entonces $exists w'$ otra trayectoria que une a $u_0$ con $u_l$, y así $w' union w$ es ciclo en $T$ y eso no es posible. Por tanto $a$ es un puente.

    Sean $T_1$ y $T_2$ los "pedazos" del árbol al quitar $a$. Cada $T_1, T_2$ es un árbol. Entonces, por Hipótesis de Inducción:
    $
    abs(V(T_1)) - 1 = abs(A(T_1))
    $
    $
    abs(V(T_2)) - 1 = abs(A(T_2))
    $
    , también
    $
    abs(V(T_1)) + abs(V(T_2)) = abs(V(T))
    $

    Sumando
    $
    (abs(V(T_1)) - 1) + (abs(V(T_2)) - 1) = abs(A(T_1)) + abs(A(T_2))
    $, entonces
    $
    abs(V(T)) - 2 = abs(A(T_1)) + abs(A(T_2))
    $
    $
    abs(V(T)) - 1 = abs(A(T_1)) + abs(A(T_2)) + 1 = abs(A(T))
    $
]


