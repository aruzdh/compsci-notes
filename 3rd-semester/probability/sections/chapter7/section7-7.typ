#import "../../lib.typ":*

== Ejercicios

#exercise()[
  Supón que 3 pelotas son sacadas sin remplazarlas de una caja que contiene 5 pelotas blancas y 8 rojas. Sea $cal(X)_i$ la variable aleatoria que toma el valor de $1$ si la i-énesima pelota elegida es blanca y 0 si es roja. Encuentra la función de probabilidad conjunta de $cal(X)_1$ y $cal(X)_2$, así como la de $cal(X)_1, cal(X)_2$ y $cal(X)_3$.
]

#exercise()[
  Se lanza 40 veces una moneda. Encuentra $P(cal(X) = 20)$ usando el Teorema del Límite Central.
]

#exercise()[
  El número de estudiantes de se inscriben en un curso de cálculo es una variable aleatoria Poisson con $lambda = 100$. Quien organiza los horarios ha decidido que si el número de estudiantes matriculados es de 120 o más, se abrirán 2 grupos. ¿Cuál es la probabilidad de abrir 2 grupos?
]

#exercise()[
  Sea $cal(X)$ una variable aleatoria absolutamente continua con función generadora de momentos $M_cal(X)(t)$ para toda $t$. Demuestra que
  $
  P(cal(X) >= x) <= e^(-t cal(X))M_cal(X)(t)
  $
  para toda $t >= 0$
]

#exercise()[
  Si $cal(X) tilde "exp"(lambda_1)$ y $cal(Y) tilde "exp"(lambda_2)$, ¿$cal(X) + cal(Y) tilde exp(lambda_1 + lambda_2)$
]

#exercise()[
  Sea $cal(X)_1, dots, cal(X)_n, dots$ una sucesión de variables aleatorias independientes e idénticamente distribuidas con valor esperado común $mu$. Considera la media muestral $overline(cal(X)) = 1/n sum_(i = 1)^n cal(X)_i$
  - Calcula $"E"(overline(cal(X)))$ y $"Var"(overline(cal(X)))$
  - Sea $epsilon > 0$. Usa la desigualdad de Markov o el Teorema de Chebyshev para demostrar lo siguiente.
  $ lim_(n arrow infinity) P(abs(overline(cal(X))- mu) > epsilon) = 0 $
]

#exercise()[
  Usa el Teorema del Límite Central para resolver lo siguiente.
  Si $cal(X)$ es el número de soles que se obtiene en los 60 lanzamientos de una maneda, encuentra la probabilidad $P(cal(X) = 20)$.
]

#exercise()[
  Usa el Teorema del Límite Central para calcular $P(cal(X) >= 20)$, donde $cal(X) tilde "Poi"(100)$
]

#exercise()[
Para la variable aleatoria $cal(X)$ cuya $M_cal(X)(t) = (1-2t)^(-1 slash 2)$ para $t < 1 slash 2$, encuentra $"E"(cal(X)^3)$
]

#exercise()[
  Sean ${cal(Z)_i}_(1 <= i <= n)$ variables aleatorias independientes tales que $cal(Z)_i tilde N(0,1)$. Calcula $M_cal(Y)$ donde
  $ cal(Y) = sum_(i=1)^n cal(Z)_i^2 $
]
