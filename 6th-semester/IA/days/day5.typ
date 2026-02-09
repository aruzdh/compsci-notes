#import "../lib.typ": *

= 09 - Febrero - 2026

== Tipos de Agentes

=== Agente dirigido por tabla

#definition("Agente dirigido por tabla")[
  El programa del agente se implementa con una tabla $T$.

  $T:$

  #table(
    columns: 2,
    [Percepción], [Acciones],
    $p_0$, $a_0$,
    $p_1$, $a_1$,
    $dots$, $dots$,
    $p_n$, $a_n$,
    $dots.v$, $dots.v$,
    $p_i p_j$, $a_(i j)$,
    $dots$, $dots$,
  )
]

// En el libro está más completo
#example("Agente dirigido por tabla")[
  Teniendo el mundo con $A$ y $B$ 'posiciones', y $(L, d_L) in {A,B}, d_l in {0,1}$

  #table(
    columns: 2,
    [Percepción], [Acciones],
    $(A,1)$, [Limpiar],
    $(B,1)$, [Limpiar],
    $(A, 0)$, $arrow$,
    $(B, 0)$, $arrow.l$,
    $(A,0),(B,1)$, [Limpiar],
    $(A,1),(B,1)$, [Limpiar],
    $dots.v$, $dots.v$,
  )
]

#note()[
  En el tiempo $T$ hay $sum_(t = 1)^T |P|^t$, con $|P|$ el tamaño del conjunto de percepciones posibles.
]

#definition("Agente reactivo simple")[
  Agente que actúa de acuerdo únicamente a la última percepción. Es un subtipo de un _agente dirigido por tabla_
]

#example("Agente reactivo simple")[
  Este agente es similar al _dirigido por tabla_, pero acotado a una única percepción:

  #table(
    columns: 2,
    [Percepción], [Acciones],
    $(A,1)$, [Limpiar],
    $(B,1)$, [Limpiar],
    $(A, 0)$, $arrow$,
    $(B, 0)$, $arrow.l$,
  )
]

#example("Agente reactivo simple")[
  Se puede expresar de las forma
  ```c
  if (d_l = 1) then
                a <-- Limpiar
  else if (L = A) then
                a <-- -> (mover a la derecha)
  ...
  ```
]

#note()[
  Estos agentes solo funcionan en ambientes discretos (finitos), individuales, estáticos, deterministas, conocidos.
]

=== Agente orientado a metas

#definition("Agente orientado a metas")[
  Agente que realiza las acciones dirigido por una meta predeterminada.
]

=== Agente basado en modelos

#definition("Agente basado en modelos")[
  Se basan en dos modelos:
  1. Modelo sensor: Cómo el agente percibe el mundo.
  2. Modelo de transición: Cómo cambia el ambiente
]

=== Agente de aprendizaje

#definition("Agente de aprendizaje")[
  Agente que aprenden y cuentan con:
  1. Crítico
  2. Elemento de aprendizaje
  3. Elemento de actuación
  4. Generador de problemas
]

== Agentes de búsqueda

#definition("Planeación")[
  Encontrar una secuencia de acciones que lleven a una meta.
]

#definition("Problema de búsqueda")[
  Un problema de búsqueda $P = (S, A, s_0, F, T, c)$
  donde:
  - $S = {s_0, dots, s_m}$ estados del problema
  - $A = {a_0, dots, a_n}$ acciones
  - $s_0$ estado inicial
  - $F subset.eq S$ estados (conjuntos) finales
  - $T: S times A arrow S$ función de transición
  - $c: S times A times S arrow RR$ función de costo
]

#example("Problema de búsqueda")[
  Se puede expresar usando un diagrama de $P$, donde se define el espacio del problema ("similar" a la representación de un autómata):

  #figure(
    image("../imgs/diagrama_p_week1.jpeg", width: 80%),
    caption: [
      El diagrama de P define el espacio del problema.
    ],
  )
]
