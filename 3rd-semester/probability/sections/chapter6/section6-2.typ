#import "../../lib.typ":*

== Varianza
=== Definicion

#definition()[
  La *varianza* de una variable aleatoria $cal(X)$, denotada por $"Var"(cal(X))$, se define de la siguiente forma.
  $ "Var"(cal(X)) = "E"([cal(X) - "E"(cal(X))]^2) $
  (cuando dicha esperanza existe).

  De este modo, existen dos casos.
  - Caso discreto.
  $
  "Var"(cal(X)) = "E"([cal(X) - "E"(cal(X))]^2) = sum_i (i - "E"(cal(X)))^2 P(cal(X) = i)
  $
  - Caso continuo.
  $
  "Var"(cal(X)) = "E"([cal(X) - "E"(cal(X))]^2) = integral_(-infinity)^infinity (x - "E"(cal(X)))^2 f_cal(X) (x) dif x
  $
]

#note()[
  Retomando el ejemplo de una variable aleatoria normal, podemos decir que la varianza ($sigma ^2$) nos indica que tanto se alejan los datos del valor esperado (esperanza).
]

=== Propiedades

Las siguientes son propiedades de la varianza. Sean $cal(X), cal(Y)$ variables aleatorias con varianza finita y $c in RR$.

-
$ "Var"(cal(X)) >= 0 $
#proof()[
  $
  "Var"(cal(X)) = "E"([cal(X) - "E"(cal(X))]^2)$ donde podemos notar que $(cal(X) - "E"(cal(X)))^2 >= 0
  $
  $ therefore "E"([cal(X) - "E"(cal(X))]^2) >= 0 $
]

-
$ "Var"(c) = 0 $
#proof()[
  $
  "Var"(c) = "E"([c - "E"(c)]^2) = "E"([c - c]^2) = "E"(0) = 0
  $
]

-
$ "Var"(c cal(X)) = c^2 "Var"(cal(X)) $
#proof()[
  $
  "Var"(c cal(X)) = "E"([c cal(X) - "E"(c cal(X))]^2)
      &= "E"([c cal(X) - c "E"(cal(X))]^2) = "E"(c^2[cal(X) - "E"(cal(X))]^2)\ 
      &= c^2 "E"([cal(X) - "E"(cal(X))]^2) = c^2 "Var"(cal(X))
  $
]

- 
$ "Var"(cal(X) + c) = "Var"(cal(X)) $
#proof()[
  $
  "Var"(cal(X) + c) = "E"([cal(X) + c - "E"(cal(X) + c)]^2) = "E"([cal(X) + c - "E"(cal(X)) - c]^2) = "E"([cal(X) - "E"(cal(X))]^2) = "Var"(cal(X))
  $
]

-
$ "Var"(cal(X)) = "E"(cal(X)^2) - ["E"(cal(X))]^2 $
#proof()[
  $
  "Var"(cal(X)) &= "E"([cal(X) - "E"(cal(X))]^2)
                = "E"(cal(X)^2 - 2cal(X) "E"(cal(X)) + ("E"(cal(X)))^2)\
                &= "E"(cal(X)^2) - 2 "E"(cal(X)) "E"(cal(X)) + ("E"(cal(X)))^2 = "E"(cal(X)) - ("E"(cal(X)))^2
  $
]

- En general
$ "Var"(cal(X) + cal(Y)) != "Var"(cal(X)) + "Var"(cal(Y)) $
#proof()[
  $
  "Var"(cal(X) + cal(Y)) 
      &= "E" ([(cal(X) + cal(Y)) - \E(cal(X) + cal(Y))]^2) \
      &= "E"([(cal(X) + cal(Y))]^2 - 2(cal(X) + cal(Y)) "E"(cal(X) + cal(Y)) + ("E"(cal(X) + cal(Y)))^2)\
      &= "E" ([cal(X)^2 + 2cal(X) cal(Y) + cal(Y)^2] - 2(cal(X) + cal(Y))("E"(cal(X)) + "E"(cal(Y))) + ("E"(cal(X))^2 + 2 "E"(cal(X)) "E"(cal(Y)) + "E"(cal(Y))^2))\
      &= "E"(cal(X)^2 + 2cal(X) cal(Y) + cal(Y)^2 - [2cal(X) "E"(cal(X)) + 2cal(X) "E"(cal(Y)) + 2cal(Y) "E"(cal(X)) + 2cal(Y) "E"(cal(Y))] \
      & space.quad space.quad space.quad space.quad + ["E"(cal(X))^2 + 2 "E"(cal(X))\E(cal(Y)) + "E"(cal(Y))^2])\
      &= "E"([cal(X) - "E"(cal(X))]^2 + [cal(Y) - "E"(cal(Y))]^2 + 2cal(X) cal(Y) - 2cal(X) "E"(cal(Y)) - 2cal(Y) "E"(cal(X)) + 2 "E"(cal(X)) "E"(cal(Y)))\
      &= "Var"(cal(X)) + "Var"(cal(Y)) + 2 "E"(cal(X) cal(Y)) - 2 "E"(cal(X)) "E"(cal(Y)) - 2 "E"(cal(X)) "E"(cal(Y)) + 2 "E"(cal(X)) "E"(cal(Y))\
      &= "Var"(cal(X)) + "Var"(cal(Y)) + 2( "E"(cal(X) cal(Y)) - "E"(cal(X)) "E"(cal(Y))) != "Var"(cal(X)) + "Var"(cal(Y))
  $
]

