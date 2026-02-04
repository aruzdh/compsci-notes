#import "../lib.typ": *

= 04 - Febrero - 2026

== Definiciones básicas

=== Inteligencia Artificial
#definition("Inteligencia Artificial")[
  Se dedica al estudio y construcción de agentes racionales (Modelo estándar).
]

Inteligencia:
- Punto de referencia:
  - Pensamiento
  - Comportamiento
- Con respecto al ser humano
  - Todo referente al humano
  - Racional

Se relacionan de la siguiente manera:
#set table(
  stroke: none,
  gutter: 0.2em,
  fill: (x, y) => if x == 0 or y == 0 { gray },
  inset: (right: 1.5em),
)


#show table.cell: it => {
  if it.x == 0 or it.y == 0 {
    set text(white)
    strong(it)
  } else if it.body == [] {
    // Replace empty cells with 'N/A'
    pad(..it.inset)[_N/A_]
  } else {
    it
  }
}

#table(
  columns: 3,
  [], [Humano], [Racional],
  [Pensamiento], [Ciencias cognitivas], [Lógica],
  [Comportamiento], [Test (total) de Turing], [Teoría de agentes],
)
=== IA Fuerte y Débil
#definition("IA Fuerte")[
  Se refiere a agentes de IA que son capaces de hacer lo que hace un ser humano de manera eficiente.
]

#definition("IA débil")[
  Agentes enfocados en resolver tareas especificas.
]

=== Teoría de Agentes

#definition("Agente")[
  Es aquella entidad que es capaz de actuar autónomamente en un ambiente. Ejemplos: Bot, robot, animal, humano
]

==== Componentes de un agente:
1. Ambiente: Define el problema
2. Sensores: Sistemas de entrada
3. Percepciones: Codificaciones de información a partir de los sensores
4. Actuadores: Sistemas de salida



#definition("Función de agente")[
  Dado un agente con percepciones $p_1, p_2, dots, p_t$ hasta el tiempo $t$, y un conjunto de acciones $A = {a_1, dots, a_n}$. La función del agente $f: 2^P arrow A$, con $P$ las percepciones, tales que $f(p_1, dots, p_t) = a$, con $a$ una acción
]


#definition("Programa del agente")[
  Una implementación de la función de agente
]

#example("Programa del agente")[
  Programa:
  - Modelos estocásticos
  - Redes recurrentes
  - Transformadores
]

#definition("Rendimiento")[
  Es una función $R: S times A times S arrow R$, con $S$ los estados del ambiente, $A$ las acciones. $R$ evalúa que tan bien lo hace el agente: coherencia
]

#definition("Agente Racional")[
  Es un agente que implementa una función de agente:
  // a, esperanza
  $hat(a)= f(p_1, dots, f_t)$, tal que $hat(a) = "arg max"_(a in A) EE[R(S,a, S)]$, es decir, se busca el valor esperado o esperanza, $EE[R(S,a, S)]$, usando la acción "a".
]

#example("Componentes de un agente: Chat Bot")[
  - Sensores: Software que permite leer, por ejemplo, un buffer
  - Lee $w_1, dots, w_t$ valores del ambiente por medio de los sensores.
  - Obtiene las percepciones $p_1, dots, p_t$ derivadas de los $w_i$
  - Aplica $f(p_1, dots, p_t) = a$, con $a$ una acción, por ejemplo, un texto o palabra
  - R(S, a, S) busca maximizar el resultado usando a "a" como argumento.

]

