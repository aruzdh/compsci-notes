#import "../lib.typ": *

= 27 de Octubre 2025 

== Teoría de Juegos

Es el estudio de las decisiones multipersonales, que solo funciona si los involucrados actual racionalmente.

=== Juegos de Información Completa

Todos los participantes conocen las diferentes opciones

#example()[
  Aguila o sol, Piedra, papel o Tijera
]

=== Juegos Simples

Hay 1 turno y todos "tiran" al mismo tiempo.

#example("Dilema del Prisionero")[
  Dos personas: $P_1$ y $P_2$

  - Si ninguno confieza: 1 año de carcel
  - Si uno confieza y el otro no: Confieza- libre; No confieza- 10 años
  - Ambos confiezan: 5 años
  // TODO: Hacer la tabla correcta
  #table(
    columns: (auto, auto, auto),
    inset: 10pt,
    align: horizon,
    table.header(
      [$P_1, P_2$], [*Hablar*], [*No Hablar*],
    ),
    // image("cylinder.svg"),
    $ pi h (D^2 - d^2) / 4 $,
    [
      $h$: height \
      $D$: outer radius \
      $d$: inner radius
    ],
    // image("tetrahedron.svg"),
    $ sqrt(2) / 12 a^3 $,
    [$a$: edge length]
  )
]

== Caso General del Modelado de un Juego

Representación (Modelado) de un juego.

+ Parcitipantes o Jugadores
+ El conjunto de estrategias de cada jugador: $J_i = {S_(i 1), S_(i 2), dots, S_(i k)}$
+ Ganancias o perdidas de las combinaciones de las estrategias

=== Representación (2 jugadores)

Matriz con entradas binarias:
$
(
underbrace(\_, smash("Ganancia J1")),
underbrace(\_, smash("Ganancia J2"))
)
$

- Renglones -> estrategias $J_1$
- Columnas -> estrategias $J_2$


