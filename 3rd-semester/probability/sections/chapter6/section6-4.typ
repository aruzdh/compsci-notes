#import "../../lib.typ":*

== Teorema de Chebyshev

#theorem("Teorema de Chebyshev")[
  Sea $cal(X)$ una variable aleatoria con esperanza $mu$ y desviación estándar $sigma$, entonces para cualquier constante $k > 0$ la probabilidad es al menos $1 - 1/(k^2)$ de que $cal(X)$ asumirá un valor dentro de $k$ desviaciones estándar de la media (valor esperado), es decir,
  $
  P(abs(cal(X) - mu) <= k sigma) = P(-k sigma <= cal(X) - mu <= k sigma) = P(mu -k sigma <= cal(X) <= mu + k sigma) >= 1 - 1/(k^2)
  $
]
