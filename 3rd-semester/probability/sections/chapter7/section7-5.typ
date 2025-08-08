#import "../../lib.typ":*

== Ley Fuerte de los Grandes Números
Antes de presentar el resultado principal de este aparto se da la siguiente definición.

=== Media Muestral

#definition("Media Muestral")[
  Sea ${cal(X)_n}_(n = 1,2,dots)$ usa sucesión de variables aleatorias independientes e idénticamente distribuidas. Se define la *media muestral* como sigue.
  $ overline(cal(X)) = (S_n)/n 
  space.quad "donde" space.quad
  S_n = sum_(i=1)^n cal(X)_i $
]

#example()[
  Sea $cal(X)_i tilde "Ber"(p)$ que vale 1 cuando ganamos un volado, y 0 cuando perdemos.
  En este caso, la información que nos da $S_n$ es el número de volados ganados.
]

=== Teorema: Ley Fuerte de los Grandes Números

#theorem("Lef Fuerte de los Grandes Números")[
  Sea ${cal(X)_n}$ variables aleatorias independientes e idénticamente distribuidas con media común $mu in RR,space.med ("E"(cal(X)_n) = mu, space.med forall n in NN)$. Entonces,
  $ overline(cal(X)) arrow mu space.quad "casi seguramente" $

  Es decir,
  $
  lim_(n arrow infinity) (cal(X)_1 + cal(X)_2 + dots.c + cal(X)_n)/n = mu
  $
  Salvo un conjunto $N in cal(F)$ tal que $P(N) = 0$
]

Otra manera de observar el teorema es la siguiente.
$
P(lim_(n arrow infinity) (cal(X)_1 + cal(X)_2 + dots.c + cal(X)_n)/n = mu) = 1
$
Donde la convergencia dentro de la probabilidad es puntual.

#example()[
  Supongamos que lanzamos un dado justo muchas veces. Sean $cal(X)_i$ las variables aleatorias que representan el resultado del _i_-ésimo lanzamiento. Como el dado es justo, el valor esperado de cada $cal(X)_i$ es
  $
  mu = "E"(cal(X)_i) = (1 + 2 + 3 + 4 + 5 + 6)/6 = 3.5
  $

  En este caso, la Ley de los grandes números nos asegura que
  $
  lim_(n arrow infinity) 1/n sum_(i=1)^n cal(X)_i = 3.5 space.quad "casi seguramente"
  $

  Graficamente, se puede observar la convergencia del promedio $1/n sum_(i=1)^n cal(X)_i$ hacia $mu = 3.5$ a medida que aumenta el número de lanzamientos $n$.
]

#note()[
  Se llama ley "Fuerte" porque la convergencia es casi seguramente. La convergencia casi seguramente significa que la convergencia es puntual salvo en un conjunto $N$ tal que $P(N) = 0$
]

=== Convergencia Puntual

#definition("Convergencia Puntual")[
  Sean ${cal(X)_n}_(n >= 1)$ una sucesión de variables aleatorias definidas sobre el mismo espacio de probabilidad, y sea $cal(X)$ una variable aleatoria también definida en el mismo espacio.

  $cal(X)_n arrow cal(X)$ puntualmente si
  $
  forall w in Omega "se satisface que" lim_(n arrow infinity) cal(X)_n (w) = cal(X)(w)
  $
  Dados $w in Omega$ y $epsilon > 0$, $exists N = N(w, epsilon) in NN$ tal que si $n >= N arrow.long.double abs(cal(X)_n (w) - cal(X)(w)) < epsilon$
]
