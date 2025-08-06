#import "../../lib.typ":*

== Distribuciones Discretas
=== Destribución Bernoulli

#definition("Distribución Bernoulli")[
  Sea $cal(X)$ una _variable aleatoria discreta_. Diremos que $cal(X)$ tiene *distribución Bernoulli* ($ cal(X) tilde "Ber"(p)$) con parámetro $p$, donde $p in [0,1]$ si satisface lo siguiente.
  $
  cal(X) = cases(
    0 & "con probabilidad" (1-p),
    1 & "con probabilidad" p,
  )
  $
]

Generalmente decimos que si $cal(X)(w) = 1$, entonces _"ocurrió un éxito"_, y si $cal(X)(w) = 0$, _"ocurrió un fracaso"_.

#note()[
  A $p$ se le conoce como la *probabilidad de éxito*
]

#example()[
  Sea el experimento de lanzar una moneda. Se tiene que
  $
  cal(X)(w) = cases(
    1 & space.quad "si" w = "águila",
    0 & space.quad "si" w = "sol",
  )
  space.quad "donde" p = 1/2
  $
]

#definition("Función de Probabilidad")[
  Sea $cal(X) tilde "Ber"(p)$. Definimos su *función de probabilidad* como
  $
  f_cal(X)(k) = P(cal(X) = k) = cases(
    p & space.quad "si" k = 1,
    1-p & space.quad "si" k = 0,
  )
  $
]

#definition("Función de Distribución")[
  Sea $cal(X) tilde "Ber"(p)$. Definimos su *función de distribución* como
  $
  F_cal(X)(k) = P(cal(X) <= k) = cases(
    0 & space.quad "si" k < 0,
    1-p & space.quad "si" 0 <= k < 1,
    1 & space.quad "si" 1 <= k
  )
  $
]

=== Distribución Binomial

#definition("Distribución Binomial")[
  Sea $cal(X)$ una _variable aleatoria_ tal que cuenta el número de éxitos en _n experimentos Bernoulli independientes_. Entonces $cal(X)$ tiene *distribución Binomial* con parámetros $n,p$. Se denota como
  $ cal(X) tilde "Bin"(n,p) $
  donde $n$ es el _número de experimentos Bernoulli_, y  $p$ es la _probabilidad de éxito de cada experimento_.
]

#definition("Función de Probabilidad")[
  Sea $cal(X) tilde "Bin"(n,p)$. Definimos su *función de probabilidad* como
  $
  f_cal(X)(k) = P(cal(X) = k) = binom(n,k) p^k (1-p)^(n-k)
  $
  con $k = 0, 1, 2, dots, n$
]

#definition("Función de Distribución")[
  Sea $cal(X) tilde "Bin"(n,p)$. Definimos su *función de distribución* como
  $
  F_cal(X)(k) = P(cal(X) <= k) = sum_(i=0)^k binom(n,i) p^i (1-p)^(n-i)
  $
]

#example()[
  Es sabido que los tornillos producidos por una compañia serán defectuosos con probabilidad del $0.01\%$ y que esto es _independiente_ de un tornillo a otro. La compañia vende tornillos en paquetes de 10 y ofrece una garantía de devolver el dinero si al menos 1 de los 10 tornillos está defectuoso. Si compras un paquete de tornillos, ¿Cuál es la probabilidad de que te devuelvan el dinero?

  Sea $cal(X) = "# de tornillos defectuosos"$, donde $cal(X)(w) in {0, 1, dots, 10}$. Entonces $cal(X) tilde "Bin"(10, 0.01)$.

  Así,
  $
  P(cal(X) >= 1) &= 1 - P(cal(X) <= 0)\
            &= 1 - F_cal(X)(0)\
            &= 1 - P(cal(X) = 0)\
            &= 1 - (binom(n,0) p^0 (1-p)^(n-0))\
            &= 1 - ((1-p)^n)\
            &= 1 - (1-0.01)^(10)\
            &= 0.0956
  $
  De manera equivalente, podemos calcularlo de la siguiente manera.
  $
  P(cal(X) >= 1) = sum_(i=1)^10 binom(10,1) (0.01)^i (1-0.01)^(10-i) = 0.0956
  $
]

