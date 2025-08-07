#import "../../lib.typ":*

== Momentos de una Variable Aleatoria

Los momentos de una variable aleatoria son medidas que describen diferentes aspectos de su comportamiento. Nos ayudan a entender cosas como el promedio, la dispersión, y la forma de la distribución de los valores. En general, los momentos nos ofrecen una forma matemática de capturar información clave sobre cómo se comportan los datos o resultados asociados a esa variable.

=== Definición

#definition("Momentos de una Variable Aleatoria")[
  Sea $cal(X)$ una variable aleatoria, definimos el *$n$-ésimo momento* de $cal(X)$ como:
  $ "E"(cal(X)^n), space.quad n in NN $
]

=== Momentos Importantes de una Variable Aleatoria

Algunos de los momentos más importantes son los siguientes.
- $"E"(cal(X))$. La esperanza es el primer momento.
- $"E"([cal(X) - mu]^2)$. El segundo momento central.
- $"E"([cal(X) - mu]^n)$. El _n_-ésimo momento central.
- $"E"(abs(cal(X))^n)$. El _n_-ésimo momento absoluto.
- $"E"(abs(cal(X) - mu)^n)$. El _n_-ésimo momento absoluto central.

=== Función Generadora de Momentos

#definition("Función Generadora de Momentos")[
  La *función generadora de momentos* de una variable aleatoria $cal(X)$ está definida por
  $ M_cal(X) = "E"(e^(t cal(X))) $
Lo que implica que $M_cal(X) (t)$ se encuentra bien definida para valores de $t$ tales que $"E"(abs(e^(t cal(X)))) < infinity$
]

#example()[
  Calculemos $M_cal(X)(t)$ si $cal(X) tilde Gamma(alpha, lambda)$ con $alpha, lambda > 0$.
  $
  f_cal(X)(x) = cases(
    (lambda^alpha)/(Gamma(alpha)) x^(alpha -1) e^(-lambda x) & space.quad "si" x > 0,
    0 & space.quad "otro caso"
  )
  $
  Entonces
  $
  M_cal(X)(t) &= "E"(e^(t cal(X))) = integral_(- infinity)^infinity e^(t x) (lambda^alpha)/(Gamma(alpha)) x^(alpha -1) e^(-lambda x)  harpoon.tl.bar_((0, infinity))^x dif x = integral_0^infinity e^(t x) (lambda^alpha)/(Gamma(alpha)) x^(alpha -1) e^(-lambda x) dif x\
  &= lambda^alpha integral_0^infinity 1/(Gamma(alpha)) x^(alpha -1) e^(t x-lambda x) dif x
  $
  Multiplicando por $((lambda - t)^alpha)/((lambda - t)^alpha)$
  $
  M_cal(X) (t) &= (lambda^alpha)/((lambda - t)^alpha) integral_0^infinity ((lambda - t)^alpha)/(Gamma(alpha)) x^(alpha -1) e^(-(lambda - t)x) dif x = (lambda^alpha)/((lambda - t)^alpha) integral_0^infinity f_cal(X)'(x) dif x = (lambda^alpha)/((lambda - t)^alpha)
  $
  Donde $cal(X)' tilde Gamma(alpha, lambda - t)$ y además $lambda - t > 0 arrow.double.long lambda > t$. Por lo tanto, la función generadora de momentos de $cal(X)$ es
  $ 
  therefore space.med M_cal(X) (t) = (lambda/(lambda - t))^alpha , space.quad lambda > t
  $
]

#example()[
  Calcular $M_cal(X)(t)$ donde $cal(X) tilde "Poi"(lambda)$

  Primera recordemos que
  $
  f_cal(X)(x) = (e^(-lambda) lambda^x)/(x!), space.quad x = 0, 1, 2, dots
  $
  Entonces
  $
  M_cal(X)(t) = "E"(e^(-lambda cal(X))) = sum_(i = 0)^infinity (e^(t i) e^(-lambda) lambda^i)/(i!) = e^(-lambda) sum_(i = 0)^infinity (e^(t i) lambda^i)/(i!) = e^(-lambda) sum_(i = 0)^infinity ((e^t lambda)^i)/(i!) = e^(-lambda) e^(e^t lambda)
  $
  Esto último se obtuvo usando la serie de la exponencial: 
  $
  e^x = sum_(k = 0)^infinity (x^k)/(k!)
  $
  $
  therefore M_cal(X)(t) = e^(-lambda) e^(e^t lambda) = e^(-lambda(1 - e^t))
  $

]

Consideremos $cal(X)$ una variable aleatoria discreta que toma valores en ${0,1,dots, n}$. Tenemos lo siguiente.

$
M_cal(X)(t) = "E"(e^(t cal(X))) = sum_(i=0)^n e^(t i) P(cal(X) = i) arrow.double.long dif /(dif t) M_cal(X)(t) = sum_(i=0)^n P(cal(X) = i) dif /(dif t)e^(t i) = sum_(i=0)^n P(cal(X) = i) i e^(t i) = "E"(e^(t cal(X)) cal(X))
$
$
M'_cal(X)(t) = "E"(e^(t cal(X)) cal(X)) arrow.double.long M'_cal(X)(0) = "E"(e^(0 dot.c cal(X))cal(X)) = "E"(cal(X))
$

Usando un procedimiento análogo se tiene que
$
M''_cal(X)(t) = "E"(e^(t cal(X)) cal(X)^2) arrow.double.long M''_cal(X)(0) = "E"(e^(0 dot.c cal(X)) cal(X)^2) = "E"(cal(X)^2)
$
Así, por medio de inducción se puede probar que
$
M^n_cal(X)(0) = "E"(cal(X)^n)
$

=== Propiedades de la Función Generadora de Momentos

#proposition()[
  Sea $cal(X)$ una variable aleatoria con función generadora de momentos $M_cal(X) (t)$. Entonces se cumple lo siguiente.
  - 
  $
  (dif^n)/(dif t^n) M_cal(X)(t)  lr(|,size: #300%)_(t = 0) = "E"(cal(X)^n)
  $
  -
  $
  "E"(cal(X)^n) < infinity "cuando" t in (-s, s)  "con" s > 0 "suficientemente pequeño"
  $
  -
  $
  M_cal(X)(t) = sum_(n = 0)^infinity (t^n)/(n!) "E"(cal(X)^n) arrow.l space.med "Serie de Taylor"
  $
]

#example()[
  Sea $cal(X) tilde Gamma(alpha, lambda)$. Sabemos que
  $
  M_cal(X)(t) = (lambda/(lambda - t))^alpha
  $
  Entonces
  $
  M'_cal(X)(t) = alpha (lambda/(lambda - t))^(alpha-1) lambda(lambda - t)^(-2) arrow.double.long
  M'_cal(X)(0) = alpha (lambda/(lambda - 0))^(alpha-1) lambda(lambda - 0)^(-2) = alpha lambda^(-1) = alpha/lambda = "E"(cal(X))
  $
]


=== Función Característica

Aunque la función generadora de momentos no siempre existe, la siguiente existe para todo $t in RR$.

#definition("Función Característica")[
  Sea $cal(X)$ una variable aleatoria, definimos la *función característica* de $cal(X)$ como sigue.
  $
  Phi_cal(X) (t)= "E"(e^(i t cal(X))) = "E"(cos (t cal(X)) + i sin(t cal(X)))
  $
]
