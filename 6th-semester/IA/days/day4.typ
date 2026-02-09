#import "../lib.typ": *

= 06 - Febrero - 2026

#definition("Agente Racional")[
  Agente que ejecuta acciones tal que
  $
    hat(a) = arg max EE[R(s,a, s')]
  $
]

#note()[
  Dos principios que pueden seguir:
  1. Explotación: El agente siempre opta por la opción más segura (la que maximiza el resultado)
  2. Exploración: Toma acciones aleatorias para alcanzar un rendimiento global máximo
]

#definition("Entorno de Trabajo")[
  Se compone de:
  1. Función de rendimiento $R$
  2. Ambiente
  3. Acciones
  4. Sensores
]

// Ejemplo del libro
#example("Mundo de Aspiradora")[
  Agente: Aspiradora

  Ambiente:

  Acciones: $arrow.l, arrow.r, arrow.t, arrow.b, L ("limpiar")$

  Sensores: cámara

  Función de rendimiento:  \# de secciones limpias por tiempo
]

=== Tipos de Ambiente

1. Observable
  - Totalmente
  - No-observable
  - Parcialmente
  - Parcial-efectivamente

2. Número de Agentes
  - Individual
  - Multi
    - Competitivo / Adversarial
    - Cooperativo

3. Estructura
  - Discreto
  - Continuo

4. Determinismo
  - Determinista
  - Estocástico

5. Estáticidad
  - Estático
  - Dinámico

6. Conocimiento
  - Conocido
  - Desconocido

=== Tipos de Agente

#definition("Función de Agente")[
  $f:2^P arrow A$

  $f(p_1, dots, p_2) = a$
]

#definition("Programa Agente")[
  Implementación de la Función de agente
]

#definition("Arquitectura de Agente")[
  Es la parte del agente que percibe y ejecuta acciones y entorno: Sensores y actuadores
]

Agente = Programa + Arquitectura

Ambiente -> Percepción ->
