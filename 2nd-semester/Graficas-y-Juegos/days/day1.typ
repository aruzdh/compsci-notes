#import "../lib.typ": *
#import "@preview/diagraph:0.3.3": *

= 

#definition("Grafica")[
Una *grafica* es una pareja $G = (V(G),A(G))$ que consiste de
$
V(G) arrow.long "Conjunto no vacio llamado vertices"
$
y
$
A(G) arrow.long "Conjunto de parejas de " V(G) "llamado aristas"
$
]

#note()[
  Dada $G$ una grafica.
  - No se consideran multiaristas:
  $ (x,y) = (y,x), "con" (x,y) in A(G) $
  - No se consideran lazos:
  $ (x,x) in.not A(G) $
  - No se consideran aristas dirigidas.

]

//TODO: fix 
#example()[
  $V(G) = {"Ana", "María", "Luis", "Jose", "Lupita", "Pedro"}$

  $A(G) = {
    ("Ana","María"), ("Ana","Luis"),("Ana","Jose"),("Ana","Lupita"),("Ana","Pedro"),\
    ("María", "Ana"), ("María", "Pedro"),("Luis", "Ana"),("Luis", "Jose"),\
    ("Lupita", "Pedro"),
  }$

  #align(center)[
    #raw-render(```
      graph {
        Ana -- Pedro
        Ana -- María
        Ana -- Lupita
        Ana -- Luis
        Ana -- Jose
        Pedro -- María
        Pedro -- Lupita
        Jose -- Luis
      }
    ```) 
  ]
]

#example()[
  $V(G) = {"Delegaciones de la CDMX"}$

  $A(G) = {(x,y) in A(G) bar.v x "es vecino de" y}$
  #align(center)[
    #raw-render(```
      graph {
        GAM -- Azcapo
        GAM -- Cua
        GAM -- VC
        Azcapo -- Cua
        Azcapo -- MH
        VC -- Cua
        VC -- Izta
        Cua -- BJ
        Cua -- MH
        Cua -- Izta
        MH -- AO
        MH -- BJ
        Izta -- BJ
        Izta -- Iztap
        BJ -- Coyo
        BJ -- Iztap
        BJ -- AO
        AO -- MC
        AO -- Coyo
        Iztap -- Coyo
        Iztap -- Tlah
        Iztap -- Xoch
        Coyo -- Tlalpan
        Coyo -- Xoch
        Tlalpan -- MC
        Tlalpan -- Xoch
        Tlalpan -- MilpaA
        Tlah -- Xoch
        Tlah -- MilpaA
        Xoch -- MilpaA
      }
    ```,
    height: 55em,
  ) 
  ]
]

#definition("Orden de una Grafica")[
  Dada $G$ una grafica. El número de vertices de $G$, denotado por $abs(V(G))$, es el *orden* de $G$.
]

#definition("Tamaño de una Grafica")[
  Dada $G$ una grafica. El número de aristas de $G$, denotado por $abs(A(G))$, es el *tamaño* de $G$.
]

#example()[
  Dada $G$ la grafica del ejemplo 1. El _orden_ de $G$ es 6, y su _tamaño_ es 8.
]

#example()[
  Dada $G$ la grafica del ejemplo 2. El _orden_ de $G$ es 16, y su tamaño es 31.
]

#definition("Vecinos de un Vértice")[
  Dada una grafica $G$ y $v in V(G)$. Los *vecinos de $v$* son aquellos vertices que comparten arista con $v$. Dicho de otra forma:
  $
  "N"(v) = {y in V(G) bar.v (v,y) in A(G)}
  $
]

#definition("Grado de un Vértice")[
  Dada una grafica $G$ y $v in V(G)$. El grado de $v$, denotado por $d_G (v)$, es $abs("N"(v)).$
]

#example()[
  Dada $G$ la grafica del ejemplo 1.
  - $d_G ("Ana") = 5$
  - $d_G ("Pedro") = 3$
  - $d_G ("María") = 2$
  - $d_G ("Lupita") = 2$
  - $d_G ("Luis") = 2$
  - $d_G ("Jose") = 2$
]

#example()[
  Dada $G$ la grafica del ejemplo 2.
  - $d_G ("Azcapo") = 3$
  - $d_G ("Tlalpan") = 4$
  - $d_G ("Coyoacan") = 5$
  - $d_G ("Benito Juarez") = 6$
]

#definition("Vértice Aislado")[
  Dada una grafica $G$ y $v in V(G)$. Si $d_G (v) = 0$, entonces decimos que $v$ es un *vértice aislado*.
]

#definition("Grafica Vacía")[
  Dada $G$ una grafica. Si $forall v in V(G)$, v es un _vértice aislado_, entonces $G$ es una grafica *vacía*.
]

