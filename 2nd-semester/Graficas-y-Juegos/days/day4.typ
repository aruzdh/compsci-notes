#import "../lib.typ":*

= 14 de Agosto de 2025

== Ejemplo

//TODO: Grafica
_Ana, Laura, Raul, Pablo, María, y Juan están en una reunión donde Ana saluda a María y a Juan; Raul saluda a Pablo, María y Ana; y Laura saluda a Ana. Si las personas son el conjunto de vértices y "saluda a" define las aristas, define los siguientes conjuntos._

- Vértices de $G$

  $V(G) = {"Ana", "Laura", "Raul", "Pablo", "María", "Juan"}$

- Aristas de $G$

  $A(G) = {("Ana", "María"), ("Ana", "Juan"), ("Raul", "Pablo"), ("Raul", "María"), ("Raul", "Ana"), ("Laura", "Ana")}$

- Conjunto de vecinos de cada vértice

  $N_G ("Ana") = {"Juan", "María", "Raul", "Laura"}$

  $N_G ("Laura") = {"Ana"}$

  $N_G ("Raul") = {"Ana", "María", "Pablo"}$

  $N_G ("Pablo") = {"Raul"}$

  $N_G ("María") = {"Ana", "Raul"}$

  $N_G ("Juan") = {"Ana"}$

- Grado de cada vértice
  $d_G ("Ana") = 4$

  $d_G ("Laura") = 1$

  $d_G ("Raul") = 3$

  $d_G ("Pablo") = 1$

  $d_G ("María") = 2$

  $d_G ("Juan") = 1$

#note()[
  El grado de cada vértice respecto a $G^c$ es $5 - d_G (v)$
]

- Grado máximo y minimo de $G$

  $delta (G) = 1
  space.quad "y" space.quad
  Delta (G) = 4$

- Conjunto de grados dado un orden en los vértices

  $d(G) = {4,1,3,1,2,1}$

- Representación de $G$
  #align(center)[
    #raw-render(```
      graph {
      graph [
        layout = fdp
        
      ]
        node [fixedsize=true, width=0.5, height=0.5, shape=circle];
        A -- J
        A -- M
        A -- L
        A -- R
        R -- M
        R -- P
      }
    ```,
    height: 15em,) 
  ]


== Inducción

Demuestra que la suma de los $n$ primeros números está dado por
$
n (n + 1) / 2
$
 *Base Inductiva*. Para $n = 1$

 $
 1 = 1(1+1) / 2
 $

 *Paso Inductivo*. Supongo que para $n = k$ se cumple que 
 $
 sum_(i=1)^k i = k(k+1)/2
 $

 PD:

 $
 sum_(i=1)^(k+1) i = ((k+1)((k+1)+1)) /2
 $

*_Demostración:_*
 $
 sum_(i=1)^(k+1) i &= 1 + 2 + dots.c + k + (k+1)\
 &= k(k+1)/2 + (k+1) = (k(k+1) + 2(k+1))\
 &= ((k+1) (k+2)) / 2 = ((k+1) ((k+1)+1))/2 \
 $

 //TODO: Demostrar
 Dada $G$ grafica de orden $n$
 $
 abs(A(G)) = n(n-1)/2
 $

== Grafica de Petersen

//TODO: Grafica
La siguiente gráfica se llama de Petersen

  #align(center)[
    #raw-render(
      ```
      graph petersen_graph {
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


    A [pos="0,2!"];
    B [pos="1.9,0.6!"];
    C [pos="1.2,-1.6!"];
    D [pos="-1.2,-1.6!"];
    E [pos="-1.9,0.6!"];


    I [pos="0,0.8!"];
    J [pos="0.75,0.25!"];
    L [pos="0.45,-0.65!"];
    M [pos="-0.45,-0.65!"];
    N [pos="-0.75,0.25!"];

    A -- B -- C -- D -- E -- A;

    A -- I;
    B -- J;
    C -- L;
    D -- M;
    E -- N;

    I -- J -- L -- M -- N -- I;
    }
      ```,
      width: 30em
    )
  ]

- Nombre sus vértices y describir el conjunto de aristas

    $A("Petersen") = {
      &(A,I),(A,E),(A,B),(B,J),(B,C), (C,L), (C,D), (E,N),(D,E), \
      &(N,L), (L,I), (I,M), (M,J), (J,N), (M,D)}$

- Describa el grado de cada vértice y el conjunto de vecinos ¿Es una grafica regular?

  $ d_G (A) = d_G (B) = d_G (C) = d_G (D) = d_G(E) = d_G (I) = d_G (J) = d_G (L) = d_G (M) = d_G (N) = 3 $
  $ therefore "Es una grafica regular" $

- De un ejemplo de una subgrafica de orden 5,7 y una subgrafica generadora cuyo conjunto de aristas sea propio

    - Orden 5. 

      La grafica $H$ tal que 

      $
      V(H) = {A,B,C,D,E}
      space.quad "y" space.quad
      A(H) = {(A,B), (B,C), (C,D), (D,E), (E,A)}
      $

    - Orden 7
    
    La grafica $H'$ tal que

    $
    V(H') = {A,B,C,D,E,I,J,J}
    space.quad "y" space.quad
    A(H') = {(A,B), (B,C), (C,D), (D,E), (E,A), (A,I), (B,J)}
    $

- De un conjunto de vértices independientes de orden 3, 4, 5

