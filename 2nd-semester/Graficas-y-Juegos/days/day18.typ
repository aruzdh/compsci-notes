#import "../lib.typ":*

= 03 de Septiembre 2025

== Algoritmo de Prim (1957)

Árboles generadores de peso mínimo; Optimización. (Depende del vértice donde se inicie)

== Algoritmo de Dijkstra (1959)

Trayectoria de menor peso entre vértices.

=== Algoritmo

*Inicio:* Escoger vértices iniciales y terminales.
$ "Inicio:" J, space.quad space.quad "Fin:" E $
+ Al vértice del inicio le asignamos la función $"d"(J) = 0$
+ Los vértices que no sean el inicial se llaman _no visitados_.
+ Consideremos los vecinos del vértice inicial, y escogemos el de menor peso

  $
  "d"(J,I) = 2$, $"d"(J,G) = 4 arrow.double "d"(J,I) = 2
  $

  Volvemos a nombrar $"d"(T) = 2$
+ De los vecinos del nuevo vértice consideremos la "suma" del peso de las aristas
  $
  "d"(J,F) = underbrace("d"(J,I), 2) + underbrace("d"(I,F),7) = 9
  $
  $
  "d"(J,H) = underbrace("d"(J,I), 2) + underbrace("d"(I,H),1) = 3
  $
+ Si se encuentra otro camino tal que la suma de aristas vale menos, se cambia el camino.
+ Repetir los pasos

//TODO: Se verá más adelante
// == Teoría de Juegos
//
// === Juegos "Perfectos"
//
// Todos tienen información de los demás jugadores: posibles tiradas, turnos. 
//
// #example()[
//   - Ajedrez
//   - Aguila o Sol
// ]
//
// === Árboles de Juegos
//
// Representación $arrow.long$ Árboles de Juegos
//
// Nodo Inicial $arrow.long$ 1er persona que juega
//
// Segundo Nivel $arrow.long$ Posibles decisiones del 1er jugador
//
// Tercer Nivel $arrow.long$ Posibles decisiones del 2do jugador
//
// $bar.h$
// 1er turno
//
// #example()[
//   //TODO: grafica
//   Juan y Gabriel juegan Aguila o Sol
// ]

