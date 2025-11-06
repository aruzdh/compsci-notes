#import "../lib.typ":*

#set math.mat(delim: "|", gap: 1em)

= 05 de Noviembre de 2025

== 

#example()[
  $
  y_1 (x) = e^x, y_2 (x) = e^(2x), y_0 (x) = e^(3x)
  $

  satisfacen la siguiente ED:
  $
  y''' - 6y'' + 11y' - 6y = 0
  $

  $
  W(e^x, e^(2x), e^(3x)) =
  mat(
    e^x, e^(2x), e^(3x);
    e^x, 2e^(2x), 3e^(3x);
    e^x, 4e^(2x), 9e^(3x);
    )
    = 2e^(6x) != 0
  $
  son li.

  Por el principio de superposición:
  $
  y(x) = c_1 e^x + c_2 e^(2x) + c_3 e^(3x)
  $
  la solución general.
]

== ED no Homogéneas - Solución particular

$
a_n (x) (dif^n y)/(dif x^n) + a_(n-1)(x) (dif^(n-1) y)/(dif x^(n-1)) + dots.c + a_1 (x) (dif y)/(dif x) + a_0 (x) y = g(x)
$

$
y_p <- " Solución particular"
$

Cualquier función $y_p$ que satisface a la ED lineal no homogénea anterior se dice que es una solución particular o integral.

Si $y_1, y_2, dots, y_n$ son soluciones de la ED homogénea, y $y_p$ es cualquier solución particular de la ED no homogénea, entonces la combinación lineal
$
y(x) = c_1 y_1 + c_2 y_2 + dots.c + c_n y_n + y_p
$
también es solución de la ED no homogénea.

$
y_c = c_1 y_1 + c_2 y_2 + dots.c + c_n y_n
$

función complementaria para la ED no homogénea.

$
therefore "La solución general de una ED lineal no homogénea:"\
y(x) = y_c (x) + y_p (x)
$

#example()[
  $
  y_1 (x) = e^x, y_2 (x) = e^(2x), y_0 (x) = e^(3x)
  $

  satisfacen la siguiente ED:
  $
  y''' - 6y'' + 11y' - 6y = 0
  $

  y
  $
  y_p = -11/2 - 1/2 x
  $ es la solución particular asociada a la ED no homogénea.

  La solución general que satisface a la ED es:
  $
  y(x) = y_c (x) + y_p (x) = c_1 e^x + c_2 e^(2x) + c_3 e^(3x) - 11/2 - 1/2 x
  $
]

#example()[
  Encuentre la solución del siguiente PVF
  (a)
  $
  x^2 y'' - x y' + y = 0, y(1) = 3, y'(1) = -1,\
  y(x) = c_1 x + c_2 x ln(x)
  $

  Se tiene
  $
  y(1) = c_1 (1) + c_2 (1) ln(1) = 3 = c_1 + c_2 ln(1) = 3 arrow.double c_1 = 3
  $
  $
  y'(x) = c_1 + c_2 (x 1/x + ln(x)) = 3 + c_2 + c_2 ln(x)
  arrow.double.long
  y'(1) = 4 + c_2 + c_2 ln(1) = -1 arrow.double c_2 = -4
  $

  $
  therefore y(x) = 3x - 4x ln(x)
  $

  (b)
  $
  y(x) = c_1 + c_2 cos(x) + c_3 sin(x), y''' + y' = 0, y(pi) = 0, y'(pi) = 2, y''(pi) = -1
  $
]

== Reducción de orden

Sabemos que la solución general de una ED lineal homogénea de 2do orden dada por
$
a_2 (x) y'' (x) + a_1 (x) y' (x) + a_0 (x) y (x) = 0\
$
es
$
y(x) = c_1 y_1 (x) + c_2 y_2 (x)
$

donde $y_1 (x)$ y $y_2 (x)$ son soluciones linealmente independientes.

El método de reducción de orde es un método para determinar las soluciones $y_1 (x)$ y $y_2 (x)$ cuando los coeficientes $a_2 (x), a_1 (x), a_0 (x)$ son constantes.

Este método falla en algunos casos y solo produce una única solución. Cuando se tiene estos casos se puede construir una segunda solución $y_2 (x)$, siempre que se conozca una solución $y_1 (x)$ no trivial.

La idea básica de este método es reducir una ED lineal homogénea de 2do orden a una de 1er orden por medio de una sustitución en la que interviene la solución conocida $y_1 (x)$.

- Supongamos que $y_1 (x)$ es una solución no trivial. Buscamos una segunda solución $y_2 (x)$, tal que $y_1 (x)$ y $y_2 (x)$ sea un conjunto li.

#note()[
  Recordemos que si $y_1 (x)$ y $y_2 (x)$ son linealmente independientes
  $
  (y_2 (x))/(y_1 (x)) != C
  $ con $C$ una constante.

  Es decir
  $
  (y_2 (x))/(y_1 (x)) = u(x) arrow.double.long y_2 (x) = u(x) y_1 (x)
  $ 

  La función $u(x)$ se determina al sustituir $y_2 (x) = u(x) y_1 (x)$ en la ED original
]

#example()[
  Dado que $y_1 (x) = e^x$ es una solución de $y'' - y = 0$. Use el método de reducción de orden para determinar $y_2 (x)$

  Si $y(x) = u(x) y_1 (x) = u(x) e^x$
  $
  y'(x) = dots
  $

]
