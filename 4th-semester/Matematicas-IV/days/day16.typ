#import "../lib.typ":*

= 29 de Octubre de 2025

== Ecuaciones Diferenciales de Orden Superior

Recordemos que una ED de $n-$ésimo orden es de las forma
$
a_n (x) (dif^n y)/(dif x^n) + a_(n-1) (x) (dif^(n-1) y)/(dif x^(n-1)) + dots.c a_1 (x) (dif y)/(dif x) + a_0 (x) y = g(x)
$

=== Problema con Valores Iniciales (PVI)

ED de 1er orden con la siguiente condición inicial $y(x_0) = y_0$

=== Problema con Valores en las Frontera (PVF)
Una ED de $n-$ésimo orden con las siguientes condiciones iniciales
$
y(x_0) = y_0, y'(x_0) = y_1, dots,y^(n-1) (x_0) = y_(n-1)
$

== PVF de 2do orden

$
a_2 (x) (dif^2 y)/(dif x^2) + a_1(x) (dif y)/(dif x) + a_0 (x) y = g(x)
$

Condiciones iniciales son:
$
y(x_0) = y_0 space.quad space.quad space.quad y'(x_0) = y_1
$

== Teorema de Existencia y Unicidad

Nos da las condiciones con las que se garantiza la existencia y unicidad de un PVI de 1er orden

El siguiente teorema nos da las condiciones suficientes para la existencia y unicidad de una solución unica de un PVF de $n-$ésimo orden.
#theorem("Teorema de Existencia y Unicidad")[
  Sean $a_n(x), a_(n-1)(x), dots, a_1(x), a_0(x)$, además de $g(x)$ son continuas en un intervalo $I$, y sea $a_n (x) != 0 space.med forall x in I$, Si $x = x_0$ es cualquier punto en le intervalo $I$, entonces una solución $y(x)$ del PVF de $n-$ésimo orden existe en $I$ y es única.
]

#example()[
  Sea
  $
  3y''' + 5y'' - y' + 7y = 0
  $

  con $y(1) = y'(1) = y''(1) = 0$

  Entonces
  $
  a_3 (x) (dif^3y)/(dif x^3) + a_2 (x) (dif^2y)/(dif x^2) + a_1 (x) (dif y)/(dif x) + a_0 (x) y = g(x)
  $

  teniendose
  $
  a_3 (x) = 3 != 0, a_2 (x) = 5, a_1 (x) = -1, a_0 (x) = 7
  $, y por tanto se cumple con las condiciones del teorema.

  La ED tiene solución trivial $y(x) = 0$

  $therefore y = 0$ es la única solución en cualquier intervalo que contenga a $x=1$
]

#example()[
  Sea
  $
  y'' - 4y = 12x
  $
  con $y(0) = 4, y'(0) = 1$

  Compruebe que $y(x) = 3e^(2x) + e^(-2x) - 3x$ es una solución del PVF.

  Entonces
  $
   a_2 (x) (dif^2y)/(dif x^2) + a_1 (x) (dif y)/(dif x) + a_0 (x) y = g(x)
  $

  teniendose
  $
  a_2 (x) = 1 != 0, a_1 (x) = 0, a_0 (x) = -4, g(x) = 12x
  $, y por tanto se cumple con las condiciones del teorema.

  Tenemos que $x = 0 in I$. 

  $
  y(0) = 3e^(2(0)) + e^(-2(0)) - 3(0) = 4
  $
  $
  y'(x) = 6e^(2x) - 2e^(-2x) -3 arrow.double
  y'(0) = 6e^(2(0)) - 2e^(-2(0)) -3 = 1
  $

]

#example()[
  $
  y(x) = c x^2 + x + 3
  $

  es una solución del siguiente PVF
  $
  x^2 y'' - 2x y' + 2y = 6
  $ con $y(0) = 3, y'(0) = 1$

  Todo los coeficientes son continuas en $x = 0 in I$, con $I$ en intervalo. Pero $a_2 (0) = 0$.

  Como $a_(x) = 0$, podemos decir que no hay solución única que satisfaga las coeficientes iniciales del PVF.
]

Un PVF puede tener muchas, una, o ninguna solución

== Condiciones de Frontera

#note()[
  Pasamos de _condiciones iniciales_ a *condiciones de frontera*
]


Para una ED de 2de orden, otras condiciones de Frontera podrían ser las siguientes:
+ $y'(a) = y(0) space.quad y(b) = y_1$
+ $y(a) = y_0 space.quad y'(b) = y_1$
+ $y'(a) = y_0 space.quad y'(b) = y_1$

#example()[
  Sea

  $
  (dif^2 x)/(dif t^2) + 16x = 0
  $

  cuya familia de soluciones es
  $
  x(t) = C_1 cos(4t) + C_2 sin(4t)
  $

  (a) Supongamos que queremos determinar la solución que satisface las siguientes condiciones de frontera
  $
  x(0) = 0 space.quad space.quad x(pi/2) = 0
  $

  Cuando $t = 0$
  $
  x(0) = C_1 cos(4(0)) + C_2 sin(4(0)) = 0 arrow.double C_1 = 0
  $

  Cuando $t = pi/2$
  $
  x(pi/2) = C_2 sin(4(pi/2)) = 0 arrow.double C_2 = 0 " o bien " C_2 = c
  $ con $c$ cualquier valor

  El PVF tiene un número infinito de soluciones.


]