=== Distribución Poisson

#definition("Distribución Poisson")[
  Sea $cal(Y) tilde "Bin"(n, lambda/n)$ con $lambda > 0$, es decir,  _$cal(Y)$ es una variable aleatorial binomial_ donde la probabilidad de éxito es $lambda/n$.
  $
  lim_(n arrow infinity) P(cal(Y) = k) = lambda^k/(k!) e^(- lambda) = P(cal(Z) = k) = f(k)
  $
  donde $f$ es la función de probabilidad de masa de una variable aleatoria $cal(Z) tilde "Poi"(lambda)$, es decir, $cal(Z)$ tiene *distribución Poisson*.
]

#note()[
  Sea $cal(Y) tilde "Bin"(n,p)$. Si _p es pequeño_ y _n suficientemente grande_, entonces se puede calcular la distribución de $cal(Y)$ usando la *distribución Poisson*.
]

#definition("Función de Probabilidad")[
  Sea $cal(X) tilde "Poi"(lambda)$ con $lambda > 0$. Definimos su *función de probabilidad* como
  $
  f_cal(X)(k) = P(cal(X) = k) = (e^(- lambda) lambda^k)/(k!)
  $
  con $k = 0, 1, dots$
]

#definition("Función de Distribución")[
  Sea $cal(X) tilde "Poi"(lambda)$ con $lambda > 0$. Definimos su *función de distribución* como
  $
  F_cal(X)(k) = P(cal(X) <= k) = sum_(i=0)^k (e^(- lambda)lambda^i)/(i!)
  $
  con $k = 0, 1, dots$
]

#note()[
  Efectivamente $f_cal(X)(k) = (e^(- lambda)lambda^k)/(k!)$ es una función de probabilidad.
  -  $f_cal(X)(k) >= 0$
  - $sum_(k = 0)^infinity (lambda^k)/(k!)e^(-lambda) = 1$
  $
  sum_(k = 0)^infinity (lambda^k)/(k!)e^(-lambda) = e^(-lambda) sum_(k=0)^infinity (lambda^k)/(k!) = e^(-lambda)e^lambda = e^0 = 1
  $
  donde $ sum_(k=0)^infinity (lambda^k)/(k!) "es la expansión en series de Taylor de" e^lambda $
]

#example()[
  Supangamos que la probabilidad de que un objeto producido por una máquina sea defectuoso es de _0.01_ y que el hecho de que un objeto salga defectuoso o no, no afecta a los demás objetos. Se toman 10 objetos al azar. Encuentra la probabilidad de que al menos uno de ellos sea defectuoso.

  Sea $cal(X) = "número de objetos defectuosos"$ una variable aleatoria.

  Tenemos dos opciones.

  Usando la distribución Binomial se tiene que $cal(X) tilde "Bin"(10, 0.01)$ y por tanto
  $
  P(cal(X) >= 1) &= 1 - P(cal(X) < 1)
                  = 1 - P(cal(X) = 0)
                  = 0.956 space.med "(resultado de ejemplo anterior)"
  $
  Usando la distribución Poisson se tiene que $lambda/10 = 0.01 arrow.double.long lambda = 0.1$, y entonces $cal(X) tilde "Poi"(0.1)$. Se sigue que
  $
  P(cal(X) >= 1) &= 1 - P(cal(X) = 0)
                  = 1 - (e^(-0.1)(0.1)^0)/(0!)
                  = 1 - e^(-0.1) = 0.095
  $
  Por tanto, el resultado es practicamente el mismo.
]

=== Distribución Geométrica

Supongamos que van a desarrollarse experimentos Bernoulli independientes con parámetro de éxito $p$.

