#import "../lib.typ":*

= 

Pseudocodigo para expresar un algoritmo

- Modelo RAM
  - Arreglos
  - Enteros
  - Flotantes
  - Complejos
- Variables
- Aritmetica/logica
-Control

Framework

+ Problema:
  - Instancias de ejemplo
+ Algoritmo
  - Propuesta
  - Análisis de correctud
  - Análisis de complejidad

== Problema 1 (Trivial)

=== Enunciado (?)

Sea $A$ un arreglo de $n > 0$ enteros dados. Calcular el elemento $x$ más pequeño de $A$, donde $x$ debe cumplir las siguientes condiciones.
- $x in A$
- $forall y in A, space.med x <= y$

=== Instancias de ejemplo

Si $A = [2,3,4]$, la salida correcta debe ser 2.
Si $A = [-1,6,25]$, la salida correcta debe ser -1.

#definition("Correctud de un Algoritmo")[
  Un *algoritmo es correcto* si para toda entrada válida, su salida cumple las propiedades requeridas por el Problema.
]

=== Propuesta de algoritmo

//TODO: Codico
