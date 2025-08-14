#import "../lib.typ":*
#import "@preview/diagraph:0.3.3": *


= 13 de Agosto de 2026

#example()[
  Dado el ejemplo 2. $V(H') = {u in V(G) bar.v u "colinda con otros estados"}$
  La subgrafica inducida 
  $
  G_[H'] = {(u,v) in A(G) and u,v in V(H)}
  $
  #align(center)[
    #raw-render(```
      graph {
        node [fixedsize=true, width=0.5, height=0.5, shape=circle];

        GAM -- Azcapo
        GAM -- Cua
        GAM -- VC
        Azcapo -- Cua
        Azcapo -- MH
        VC -- Cua
        VC -- Izta
        MH -- BJ
        MH -- Cuaj
        Cuaj -- MC
        Cuaj -- AO
        Izta -- BJ
        Izta -- Iztap
        BJ -- Iztap
        Iztap -- Coyo
        Iztap -- Tlah
        Tlalpan -- MC
        Tlalpan -- Xoch
        Tlalpan -- Coyo
        Tlah -- Xoch
        Tlah -- MilpaA
        Xoch -- MilpaA
      }
    ```,
    height: 55em,) 
  ]
]

== Grafica Complemento

#definition("Grafica Complemento")[
  Sea $G = (V(G),A(G))$ una grafica. Su *complemento*, denotado por $G^c$, es la grafica tal que
  + $V(G) = V(G^c)$
  + Si $(u,v) in A(G) arrow.long.r.l.double (u,v) in.not A(G^c)$
]

//TODO: Arreglar aliniamiento de las nodos comentados

#example()[
  Dada la grafica del ejemplo anterior. Su grafica complemento es la siguiente.
  #align(center)[
    #raw-render(```
      graph {
        node [fixedsize=true, width=0.5, height=0.5, shape=circle,];
        Cua
        BJ
        // Coyo
        // Xoch
        // AO

        GAM -- Azcapo
        GAM -- VC
        VC -- Izta
        MH -- Cuaj
        Cuaj -- MC
        Izta -- Iztap
        Iztap -- Tlah
        Tlalpan -- MC
        Tlalpan -- MilpaA
        Tlah -- MilpaA
      }
    ```,
    height: 55em,) 
  ]
]

Dado el ejemplo anterior y con la definición de _grafica complemento_ se observa que 
+
  $
  abs(A(G)) + abs(A(G^c)) = n(n-1)/2
  $
+ 
  $
  forall v in V(G), space.med d_G (v) + d_(G^c) = n - 1
  $

con $n$ el orden de la grafica $G$.

#example()[
  Dado el ejemplo 1. $G$ es la grafica original, y $G^c$ (la siguiente grafica) es el complemento.
    #raw-render(```
      graph {
          node [fixedsize=true, width=0.5, height=0.5, shape=circle];

          Ana
          Pedro -- Luis
          Pedro -- Jose
          María -- Lupita
          María -- Jose
          María -- Luis
          Lupita -- Jose
          Lupita -- Luis

      }```) 
]

De esta manera, intuitivamente,
$
A(G) union A(G^c) = K_n
$
con $K_n$ siendo una grafica completa.

== Graficas Isomorfas

$
underbrace("Iso","Igual")
underbrace("morfas","Forma")
$

#definition("Grafica Isomorfa")[
  Sean $G = (V)$ y $H$ graficas. Decimos que $G$ y $H$ son *isomorfas*, denotado por $G tilde H$ o $G tilde.equiv H$, si existe $f: V(G) arrow.long V(H)$ biyectiva tal que
  $
  (u,v) in A(G)
  arrow.l.r.long.double
  (f(u),f(v)) in A(H)
  $
]

Si es biyectiva, entonces 
$
abs(V(G)) = abs(V(H))
$

//TODO: Hacer grafica G (foto)
#example()[
  Sea $G$ la grafica izquierda.
  La biyección $f:V(G) arrow.long V(H)$ tal que

  $
  f(A) = 1 space.quad
  f(B) = 2 space.quad
  f(C) = 3 space.quad
  f(D) = 4 space.quad
  f(E) = 5 space.quad
  $
    #align(center)[
    #raw-render(```
      graph {
        node [fixedsize=true, width=0.5, height=0.5, shape=circle];
        A -- E
        E -- D
        D -- C
        C -- B
        B -- A

        1 -- 5
        1 -- 2
        3 -- 4
        3 -- 2
        5 -- 4
      }
    ```,
    height: 35em,) 
  ]
  La grafica derecha $H$ es isomorfa a $G$, es decir, $G tilde H$
]

#proposition()[
  La relación "ser isomorfa" es de equivalencia, es decir,
  + Reflexiva
  + Simétrica
  + Transitiva
]

//TODO: Revisar 
#proof()[
  Sean $G = (V(G), A(G))$ y $H = (V(H), A(H))$ y $K = (V(K), A(K))$ graficas.
  - Reflexividad:

    Consideramos $"Id" : V(G) arrow.long V(G)$. La Id es biyectiva y $("Id" (x), "Id"(y)) = (x,y)$ para cualquier $(x,y) in A(G)$.
  - Simetría:

    Supongamos que $G tilde H$, entonces $exists f: V(G) arrow.long V(H)$ biyectiva. Definimos $g : V(H) arrow.long V(G)$ tal que $g(f(x)) = x$.

    #align(center)[*_¿Es $g$ biyectiva?_*]
    
    Sean $f(x) in V(H) != f(y) in V(H)$. Aplicamos $g$, $g(f(x)) = x$ y $g(f(y)) = y$, y dado que $f$ es biyectiva, entonces $x != y$.

    Sea $h in V(H)$. Dado que $f$ es biyectiva, entonces $exists g' in V(G)$ tal que $f(g') = h$. Así, $g(f(g')) = g'$ y $g(h) = g'$.
    Por tanto $H tilde G$
  - Transitiva

    Supongamos $G tilde H$, con $f:V(G) arrow.long V(H)$ biyectiva. $H tilde K$, con $gamma : V(H) arrow.long V(K)$ biyectiva.

    Tomamos $gamma compose f : V(G) arrow.long V(H) arrow.long V(K)$, siendo biyectiva. Si $(x,y) in A(G), (f(x),f(y)) in A(H)$, $(gamma compose f(x), gamma compose f(y)) in A(K)$
    
]