#definition("Distribución Geométrica")[
  Sea $cal(X)$ una variable aleatoria. $cal(X) tilde "Geo"(p)$ tiene *distribución Geométrica* y se define como
  $ cal(X) = "El # de fracasos antes de obtener el primer éxito" $
]

Dado lo anterior, tenemos el siguiente resultado.
$
&f(0) = P(cal(X) = 0) = P("Éxito") = p\
&f(1) = P(cal(X) = 1) = P("F E") = (1 - p) p \
&f(2) = P(cal(X) = 2) = P("F F E") = (1 - p)^2 p \
&dots \
&f(k) = P(cal(X) = k) = (1-p)^k p
$

#definition("Función de Probabilidad")[
  Sea $cal(X) tilde "Geo"(p)$. Definimos su *función de probabilidad* como
  $ f_cal(X)(k) = P(cal(X) = k) = (1-p)^k p $
  con $k = 0, 1, dots$
]

#definition("Función de Distribución")[
  Sea $cal(X) tilde "Geo"(p)$. Definimos su *función de distribución* como
  $ F_cal(X)(k) = P(cal(X) <= k) = sum_(i = 0)^k (1-p)^i p $
  con $k = 0, 1, dots$
]

Se tiene que $f_cal(X)$ satisface las propiedades de una función de probabilidad.
  $
  f_cal(X)(k) >= 0
  space.quad "y" space.quad
  sum_(k = 0)^infinity f_cal(X)(k) = 1
  $

=== Distribución Binomial Negativa

Supongamos que van a desarrollarse experimentos Bernoulli independientes con parámetro de éxito $p$.

#definition("Distribución Binomial Negativa")[
  Sea $cal(X)$ una variable aleatoria. $cal(X)$ tiene *distribución Binomial Negativa* y se define como
  $ cal(X) = "El # de ensayos hasta obtener" r "éxitos" $
]

#definition("Función de Probabilidad")[
  Sea $cal(X)$ en una _variable aleatoria binomial negativa_. Definimos su *función de probabilidad* como
  $
  f_cal(X)(k) = P(cal(X) = k) = binom(k-1,r-1) p^r (1-p)^(k-r) = ((k-1)!)/((k-r)!(r-1)!) p^r (1-p)^(k-r)
  $
  donde $r$ es el número de éxitos, y $k$ número de ensayos.
]

#definition("Función de Distribución")[
  Sea $cal(X)$ en una _variable aleatoria binomial negativa_. Definimos su *función de distribución* como
  $
  F_cal(X)(k) = P(cal(X) <= k) = sum_(i=0)^k binom(i-1,r-1) p^r (1-p)^(i-r) = ((i-1)!)/((i-r)!(r-1)!) p^r (1-p)^(i-r)
  $
  donde $r$ es el número de éxitos, y $k$ número de ensayos.
]

=== Distribución Uniforme

#definition("Distribución Uniforme")[
  Sea $cal(X)$ una variable aleatoria. $cal(X) tilde "Uni"(a_1, a_n)$ tiene *distribución Uniforme* sobre ${a_1, a_2, dots, a_n}$ donde $a_i in RR$ si
  $
  P(cal(X) = a_i) = 1/n, space.med forall i in {1, 2, dots n}
  $
]

#example()[
  Lanzar un dado justo.

  $cal(X) in {1, dots 6}$, es decir, $a_1 = 1, a_2 = 2, dots, a_6 = 6$\
  $P(cal(X) = i) = 1/6 space.med forall i = 1, dots 6$

  $$
]

=== Distribución Hipergeométrica

Supongamos que en una caja hay $N$ pelotas, $m$ azules y $N - m$ amarillas. Se escogen $n$ pelotas al azar.  Sea $cal(X) = "El #pelotas azules seleccionadas"$. Se tiene lo siguiente.

$
P(cal(X) = k) = (binom(m,k) binom(N-m,n-k))/(binom(N,n))
$

Todos los experimentos que tengan un contexto similar se modelan con una variable aleatoria hipergeométrica.
