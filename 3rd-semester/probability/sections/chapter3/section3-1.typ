#import "../../lib.typ":*

#note()[
  Recordemos que los subconjuntos de $Omega$ se llaman *eventos*.
]

#note()[
  Una $sigma$-algebra es una *familia de subconjuntos* que satisface lo siguiente.
    + $Omega in cal(F)$
    + $A in cal(F) arrow.double.long A^c in cal(F)$
    + $A_1, A_2, dots in cal(F) arrow.double.long union.big_n A_n in cal(F)$
]

== Axiomas de Probabilidad

Sea $A$ un evento, $Omega$ el espacio muestral, y $cal(F)$ una $sigma$-algebra.

+ $0 <= P(A) <= 1$
+ $P(Omega) = 1$
+ Sean $A_1, A_2, dots in cal(F)  "(eventos) tales que " A_i inter A_j = emptyset, space.med forall i != j.$ Entonces $ P(union.big A_i) = sum_i P(A_i) $

