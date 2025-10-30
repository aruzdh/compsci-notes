#import "../lib.typ": *

= 30 de Octubre 2025 

== Juegos

=== Juegos estáticos de información completa:

- 1 turno para cada jugador
- Todos saben todo de todos
- Todos juegan racionalmente

Caso General -> Forma Normal

+ Conjunto finito de jugadores
+ Conjunto de estrategias de cada jugador
  ${S_i} arrow$ Espacio de estrategias para el $i-$ésimo jugador
+ Ganancias (función) de cada jugador para cada combinación de estrategias
  $
  u_i : NN^n arrow.long RR
  $

#definition()[
  La *representación normal* de un juego de $n$ jugadores está dado por ${S_i}^n_(i=1)$ y ${u_i}^n_(i=1)$:
  $
  G = (S_1, S_2, dots, S_n, u_1, dots, u_n)
  $
]

Matriz binaria para 2 jugadores:
- Cada entrada: (Ganancia jugador 1, Ganancia jugador 2)
- Renglones: $S_1$
- Colunmas: $S_2$

#example()[
  // foto
  Piedra, Papel o Tijera

  $J_1: space.quad J_2:$

  $S_1 = {P i, P a, T i}$

  $S_2 = {P i, P a, T i}$

  //TODO: Matriz

  Es la representación ${S_G, S_C, u_G, u_c}$
]

== ¿Cómo se resuelve?

//TODO: Matriz

- Si el preso 1 habla: Lo que combiene sería hablar y quedarse 5 años, pero no 10
- Si el preso 1 no habla: Lo que combiene sería habla y salir libre

#definition()[
  En un juego normal $G = (S_1, S_2, dots, S_n, u_1, dots, u_n)$, y tenemos $S_i'$ y $S_i''$ dos estrategias para el $i-$ésimo jugador. Si para cualquier combinación de estrategias del resto sucede
  $
  u_i (S_i, dots, S_(i-1), S_i', S_(i+1), S_n) < u_i (S_i, dots, S_(i-1), S_i'', S_(i+1), S_n)
  $

  entonces $S_i''$ domina estrictamente $S_i'$.
]

// foto
#example()[

  Para el jugador 2:
  - Jugar centro domi
]



