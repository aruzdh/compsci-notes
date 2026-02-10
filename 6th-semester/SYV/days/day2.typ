#import "../lib.typ": *

= 09 - Febrero - 2026

== Clase pasada

*Asistente de prueba*: Herramienta que guía el proceso de demostración usando los aspectos más rutinarios.

*Lógica*: La usamos para plasmar afirmaciones sobre los programas que cumplen con su especificación.

*Validación*: Casos empíricos.

*Verificación*: Demostración formal.

*Demostrador automático*: Recibe proposiciones y devuelve _verdadero_ o _falso_ (o agotar recursos).

*Semántica*: Significado de los programas escritos en un LDP. Semántica operacional (paso grande (natural), paso pequeño (estructural))

*Programación Funcional*:
- Funciones de primera clase: Las funciones son valores del lenguaje
- Recursión
- Función pura: Bajo la misma entrada siempre se obtiene la misma salida, sin efectos secundarios

== Rocq

Entorno para el desarrollo interactivo (formal) de razonamiento formal con verificación automática. Garantiza que sólo se realicen correctamente los pasos de deducción.

Para la deducción se necesita:
1. Argumento lógico: premisas $\/ therefore$ conclusión
2. Reglas: introducir/eliminar conectivos, demostraciones previas

*Rocq* es una plataforma para _modelar_ lenguajes de programación, así como un _entorno de desarrollo_ de software y hardware con certificación formal.

Permitió desarrollar la primera prueba formal verificada del _teorema de los cuatro colores_.

Usa _programación funcional_, inspirada en el _calculo lambda_. Los cálculos son *puros*. Es el puente entre lógica y programación. Rocq, es como una combinación de un lenguaje de programación y un conjunto de herramientas para demostrar proposiciones.

#quote()[
  *Las demostraciones son programas*
]
