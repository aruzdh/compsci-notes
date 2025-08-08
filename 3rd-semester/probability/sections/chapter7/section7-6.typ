#import "../../lib.typ":*

== Teorema del Límite Central

Además de su importancia e interés teórica, este teorema nos proporciona un método simple para aproximar probabilidades de sumas de variables aleatorias independientes.

#theorem("Teorema del Límite Central")[
  Sean $cal(X)_1, cal(X)_2, dots$ una sucesión de variables aleatorias independientes e idénticamente distribuidas con $"E"(cal(X)_i) = mu, space.med forall i$, y $"Var"(cal(X)_i) = sigma^2, space.med forall i$. Entonces la función de distribución de $F_n$ de la variable aleatoria $cal(Y)_n$ con

  $
  cal(Y)_n = (overbrace(cal(X)_1 + cal(X)_2 + dots.c + cal(X)_n, S_n) - n mu)/(sigma sqrt(n))
  $
  converge a la distribución $N(0,1)$ si $n arrow infinity$, es decir,
  $
  lim_(n arrow infinity) P((cal(X)_1 + cal(X)_2 + dots.c + cal(X)_n - n mu)/(sigma sqrt(n)) <= a) = 1/ sqrt(2 pi) integral_(-infinity)^a e^(-(x^2)/2) dif x
  $
]

#note()[
  Notemos que no necesitamos saber la distribución de las $cal(X)_i$.
]
