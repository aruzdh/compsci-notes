#import "../../lib.typ":*

== Sucesiones Monótonas
=== Límite de Sucesiones

Definimos los siguientes limites para sucesiones crecientes y decrecientes.

#definition("Límite de una Sucesión Creciente")[
  Sea $A_1 subset.eq A_2 subset.eq A_3 subset.eq dots A_n subset.eq dots$ una sucesión de eventos creciente. Definimos
  $
  lim_(n arrow infinity) A_n = union.big_(i=1)^in A_i
  $
]

#definition("Límite de una Sucesión Decreciente")[
  Sea $A_1 supset.eq A_2 supset.eq A_3 supset.eq dots A_n supset.eq dots$ una sucesión de eventos decreciente. Definimos
  $
  lim_(n arrow infinity) A_n = inter.big_(i=1)^infinity A_i
  $
]

=== Definición

#definition("Sucesión Monótona")[
  Si la sucesión ${A_n}_(n >= 1)$ es creciente o decreciente, la llamamos *sucesión monótona*.
]

=== Teorema de Límite de una Sucesión

#theorem("Teorema de Límite de una Sucesión")[
  Sea ${A_n}_(n >= 1)$ una sucesión monótona de eventos. Entonces
  #set math.cases(gap: 1em)
  $
  lim_(n arrow infinity) P(A_n) = P(lim_(n arrow infinity) A_n) = 
  cases(
    P(union.big_(i=1)^infinity A_i) " si " {A_n} " es creciente",
    P(inter.big_(i=1)^infinity A_i) " si " {A_n} " es decreciente",
  )
  $
]

#proof()[
  Supongamos que ${A_n}$ es creciente, es decir, $A_1 subset.eq A_2 subset.eq A_3 subset.eq dots$

  Consideremos la partición ${B_n}$ donde $B_1 = A_1, B_2 = A_2 - A_1, B_3 = A_3 - A_2, dots, B_n = A_n - A_(n-1)$, tal que cumple lo siguiente.
  - $forall i != j, B_i inter B_j = emptyset$
  - $union.big_(i = 1)^n B_i = A_n$
  - $union.big_(i = 1)^infinity B_i = union.big_(i = 1)^infinity A_i$

  Entonces
  $
  lim_(n arrow infinity) P(A_n) &= lim_(n arrow infinity) P(union.big_(i=1)^n B_i) = lim_(n arrow infinity) sum_(i=1)^n P(B_i) space.quad "(axiomas de probabilidad)"\
  &= sum_(i=1)^infinity P(B_i)\
  &= P(union.big_(i=1)^infinity B_i) space.quad "(axiomas de probabilidad)"\
  &= P(union.big_(i=1)^infinity A_i) = P(lim_(n arrow infinity) A_n)
  $

  Ahora supongamos que ${A_n}$ es decreciente, es decir, $A_1^c subset.eq A_2^c subset.eq A_3^c dots$. Como ${A_n}$ es decreciente, entonces ${A^c}$ es creciente. Así que
  $
  lim_(n arrow infinity) P(A_n^c) = P(lim_(n arrow infinity) A_n^c) = P(union.big_(i=1)^infinity A_i^c) = lim_(n arrow infinity) 1 - P(A_n) = 1 - P(inter.big^infinity A_n)
  $

  De la anterior se obtiene que 

  $
  1 - lim_(n arrow infinity) P(A_n) = 1 - P(inter.big^infinity A_n)
  $

  Por tanto

  $
  lim_(n arrow infinity) P(A_n) = P(inter.big^infinity A_n) = P(lim_(n arrow infinity) A_n)
  $
]
