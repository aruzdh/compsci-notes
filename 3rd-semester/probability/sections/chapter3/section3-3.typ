#import "../../lib.typ":*

== Probabilidad Condicional

#definition("Probabilidad Condicional")[
  Sean $A, B in cal(F)$. La *probabilidad condicional* del evento $A$ _dado_ el evento $B$ se define como sigue.
  $
  P(A bar.v B) = (P(A inter B))/(P(B))
  $
  donde necesariamente $P(B) > 0$
]

#note()[
  Lo anterior se puede leer como la *probabilidad de $A$ dado $B$*
]

#note()[
  De la definicón anterior se tiene que 
  $
  P(A inter B) = P(A bar.v B) space.med P(B)
  $
]

#example()[
  Se extraen 2 cartas en sucesión de una baraja de 52. Encuentra la _probabilidad de que ambas cartas sean ases si_
  - Se reemplaza la carta (se regresa la carta sacada).
  - No se reemplaza la carta.

  Sea _$A_1$ = "La primera carta es un As"_, _$A_2$ = "La segunda carta es un As"_ eventos. Entonces
  $
  P(A_2 inter A_1) = P(A_2 bar.v A_1) space.med P(A_1) = P(A_2 bar.v A_1) space.med 4/52
  $

  Si se reemplaza la carta tenemos que
  $
  P(A_2 inter A_1) = (4/52)^2 = 1/169
  $
  Si no se reemplaza tenemos que
  $
  P(A_2 inter A_1) = 3/51 dot.c 4/52 = 1/221
  $
]
