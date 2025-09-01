#import "../lib.typ":*

= 01 de Septiembre 2025

== Árboles Generadores

Recordemos que
#theorem()[
  Toda gráfica conexa tiene un árbol generador. Además, toda gráfica tiene un bosque generador.
]

//TODO:
== Árboles Minimales

#definition("Árboles Minimales")[
  Para cada gráfica, $tau (G)$ es el número de árboles generadores minimales.
]

#remark()[
  Dada $G$ una gráfica de orden $n$. $G subset.eq K_n$
]

Por la observación anterior tenemos que:
$
1 <= tau (G) <= tau (K_n)
$
Por ejemplo:

- Para orden 2:
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

        A [pos="0,0!"]
        B [pos="1,0!"]
      }
      ```,
          width: 10em
        )
      ] que es isomorfa a $K_2$.

- Para orden 3: $tau (K_3) = 3$

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

        A [pos="0,0!"]
        B [pos="-1,-1!"]
        C [pos="1,-1!"]

        // A_1 [pos="2,0!"]
        // B_1 [pos="1,-1!"]
        // C_1 [pos="1,-1!"]
        //
        // A_2 [pos="2,0!"]
        // B_2 [pos="-1,-1!"]
        // C_2 [pos="1,-1!"]
        //
        B -- A -- C
        // A_1 -- B_1 -- C_1
        // A_2 -- C_2 -- B_2
      }
      ```,
          width: 15em
        )
      ]
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

        A [pos="0,0!"]
        B [pos="-1,-1!"]
        C [pos="1,-1!"]
        A -- B -- C
        // A_2 -- C_2 -- B_2
      }
      ```,
          width: 15em
        )
      ]
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

        A [pos="0,0!"]
        B [pos="-1,-1!"]
        C [pos="1,-1!"]

        A -- C -- B
      }
      ```,
          width: 15em
        )
      ]
      Aunque las gráficas son simétricas, *no* son isomorfas.

- Para orden 4:
  Hay 16 árboles. Algunos son:
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

        A [pos="0,0!"]
        B [pos="1,0!"]
        C [pos="0,-1!"]
        D [pos="1,-1!"]

        A -- C
        A -- B
        A -- D
      }
      ```,
          width: 10em
        )
      ]
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

        A [pos="0,0!"]
        B [pos="1,0!"]
        C [pos="0,-1!"]
        D [pos="1,-1!"]

        C -- A -- B -- D

      }
      ```,
          width: 10em
        )
      ]
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

        A [pos="0,0!"]
        B [pos="1,0!"]
        C [pos="0,-1!"]
        D [pos="1,-1!"]

        C -- B -- A -- D

      }
      ```,
          width: 10em
        )
      ]
Para saber el número exacto se tiene el siguiente resultado.

== Número de Cayley

#theorem("Número de Cayley")[
  El número de árboles generadores minimales dentro de una gráfica completa es:
  $
  tau (K_n) = n ^(n-2)
  $
]

== Gráficas con Peso

#definition("Peso")[
  A cada arista de una gráfica $G$ le asociamos un número real $w(e)$ con $e in A(G)$ al que se le llama *peso*.
]

#definition("Gráfica con Peso")[
  A la gráfica
  $
  G = {V(G), A(G), w(A(G))}
  $
  se le llama *gráfica con peso*.
]

== Algoritmo de Prim

El algoritmo sirve para encontrar árboles generadores de *menor peso*.

Sea $G$ la siguiente gráfica:
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

        "Nau" [pos="0,1.6!"]
        "Toluca" [pos="-1.1,.5!"]
        "CDMX" [pos="0,0!"]
        "Neza" [pos="1,.7!"]
        "Cuerna" [pos="-1,-1.2!"]
        "Tepoz" [pos="0,-1!"]
        "Cuautla" [pos="1,-1.7!"]

        Nau -- CDMX [label="a: 800"]
        CDMX -- Neza [label="b: 50"]
        Neza -- Cuautla [label="g: 90"]
        Cuautla -- Tepoz [label="h: 80"]
        Tepoz -- Cuerna [label="i: 50"]
        Tepoz -- CDMX [label="c: 100"]
        Cuerna -- CDMX [label="d: 300"]
        CDMX -- Toluca [label="e: 500"]
        Toluca -- Nau [label="f: 300"]

      }
      ```,
          width: 18em
        )
    ]

+ Escoger un vértice de $G$
  - el vértice CDMX
+ Encontrar todos sus vecinos
  - $"N"("CDMX") = {"Tepoz", "Cuerna", "Toluca", "Nou", "Neza"}$
+ De todos los vecinos tomamos $w(e)$ con $e$ las aristas que las unen con el vértice escogido.
  - 
  $
  w(a) = 800, space.med w(b) = 50, space.med w(c) = 100, space.med w(d) = 300, space.med w(e) = 500
  $
+ Tomar el vecino con la arista de menor peso.
  - Tomamos $w(b) = 50$. El árbol generador tendrá como aristas a $("CDMX", "Neza")$
+ En el nuevo vértice al que se movió, se repiten los pasos 2,3, y 4 sin formar ciclos.
  - Como solo queda la arista $("Neza", "Cuautla")$, la agregamos.
  - Agregamos $("Cuautla", "Tepaz")$
+ Si hay dos opciones y una forma un ciclo, se desecha la opción. 
  - Agregamos $("Tepoz", "Cuerna")$
+ Si llega un punto en el que es imposible no hacer un ciclo, regresamos al vértice original y aplicamos el algoritmo con los vecinos restantes que no hayan sido considerado antes.
  - Agregamos $("CDMX", "Toluca")$
  - Agregamos $("Toluca", "Nau")$
+ Si el vértice inicial ya está "saturado" (sin vecinos no visitados), se elige cualquier otro vértice.

Después del aplicar el algoritmo, se obtiene:

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

        "Nau" [pos="0,1.6!"]
        "Toluca" [pos="-1.1,.5!"]
        "CDMX" [pos="0,0!"]
        "Neza" [pos="1,.7!"]
        "Cuerna" [pos="-1,-1.2!"]
        "Tepoz" [pos="0,-1!"]
        "Cuautla" [pos="1,-1.7!"]

        Nau -- CDMX [label="a: 800"]
        CDMX -- Neza [color="#ff00ff",label="b: 50"]
        Neza -- Cuautla [color="#ff00ff",label="g: 90"]
        Cuautla -- Tepoz [color="#ff00ff",label="h: 80"]
        Tepoz -- Cuerna [color="#ff00ff",label="i: 50"]
        Tepoz -- CDMX [label="c: 100"]
        Cuerna -- CDMX [label="d: 300"]
        CDMX -- Toluca [color="#ff00ff",label="e: 500"]
        Toluca -- Nau [color="#ff00ff",label="f: 300"]
      }
      ```,
          width: 18em
        )
    ]