#example()[
  Calcular $"Var"(cal(X))$ si $cal(X) tilde "exp"(lambda)$.
  
  De un ejemplo anterior sabemos que $"E"(cal(X)) = 1/lambda$. Usando la propiedad 5 podemos hacer lo siguiente.
  $
  "Var"(cal(X)) = "E"(cal(X)^2) - ["E"(cal(X))]^2 = "E"(cal(X)^2) = (1/lambda)^2
  $
  Por otro lado,
  $
  "E"(cal(X)^2) = integral_(- infinity)^infinity x^2 lambda e^(-lambda x) harpoon.tl.bar_((0, infinity))^x dif x = lambda integral_0^infinity x^2 e^(-lambda x) dif x
  $
  Usando la siguiente sustitución
  $
  u = x^2 arrow.double.long dif u = 2x dif x space.quad dif v = e^(-lambda x) dif x arrow.double.long v = -(e^(-lambda x))/lambda
  $
  obtenemos
  $
  "E"(cal(X)^2) &= lambda [-(x^2 e^(-lambda x))/lambda lr(|,size: #300%)_0^infinity + 2/lambda integral_0^infinity x e^(-lambda x) dif x ] = lambda [ 2/(lambda^2) integral_0^infinity x lambda e^(- lambda x) dif x]\
    &= lambda [2/lambda^2 integral_0^infinity x f_cal(X)(x) dif x] = lambda [2/lambda^2 "E"(X)] = lambda [2/lambda^2 1/lambda] = 2/lambda^2 = "E"(cal(X)^2)
  $
  $
  therefore "Var"(cal(X)) = "E"(cal(X)^2) - (1/lambda)^2 = 2/lambda^2 - 1/lambda^2 = 1/lambda^2
  $
]

#example()[
  Sea $cal(X) tilde Gamma(alpha, lambda)$. Calcula $"E"(cal(X))$ y $"Var"(cal(X))$.
  - Por un lado
  $
  "E"(cal(X)) &= integral_(-infinity)^infinity x (lambda^alpha)/(Gamma(alpha)) x^(alpha-1) e^(-lambda x) harpoon.tl.bar_((0,infinity))^x dif x = integral_0^infinity x (lambda^alpha)/(Gamma(alpha)) x^(alpha-1) e^(-lambda x) dif x \
  &= 1/lambda integral_0^infinity (lambda^(alpha+1))/(Gamma(alpha)) x^(alpha+1-1) e^(-lambda x) dif x space.quad "Usando que" Gamma(alpha+1) = alpha Gamma(alpha) "sustituimos,"\
  &= alpha/lambda integral_0^infinity (lambda^(alpha+1))/(Gamma(alpha+1)) x^(alpha+1-1) e^(-lambda x) dif x = alpha/lambda integral_0^infinity f_(cal(X)')(x) dif x space.quad "Donde" cal(X)' tilde Gamma(alpha+1,lambda)\
  &= alpha/lambda integral_0^infinity f_(cal(X)')(x) dif x = alpha/lambda
  $

-  Por otro lado para calcular $"Var"(cal(X))$ primero calculamos lo siguiente,
$
"E" (cal(X)^2) &= integral_0^infinity (lambda^alpha)/(Gamma(alpha)) x^(alpha+2-1) e^(-lambda x) dif x = 1/(lambda^2) integral_0^infinity (lambda^(alpha+2))/(Gamma(alpha)) x^(alpha+2-1) e^(-lambda x) dif x
$
  Realizamos una sustitución similar a la del inciso anterior usando que:
  $
  Gamma(alpha + 2) = (alpha + 1)Gamma(alpha + 1) = (alpha + 1)(alpha)Gamma(alpha)
  $
  $
  "E"(cal(X)^2) = (alpha(alpha + 1))/(lambda^2) underbrace(integral_0^infinity (lambda^(alpha+2))/(Gamma(alpha+2)) x^(alpha+2-1) e^(-lambda x) dif x,1)
  $
  Usando el mismo argumento del inciso anterior: $(cal(X)' tilde Gamma(alpha + 2, lambda))$.
  $ "E"(cal(X)^2) = (alpha(alpha + 1))/(lambda^2) $
  Finalmente usamos la propiedad 5 de la varianza.
  $
  "Var"(cal(X)) = "E"(cal(X)^2) - ["E"(cal(X))]^2 = (alpha(alpha + 1))/(lambda^2) - (alpha/lambda)^2 = alpha/lambda^2
  $
]
