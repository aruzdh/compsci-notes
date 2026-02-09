#import "../lib.typ": *
#import "../bibliography/bibliography.bib": *

= 06 - Febrero - 2026

== Introducción

#quote()[
  Desarrollar software _confiable_ es difícil.
]

Podemos pensal el ser _confiable_ como:
- Que no _falle_
- Que sea _eficiente_
- Que sea _correcto_
- Que haga los que "tenga que hacer"
pero son ideas ambiguas — necesitamos formalidad.

== Validación y Verificación

*Validación* - Pruebas unitarias: Sólo realizan evaluaciones empíricas, y no garantizan que una propiedad se cumpla siempre.

#example("Validación")[
  Se usa en la industria (porque no hay personas suficientes para realizar _verificación_), y en campos como web development y para sistemas de información.
]

*Verificación* - Prueba/Demuestra formalmente que una propiedad se cumple.

#example("Verificación")[
  Suele emplearse en software crítico:
  - Sistemas médicos
  - Sistemas bancarios
  - Sistemas de seguridad
  - Sistemas de transporte
]

== Aportaciones de las Ciencias de la Computación

Las CC, desde el campo de la ingeniería de software, han desarrollado:

Buenas prácticas / Metodologías para cuidar la calidad del desarrollo:
- Ciclo de software
- Controlador de versiones
- SCRUM, Cascada

Desde los métodos formales:
- Análisis de algoritmos
- Lógica computacional (corrección de argumentos)
- Lenguajes de Programación (sistemas de tipos, semánticas (paso pequeño, paso grande, programa, etc.),  Programación funcional, etc.)

Usaremos
1. *Lógica* para hacer afirmaciones sobre programa.
2. *Asistentes de prueba* para construir argumentos lógicos correctos.
3. *Programación funcional* como puente entre lógicas y programación.

== Lógica y Asistentes de Prueba

*Lógica*: Campo de estudio cuyo objeto son las _demostraciones_. Una _demostración_ es un argumento indiscutible/concluyente para la verdad de proposiciones particulares.

*Asistentes de prueba*: Las CC han apoyado a la lógica mediante el desarrollado, principalmente de dos tipos de herramientas:
- Demostrador automático:
  Entrada: Proposición
  Salida: True o False
  Ejemplos: Resolución binaria (algoritmos de saturación/exhaustivos)
- Asistentes de prueba: Automatiza los aspectos más cotidianos de la creación de pruebas, pero *depende* de la guía humana.
  Ejemplos: Rocq, Isabelle, Lean

#note("Sistema Lógico")[
  Se compone de sintaxis, semántica, y teoría de la prueba.
]

