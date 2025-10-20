#import "../lib.typ":*

= 17 de Octubre de 2025

== Ecuaciones No Exactas

=== Factores Integrantes para pasar de una ED no exacta a una exacta

En este caso, el factor integrante se utiliza para transformar una ED no exacta a una exacta.

Algunas veces es posible encontrar un factor integrante $mu(x,y)$ de manera que, después de multiplicar el lado izquierdo de una ED no exacta de la forma

$
M(x,y) dif x + N(x,y) dif y = 0
$

por $mu(x,y)$ se tiene:

$
mu(x,y) M(x,y) dif x + mu(x,y) N(x,y) dif y = 0
$

donde el lado izquierdo de la ecuación anterior *ya es* una ED exacta.

Para encontrar el factor integrante $mu(x,y)$ que nos permita pasar de una ED no exacta a una exacta se usa el criterio de exactitud.

$
(diff M)/(diff y) = (diff N)/(diff x)
space.quad space.quad
"o, cambiando la notación:"
space.quad space.quad
M_y = N_x
$

donde los subindices denotan las respectivas derivadas parciales.

Entonces, la ecuación es exacta si y solo si

$
(diff)/(diff y) mu(x,y) M(x,y) = (diff)/(dif x) mu(x,y) N(x,y)
$

o usando la notación alterna:

$
(mu M)_y = (mu N)_x
$

Y, por la regla del producto de la derivación, tenemos:

$
mu M_y + M mu_y = mu N_x + N mu_x
$

Agrupando términos tenemos:

$
mu M_y - mu N_x = N mu_x - M mu_y 
arrow.double.long
mu(M_y - N_x) = mu_x N - mu_y N
$

con $M, N, M_y$ y $N_x$ funciones conocidas de $x$ y $y$.

La dificultad radica en que, para encontrar el factor integrante $mu_(x,y)$ de la ecuación previa, debemos resolver una ED parcial. Cómo aún no sabemos resolver este tipo de ecuaciones, hagamos algunas suposiciones.

Supongamos que $mu$ es una función de una variable. Por ejemplo, $mu$ depende de la variable $x$, es decir, $mu(x)$.

En este caso queda:
$
(dif mu)/(dif x) = mu_x //TODO: la x es subindice?
space.quad space.quad space.quad
(dif mu)/(dif y) = mu_y = 0 //TODO: la y es subindice?
$

Y entonces podemos escribir:
$
mu(M_y - N_x) = mu_x N
$

Despejando $mu_x$ tenemos:
$
mu_x = (dif mu)/(dif x) = (M_y - N_x)/N mu
$

Si todo el término $(M_y - N_x)/N$ depende tanto de $x$ como de $y$, aún estamos en un dilema, porque supusimos que $mu$ sólo depende de $x$. Pero si el término mencionado sólo depende de $x$, entonces la últimas ecuación es *separable lineal*.

// El desarrollo de lo sig está en el classroom
$
therefore "El factor integrante " mu(x) " es:"
mu(x) = e^(integral (M_y - N_x)/N dif x)
$

Ahora, si $mu$ depende sólo de $y$, entonces 
$
(dif mu)/(dif y) = mu_y
space.quad space.quad space.quad
(dif mu)/(dif x) = 0
$

Y, de nuevo, tenemos:
$
mu(M_y - N_x) = - mu_y M
$

Despejando $mu_y$:
$
mu_y = (M_y - N_x)/M mu = (N_x - M_y)/M mu
$

$
therefore "El factor integrante " mu(y) " es:"
mu(y) = e^(integral (N_x - M_y)/M dif y)
$

== Resúmen

Dada la ED
$
M(x,y) dif x + N(x,y) dif y = 0 space.quad space.quad ("No exacta")
$

- Si el término $(M_y - N_x)/N$ es una función de $x$, entonces un factor integrante para que la ED no exacta lo sea es
$
mu(x) = e^(integral (M_y - N_x)/N dif x)
$

- Si el término $(N_x - M_y)/M$ es una función de $y$, entonces un factor integrante apropiado es

$
mu(y) = e^(integral (N_x - M_y)/M dif y)
$

#example()[
  Encuentre la familia de soluciones de la siguiente ED
  $
  x y dif x + (2 x^2 + 3y^2 - 20) dif y = 0
  $

  Solución:

  Veamos si la ED se exacta:
  $
  M(x,y) = x y
  space.quad space.quad space.quad
  N(x,y) = 2x^2 + 3y^2 - 20
  $

  Para que la ED sea exacta se tiene que cumplir $(diff M)/(diff y) = (diff N)/(diff x)$:
  $
  (diff M)/(diff y) = M_y = x
  space.quad space.quad space.quad
  (diff N)/(diff x) = N_x = 4x
  $

  Como $M_y != N_x$, la ED *no* es exacta.

  Entonces buscamos un factor integrante $mu(x)$ ó $mu(y)$ para convertir la ED a exacta.

  Si suponemos $mu(x)$ tenemos:

  Verificamos que el término $(M_y - N_x)/N$ esté en función de $x$:
  $
  (M_y - N_x)/N = (x - 4x)/(2x^2 + 3y^2 - 20) = (-3x)/(2x^2 + 3y^2 - 20)
  $

  De lo anterior se descarta $mu(x)$, ya que el término no sólo depende de $x$, sino de $y$

  Si suponemos $mu(y)$ tenemos:

  Verificamos que el término $(N_x - M_y)/M$ esté en función de $y$:
  $
  (N_x - M_y)/M = (4x - x)/(x y) = 3/y
  $

  Como sí está en función de $y$, el factor integrante correcto es $mu(y)$.

  Entonces:
  $
  mu(y) = e^(integral (N_x - M_y)/M dif y) = e^(integral 3/y dif y) = e^(3 integral 1/y dif y) = e^(3 ln(y)) = e^(ln(y^3)) = y^3
  $

  multiplicando $mu(y) = y^3$ por la ED no exacta:
  $
  y^3 (x y) dif x + y^3 (2 x^2 + 3y^2 - 20) dif y = 0\
  arrow.double.long\
  x y^4 dif x + (2 x^2 y^3 + 3y^5 - 20 y^3) dif y = 0
  $

  Verificando que ahora si es exacta:
  $
  (diff M)/(diff y) = 4x y^3
  space.quad space.quad space.quad
  (diff N)/(diff x) = 4x y^3
  $

  Como $(diff M)/(diff y) = (diff N)/diff x) = 4x y^3$, la ED ahora si es exacta.

  Procedemos a resolverla como ya sabemos:

  Encontramos una $f$ tal que:

  $
  (diff f)/(dif x) = M(x,y) = x y^4
  space.quad space.quad space.quad
  (diff f)/(diff y) = N(x,y) = 2x^2 y^3 + 3y^5 - 20y^3
  $

  Integrando $(diff f)/diff x)$ con respecto a $x$:

  $
  f(x,y) &= integral x y^4 dif x + g(y) = y^4 integral x dif x + g(y) = 1/2 y^4 x^2 + g(y)
  $

  // El procedimiento completo está en el classroom
  $dots$

  $
  therefore "La familia de soluciones es de la forma" f(x,y) = c\
  1/2 y^4 x^2 + 1/2 y^6 - 5y^4 = C
  $
]



