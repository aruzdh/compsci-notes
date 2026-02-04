#import "../lib.typ": *
#import "../bibliography/bibliography.bib": *

= 03 - Febrero - 2026

== Definiciones básicas: Introducción

#definition("Compilador")[
  Un *compilador* es un programa que "lee" un programa en un _lenguaje fuente_ y lo "traduce" a un programa *equivalente* en un _lenguaje objetivo_ de bajo nivel.
]

#definition("Intérprete")[
  Un *intérprete* es un programa que *ejecuta* de forma directa las operaciones del programa fuente dada una (o varias) entradas propuestas por el usuario.

  A diferencia de un compilador, *no* produce un programa en un lenguaje objetivo.
]

#definition("Compilador Híbrido")[
  Un *compilador híbrido* es un programa que "traduce" un programa en _lenguaje fuente_ en un _lenguaje intermedio_. Posteriormente, la representación intermedia es _interpretada_ (por una Máquina Virtual MV) para obtener una salida.
]

#example("Compilador Híbrido")[
  _Java_ es un lenguaje que trabaja a partir de un compilador híbrido. La entrada es un programa escrito en _Java_ que se compila para obtener un programa en código de bytes, el cual es una forma intermedia que se ejecutará en la máquina virtual de _Java_ (JMV).
]

#definition("Transpilador")[
  Es una "especie" de compilador que "traduce" entre lenguajes de alto nivel.

  _Jython_ es un ejemplo.
]
