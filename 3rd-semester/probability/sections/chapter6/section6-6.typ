#import "../../lib.typ":*

== Función Generadora de Probabilidad
=== Definición

#definition("Función Generadora de Probabilidad")[
  Sea $cal(X)$ una variable aleatoria que toma valores enteros positivos $ZZ^+$. La *función generadora de probabilidad* se define de la siguiente manera.
  $ G(t) = "E"(t^cal(X)) $
]

#example()[
  Calculemos la función generadora de probabilidad para $cal(X) tilde "Poi"(lambda)$
  $
  G(t) &= "E"(t^cal(X)) = sum_(n=0)^infinity t^n P(X = n) = sum_(n=0)^infinity t^n (e^(-lambda)lambda^n)/(n!) = e^(-lambda) sum_(n=0)^infinity ((t lambda)^n)/(n!) = e^(-lambda) e^(lambda t) = e^(-lambda(1-t))
  $
]
Esta función nos sirve principalmente para conocer los momentos factoriales de una variable aleatoria $cal(X)$, es decir:
$
lim_(t arrow 1) (dif^n)/(dif t^n) G(t) = "E"(cal(X)(cal(X)-1)(cal(X)-2)...(cal(X)-n+1))
$
A este último se le conoce como el n-ésimo momento factorial. Notemos que:
- El primer momento factorial es la esperanza $(n=1)$ $ "E"(cal(X))$
- Segundo momento factorial $(n=2)$ $"E"(cal(X)(cal(X)-1)) = "E"(cal(X)^2)-"E"(cal(X))$
- Tercer momento factorial $(n=3)$ $"E"(cal(X)(cal(X)-1)(cal(X)-2)) = "E"((cal(X)^2-cal(X))(cal(X)-2)) = "E"(cal(X)^3 - 3cal(X)^2 + 2cal(X))$

=== Variables Aleatorias Iguales en Distribución

Algo que también es importante distinguir es cuando las variables aleatorias tienen la misma distribución como en el siguiente ejemplo.

Definimos los siguientes experimentos:
- El lanzamiento de una moneda justa,
$ cal(X)= cases(
        -1 & space.quad "si sale sol",
        1 & space.quad "si sale águila"
)
$
- Al tomar una carta en una baraja de 52 cartas,
$ cal(Y) = cases(
        100 & space.quad "si sale pica ó corazón",
        0 & space.quad "si sale diamante ó trébol"
)
$
- Al lanzar un dado justo,
$ cal(Z) = cases(
        1 & space.quad "si sale un número impar",
        0 & space.quad "si sale un número par"
)
$

En este caso observamos que $cal(X) != cal(Y) != cal(Z)$, sin embargo, $cal(X) tilde "Ber"(1/2)$, $cal(Y) tilde "Ber"(1/2)$, $cal(Z) tilde "Ber"(1/2)$. Lo anterior significa que las variables son iguales en distribución y lo denotamos por $cal(X) tilde^d cal(Y) tilde^d cal(Z)$, es decir 
$ F_cal(X)(k) = F_cal(Y)(k) = F_cal(Z)(k), space.quad forall k in RR. $

#definition("Variables Aleatorias Iguales en Distribución")[
  Sean $cal(X)$ y $cal(Y)$ dos variables aleatorias. Se dice que son *iguales en distribución* si
  $
  P(cal(X) in B) = P(cal(Y) in B), space.med forall B subset RR
  $
  Esto último también se denota como $cal(X) =^d cal(Y)$.
]

#example()[
  Uno de los ejemplos más comunes de esta propiedad es que las variables aleatorias $cal(X) tilde Gamma(1, lambda)$ y $cal(Y) tilde "exp"(lambda)$ son iguales en distribución ($cal(X) =^d cal(Y)$)
]

=== Propiedad de Igualdad en Distribución

#proposition("Igualdad en Distribución")[
  Sean $cal(X)$ y $cal(Y)$ dos variables aleatorias con función generadora de momentos $M_cal(X)(t)$ y $M_cal(Y) (t)$, respectivamente, y además se cumple que $M_cal(X)(t) = M_cal(Y)(t)$ para todo $t in (-s, s), s > 0$. Entonces
  $ cal(X) =^d cal(Y) $
]

#note()[
  La proposición anterior también se cumple para la función generadora de probabilidad, es decir, si en lugar de usar $M_cal(X)(t)$ y $M_cal(Y)(t)$ usamos $G_cal(X)(t)$ y $G_cal(Y)(t)$ para todo $t in (-s, s), s > 0$. Entonces $cal(X) =^d cal(Y)$.
]
