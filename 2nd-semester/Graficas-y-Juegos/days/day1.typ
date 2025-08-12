#import "../lib.typ": *

#import "@preview/cetz:0.4.1":*

= lorem

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

//TODO: fix 
#example()[
  $V(G) = {"Ana", "María", "Luis", "Jos", "Lupita", "Pedro"}$

  $A(G) = {
    ("Ana","María"), ("Ana","Luis"),("Ana","Jose"),("Ana","Lupita"),("Ana","Pedro"),\
    ("María", "Ana"), ("María", "Pedro"),("Luis", "Ana"),("Luis", "Jose"),\
    ("Lupita", "Pedro"),
  }$
]

#example()[
  $V(G) = {"Delegaciones de la CDMX"}$

  $A(G) = {(x,y) in A(G) bar.v x "es vecino de" y}$
]

//TODO: Representacion grafica de los dos ejemplos

#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#let nodes = ("Ana", "Pedro", "María", "Lupita", "Luis", "Jose", "G")
#let edges = (
	(3, 2),
	(4, 1),
	(1, 4),
	(0, 4),
	(3, 0),
	(5, 6),
	(6, 5),
)

#diagram({
	for (i, n) in nodes.enumerate() {
		let θ = 90deg - i*360deg/nodes.len()
		node((θ, 18mm), n, stroke: 0.5pt, name: str(i))
	}
	for (from, to) in edges {
		let bend = if (to, from) in edges { 10deg } else { 0deg }
		// refer to nodes by label, e.g., <1>
		edge(label(str(from)), label(str(to)), "-|>", bend: bend)
	}
})


//TODO: anadir el punto 3
//
#note()[
  Dada $G$ una grafica.
  - No se consideran multiaristas:
  $ (x,y) = (y,x), "con" (x,y) in A(G) $
  - No se consideran lazos:
  $ (x,x) in.not A(G) $

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

