#import "../lib.typ":*

= 22 de Octubre de 2025

== Ecuación de Bernoulli

La ED 
$
(dif y)/(dif x) + P(x)y = f(x) y^n
$
,con $n in RR$, se llama Ecuación de Bernoulli.

Cuando $n = 0$ y $n = 1$, la ecuación es lineal.

Cuando $n != 0$ y $n != 1$, la siguiente sustitución
$
u = y ^(1-n)
$
reduce cualquier ecuación de Bernoulli a una ecuación lineal
$
(dif u)/(dif x) + (1-n) P(x) u = (1-n)f(x)
$

#example()[
  Resuelva la siguiente ED
  $
  x (dif y)/(dif x) + y = x^2 y^2
  $

  Reescribiendo la ED:
  $
  (dif y)/(dif x) + 1/x y = x y^2
  $
  si es una ecuación de Bernoulli, con $p(x) = 1/x$, $f(x) = x$, y $n = 2$

  Proponiendo el siguiente cambio
  $
  u = y^(1-n) = y^(-1) arrow.double.long u = 1/y
  $

  Despejando a $y$
  $
  y = 1/u = u^(-1)
  $

  Haciendo uso de la regla de la cadena
  $
  (dif y)/(dif x) = (dif y)/(dif u) (dif u)/(dif x) =
  -u^(-2) (dif u)/(dif x)
  $

  Sustituyendo en la ED
  $
  -u^(-2) (dif u)/(dif x) + 1/x u^(-1) = x (u^(-1))^2
  arrow.double.long
  -1/u^2 (dif u)/(dif x) + 1/(x u) = x/u^2
  $

  Multiplicando la ecuación anterior por $-u^2$
  $
  (dif u)/(dif x) - u/x = -x space.quad "ED lineal"
  $

  La ecuación anterior tiene la siguiente forma
  $
  (dif u)/(dif x) + p(x) u = f(x)
  $
  con $p(x) = -1/x$, $f(x) = -x$

  El factor integrante se 
  $
  mu(x) = e^(integral p(x) dif x) = e^(-integral 1/x dif x) = e^(- ln(x)) = e^(ln(x^(-1))) = x^(-1) = 1/x
  $

  $
  1/x (dif u)/(dif x) - u/x 1/x = -x 1/x
  arrow.double.long
  1/x (dif u)/(dif x) - u/x^2 = -1
  arrow.double.long
  (dif)/(dif x)[1/x dot.c u] = -1
  $

  Integrando ambos lados
  $
  1/x dot.c u = - integral  dif x
  arrow.double.long
  1/x dot.c u = - x + C
  $

  Despejando a $u$
  $
  u = -x^2 + C x
  $

  Como $u = 1/y$
  $
  1/y = -x^2 + C x\
  arrow.double.long\
  therefore
  y = 1/(-x^2 + C x)
  $
]

#example()[
  $
  2 x y y' = 4 x^2 + 3y^2
  $

  Reescribiendo la ecuación
  $
  y' = (4x^2 + 3y^2)/(2x y) = (2x)/y + 3/2 y/x
  arrow.double.long
  y' - 3/(2x) y = 2 x y^(-1)
  $

  Proponiendo el siguiente cambio
  $
  u = y^(1-n) = y^(1-(-1)) = y^2 arrow.double.long y = u^(1/2)
  $

  Entonces, por la regla de la cadena
  $
  (dif y)/(dif x) = (dif y)/(dif u) (dif u)/(dif x) = 1/2 u^(-1/2) (dif u)/(dif x)
  $

  Sustituyendo en la ED
  $
  1/2 u^(-1/2) (dif u)/(dif x) - 3/(2x) u^(1/2) = 2x (u^(1/2))^(-1)
  arrow.double.long
  1/2 u^(-1/2) (dif u)/(dif x) - 3/(2x) u^(1/2) = (2x)/(u^(1/2))
  $

  Multiplicando por $2 u^(1/2)$
  $
  (dif u)/(dif x) - 3/x u = 4x
  $

  El factor integrante
  $
  mu(x) = e^(-3 integral 1/x dif x) = e^(-3 ln(x)) = e^ln(x^(-3)) = x^(-3)
  $

  Multiplicando $mu(x)$ por la ED
  $
  1/x^3 (dif u)/(dif x) - 3/x^4 u = 4/x^2
  arrow.double.long
  dif/(dif x)[x^(-3) u] = 4/x^2
  $

  Integrando ambos lados
  $
  x^(-3) u = 4 integral 1/x^2 dif x
  arrow.double.long
  x^(-3) u = - 4 /x + C
  $

  Como $u = y^2$
  $
  y^2/x^3 = -4/x + C
  arrow.double.long
  therefore
  y = -4x^2 + C x^3
  $
]

== Ecuación de Riccati

La siguiente ED
$
(dif y)/(dif x) = P(x) + Q(x)y + R(x) y^2
$

se le conoce como la ecuación de Riccati

Una ecuación de Riccati se puede resolver usando dos sustituciones consecutivas, siempre y cuando se conozca una solución particular $y_1(x)$ de la ecuación

Supongamos que conocemos una solución particular llama $y_1(x)$.

Usando la siguiente sustitución
$
y = y_1 (x) + 1 /u(x)
$

es posible transformar la ecuación de Riccati en una ED lineal de la forma
$
(dif u)/(dif x) = - [Q(x) + 2 R(x) y_1(x)] u - R(x)
$

#example()[
  Sea
  $
  (dif y)/(dif x) = 1+ x^2 - 2x y + y^2;
  space.quad space.quad y_1(x)=x
  $

  Resuelva la siguiente ecuación de Riccati usando la solución particular dada
  $
  P(x) = 1 + x^2
  space.quad
  Q(x) = - 2x

  space.quad
  R(x) = 1
  $

  Proponiendo la sustitución
  $
  y = x + 1/u(x)
  $

  Con esa sustitución sustitución se puede obtener
  $
  (dif u)/(dif x) = - [Q(x) + 2 R(x) y_1(x)] u - R(x)
  $

  Entonces
  $
  (dif u)/(dif x) = - [- 2x + 2x] u - 1 = - 1
  arrow.double.long
  dif u = - dif x
  arrow.double.long
  u = - x + C
  $

  Por lo tanto, la solución es
  $
  y = x + 1/(-x + C)
  $
]

== Ecuación de Clairaut

La siguiente ecuación
$
y = x (dif y)/(dif x) + g((dif y)/(dif x))
$

se conoce como ecuación de Clairaut

#example()[
  $
  y = x y' - (y')^4
  $

  Haciendo la siguiente sustitución
  $
  p = y' = (dif y)/(dif x)
  arrow.double.long
  y = x p - p^4
  $

  Derivando a $y$ con respecto de $x$
  $
  (dif y)/(dif x) = x (dif p)/(dif x) + p (dif x)/(dif x) - 4 p^3 (dif p)/(dif x)
  $

  Entonces
  $
  p = x p' + p - 4p^3 p'
  arrow.double.long
  x p' - 4p^3 p' = 0
  arrow.double.long
  p'(x - 4p^3) = 0
  $

  $
  p' = 0 space.quad space.quad x - 4p^3 = 0\
  arrow.double.long\
  p = C space.quad space.quad x = 4p^3 arrow.double p = (x/4)^(1/3)
  $

  Sabemos 
  $
  y = x y' - (y')^4 = x p - p^4 = x (x/4)^(1/3) - (x/4)^(4/3)\

  y = x y' - (y')^4 = x C - C^4 
  $

]

