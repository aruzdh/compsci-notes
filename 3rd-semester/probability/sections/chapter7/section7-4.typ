#import "../../lib.typ":*

== Desigualdad de Markov

#proposition("Desigualdad de Markov")[
  Si $cal(X)$ es una variable aleatoria que solo toma valores no negativos, entonces para cualquier $a > 0$ se cumple lo siguiente.
  $ P(cal(X) >= a) <= ("E"(cal(X)))/a $
]

#proof()[
  $
  "E"(cal(X)) &= integral_0^infinity x f(x) dif x = integral_0^a x f(x) dif x + integral_a^infinity x f(x) dif x \
  & >= underbrace(integral_0^a x f(x) dif x,>= 0) + a integral_a^infinity f(x) dif x >= a integral_a^infinity f(x) dif x \
  $
  $ therefore space.med P(cal(X) >= a) <= ("E"(cal(X)))/a $
]

#note()[
  Si $cal(X) = (cal(Y) - mu)^2$ y $a = k^2 sigma^2$ donde $sigma^2 = "Var"(cal(X)) > 0$ ,se puede deducir el Teorema de Chebyshev.
]

La importancia de estas desigualdades es que nos permiten encontrar cotas para las probabilidades cuando solo la esperanza y/o la varianza son conocidas.

#example()[
  Supongamos que sabemos que el número de productos fabricados durante una semana es una variable aleatoria con esperanza de 500.

  + ¿Qué podemos decir sobre la probabilidad de que la producción de una semana sea al menos de 1000?

  + Si la varianza de esta producción semanal es 100, ¿qué podemos decir sobre la probabilidad de que la producción semanal esté entre 400  y 600?

  Primero definimos una variable aleatoria.
  $
  cal(X) = "# productos fabricados por semana" space.quad "con" space.quad "E"(cal(X)) = 500 space.quad "y" space.quad "Var"(cal(X)) = 100
  $
  1. $P(cal(X) >= 1000) = ("E"(cal(X)))/1000 = 500/1000 = 1/2$

  2. $sigma^2 = "E"(abs(cal(X) - mu)^2) = 100$

  Queremos calcular $P(400 <= cal(X) <= 600)$. Usando el teorema de Chebyshev.
  $ P(abs(cal(X) - mu) <= k sigma) >= 1 - 1/(k^2) $
  $
  arrow.double.long P(abs(cal(X) - 500) <= k 10) = P(-k 10 <= cal(X) - 500 <= k 10) 
  = P(-k 10 + 500 <= cal(X) <= k 10 + 500)
  $

  Si sustituimos $k = 10$ obtenemos lo siguiente.
  $ P(400 <= cal(X) <= 600) = 1 - 1/100 = 99/100 = 0.99 $
]
