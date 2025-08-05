#import "../../lib.typ":*

== Variable Aleatoria

#definition("Variable Aleatoria")[
  Una *variable aleatoria* es una función
  $
  cal(X): Omega arrow.long RR space.quad "tal que" space.quad
  {w in Omega bar.v cal(X)(w) <= a} in cal(F), space.med forall a in RR
  $
]

#example()[
  Supongamos que lanzamos 3 monedas. Denotamos por _$cal(Y)$ = "El \# de soles que aparecen"_ (una variable aleatoria).

  Entonces $cal(Y) (A A S) = 1$, $ cal(Y)(S S S) = 3$. Donde _A = águila_ y _S = sol_
]
