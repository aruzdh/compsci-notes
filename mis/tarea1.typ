#import "./utils.typ":*

#align(center)[
  #text(18pt)[
    = .
  ]
  // #text(13pt)[
  // ]
]

== Busqueda Binaria Alterada

=== Invariante de Ciclo (IC)

*IC:* Antes de la $k-$esima iteración, el indice $r$ a regresar cumple con la propiedad de ser $"low" <= r <= "high"$

=== Demostración del IC

Demostración por Inducción.

_Caso Base $k = 1$._
Antes de la primera iteración se tienen las siguientes asignaciones de valores:
$
"low" = 0 space.quad space.quad "high" = "A.length"
$

Tenemos dos casos:
+ El elemento $x$ está en $A$: Naturalmente, el indice $r$ está dentro del rango $[0,"A.length" - 1)$, y dadas las asignaciones de valores anteriores, $"low" <= r <= "high"$
+ El elemento $x$ no está en $A$: 

  – Si $x < A[0]$, el indice a regresar es $r = 0$ que cumple con la propiedad.

  – Si $x < A["A.length" - 1]$, el indice a regresar es $r = "A.length"$ que cumple con la propiedad.

  En ambos casos la propiedad se cumple.

_Hipotesis de Inducción: la propiedad es cierta para la iteración $k$._

_Paso Inductivo: Para $k + 1$_

Durante la iteración $k$ se tienen las siguientes asignaciones de valores:

$
m = ("low" + "high") / 2
$
Y con ello los siguientes casos:

+ $A[m] < x$: Como $x$ es menor que $A[m]$, el indice a regresar es necesariamente $r > m$ y se asigna $"low" = m + 1$. De lo anterior se sigue que $m + 1 = "low" <= r <= "high"$. Por tanto cumple la propiedad.
+ $A[m] >= x$: Como $x$ es mayor o igual que $A[m]$, el indice a regresar es necesariamente $r >= m$ y se asigna $"high" = m + 1$. De lo anterior se sigue que $"low" <= r <= "high" = m$. Por tanto cumple la propiedad.

En ambos casos se tiene que $"low" <= r <= "high"$.

Por tanto el Invariante de Ciclo se cumple durante todo el ciclo.

=== Demostración de $I C and not C arrow "PostC"$
=== Demostración de Finitud

== Suma de Elementos

== Factorial de $n$

== Decimal a Binario

// === Invariante de Ciclo (IC)
// === Demostración del IC
// === Demostración de $I C and not C arrow "PostC"$
// === Demostración de Finitud
