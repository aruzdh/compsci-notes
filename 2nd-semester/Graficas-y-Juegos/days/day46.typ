#import "../lib.typ": *

= 28 de Octubre 2025 

== Algoritmo Greedy para Colorear

+ Establecer un orden de vértices
+ Establecer un orden de colores
+ Siguiendo el orden de los vértices, coloreamos ocupando el primer color disponible para cada uno

== Algoritmo de Dsatur

+ Comenzamos desde el vértice que tenga mayor grado. Si existiera más de un vértice con grado máximo, escojo el que le sigue en grado descendente. Si nuevamente se tiene más de un vértice, se puede empezar desde cualquiera de ellos
+ En cada paso se identifica el vértice con mayor grado. El grado de saturación es la cantidad de colores distintos ya asignados a sus vecinos
