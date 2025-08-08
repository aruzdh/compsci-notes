#import "../../lib.typ":*

== Independencia y su Relación con el Valor Esperado

Podemos establecer una relación entre la independencia y la esperanza (valor esperado). Si consideramos dos variables aleatorias discretas independientes con $g,h : RR arrow.long RR$ funciones reales, entones podemos desallorar

$
  "E"(g(cal(X))h(cal(Y))) &= sum_i sum_j g(i)h(j) space.med P(cal(X) = i, space.med cal(Y) = j)\
                       &= sum_i sum_j g(i)h(j) space.med P(cal(X) = i) space.med P(cal(Y) = j) space.quad ("por independencia")\
                       &= sum_i g(i) P(cal(X) = i) sum_j h(j) space.med P(cal(Y) = j)\
                       &= "E"(g(cal(X))) "E"(h(cal(Y)))
$

#proposition("Independencia y su Relación con el Valor Esperado")[
  Sean $cal(X)$ y $cal(Y)$ variables aleatorias independientes, entonces
  $ "E"(g(cal(X))h(cal(Y))) = "E"(g(cal(X))) "E"(h(cal(Y))) $
]

#important()[
  Tener $"E"(g(cal(X))h(cal(Y))) = "E"(g(cal(X))) "E"(h(cal(Y)))$ no necesariamente implica independencia.
]

Así, cuando hay independiencia
- $"E"(cal(X) cal(Y)) = "E"(cal(X)) "E"(cal(Y))$
- $"E"(cal(X) + cal(Y)) = "E"(cal(X)) + "E"(cal(Y))$

=== Varianza cuando hay Independiencia
Con las últimas observaciones podemos demostrar la siguiente proposición.

#proposition("Varianza cuando hay Independencia")[
  Sean $cal(X)$ y $cal(Y)$ variables aleatorias independientes, entonces
  $ "Var"(cal(X) + cal(Y)) = "Var"(cal(X)) + "Var"(cal(Y)) $
]
#proof()[
  De forma general sabemos que
  $
  "Var"(cal(X) + cal(Y)) = "Var"(cal(X)) + "Var"(cal(Y)) + 2("E"(cal(X) cal(Y)) - "E"(cal(X)) "E"(cal(Y))) != "Var"(cal(X)) + "Var"(cal(Y))
  $
  Sin embargo, por independencia tenemos
  $
  "E"(cal(X) cal(Y)) = "E"(cal(X)) "E"(cal(Y)) arrow.long.double "E"(cal(X) cal(Y)) - "E"(cal(X)) "E"(cal(Y)) = 0
  $

  $ therefore "Var"(cal(X) + cal(Y)) = "Var"(cal(X)) + "Var"(cal(Y)) $
]

De manera general, se cumple que si $cal(X)_1, cal(X)_2, dots , cal(X)_n$ son variables aleatorias independientes, entonces
$
"E"(f_1(cal(X)_1)f_2(cal(X)_2) dots.c f_n(cal(X)_n)) = product_(i = 1)^n "E"(f_i (cal(X)_i)) = "E"(f_1(cal(X)_1)) "E"(f_2(cal(X)_2)) dots.c "E"(f_n (cal(X)_n))
$

=== Función Generadora de Momentos cuando hay Independencia

#proposition("Independencia y Función Generadora de Momentos")[
  Sean $cal(X)$ y $cal(Y)$ variables aleatorias independientes con funciones generadoras do momentos $M_cal(X)(t)$ y $M_cal(Y)(t)$, entonces
  $ M_(cal(X) + cal(Y))(t) = M_cal(X)(t) M_cal(Y)(t) $

  Además, si $cal(X)_1, cal(X)_2, dots , cal(X)_n$ son independientes con funciones generadoras de momentos $M_1(t), M_2(t), dots , M_n (t)$, entonces
  $ cal(Z) = sum_(i = 1)^n cal(X)_i $
  tiene función generadora de momentos
  $ M_cal(Z) = product_(i=1)^n M_i (t) $
]

#proof()[
  $
  M_(cal(X) + cal(Y))(t) = "E"(e^(t(cal(X) + cal(Y))))
    &= "E"(e^(t cal(X)) e^(t cal(Y)))\
    &= "E"(e^(t cal(X))) "E"(e^(t cal(Y))) space.quad ("por independencia")\
    &= M_cal(X) (t)M_cal(Y) (t)
  $
  El caso para la variable aleatoria $cal(Z)$ es análogo.
]

#note()[
  También se puede calcular la distribución de una suma de variables aleatorias independientes usando la función generadora de momentos y la proposición sobre la igualdad en distribución (sección anterior).
]

#note()[
  La proposición anterior se cumple para la función generadora de probabilidad.

  Si $cal(X)_1, cal(X)_2, dots , cal(X)_n$ son variables aleatorias independientes, entonces la función de probabilidad de $sum_(i=1)^n cal(X)_i$ es
  $
  G_(cal(X)_1 + cal(X)_2 + dots + cal(X)_n) = product_(i=1)^n G_i (t)
  $
]

#example()[
  Encuentra la distribución de $cal(X) + cal(Y)$ donde $cal(X) tilde "Poi"(lambda)$ y $cal(Y) tilde "Poi" (mu)$ son independientes.

  Primero calculamos la función generadora de momentos de $cal(X) + cal(Y)$.
  $
  M_(cal(X) + cal(Y))(t)= M_cal(X)(t) M_cal(Y)(t) space.quad ("por independencia")
  $

  Por otro lado, sabemos que
  $ M_cal(X)(t) = e^(-lambda(1-e^t)) 
  space.quad "y" space.quad
  M_cal(Y)(t) = e^(-mu(1-e^t)) $

  Lo anterior implica que
  $
  M_(cal(X) + cal(Y))(t) 
      = e^(-lambda(1-e^t)) e^(-mu(1-e^t))
      = e^(-(lambda + mu)(1-e^t))
  $
  $ therefore space.med cal(X) + cal(Y) tilde "Poi"(lambda + mu) $
]

#example()[
  Encuentra la distribución de $cal(X) + cal(Y)$ donde $cal(X) tilde "Bin"(n,p)$ y $cal(Y) tilde "Bin"(m,p)$ son independientes.

  Se tiene lo siguiente.
  $ M_(cal(X) + cal(Y))(t)= M_cal(X)(t) M_cal(Y)(t) $

  Sabemos que
  $
  M_cal(X)(t) &= sum_(k=0)^n e^(t k) binom(n,k) p^k (1-p)^(n-k)\
              &= sum_(k=0)^n binom(n,k) (e^t p)^k (1-p)^(n-k)\
              &= (1-p + e^t p)^n
  $
  Así

  $
  M_(cal(X) + cal(Y))(t) = (1-p + e^t p)^n (1-p + e^t p)^m = (1-p + e^t p)^(m + n)
  $
  $
  therefore space.med cal(X) + cal(Y) tilde "Bin"(n + m, p)
  $
]
