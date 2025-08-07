#import "../../lib.typ":*

== Ejercicios

#exercise()[
  Calcula la Función Generadora de Momentos y la Función Generadora de Probabilidad de $cal(X)$ si:
  - $cal(X) tilde "Bin"(n,p)$
  - $cal(X) tilde "Geo"(p)$
]

#exercise()[
  Sea $cal(X)$ una variable aleatoria con función de densidad $f_cal(X)(x) = (e^(- abs(x)))/2$ para $x in RR$. Muestra que
  $ M_cal(X)(s) = 1/(1-s^2) $
  para $s in (-1, 1)$
]

#exercise()[
  Los ingresos de una compañia por semana se representan con una variable aleatoria $cal(X)$ tal que
  $ M_cal(X)(t) = (1-2500t)^(-4) $
  Encuentra la varianza de dichos ingresos semanales.
]

#exercise()[
  Sea $cal(Z) tilde N(0,1)$
  - Calcula $M_cal(Z)(s)$
  - Usa la expansión en series de Taylor de $M_cal(Z)$ para demostrar que
  $
  "E"(cal(Z)^n) = cases(
    0 & space.quad "si" n "es impar",
    (n!)/(2^(n slash 2)(n slash 2)!) & space.quad "si" n "es par"
  )
  $
  - Sea $cal(X) = sigma cal(Z) + mu,space.med sigma > 0$. Calcula $M_cal(X)$
  - Usa la función $M_cal(X)$ para calcular $"Var"(cal(X))$
]

#exercise()[
  Sean $cal(X)_1, cal(X)_2, dots, cal(X)_n$ variables aleatorias independientes e identicamente distribuidas tales que $M_cal(X)_i (r)$ es finita para toda $r$. Calcula $"E"(S^3_n)$
]
