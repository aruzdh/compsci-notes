#import "../lib.typ":*

= 20 de Octubre de 2025

== Solución de ED por Sustitución

A veces es posible aplicar un cambio de variable para simplificar una ED y por tanto hacer que sea posible su solución.

El primer paso para resolver una ED es transformarla en otra mediante una sustitución.

Para proponer un cambio de variable adecuado, la ED debe estar en la forma siguiente:
$
(dif y)/(dif x) = f(x,y)
$

#example()[
  Tenemos
  $
  (dif y)/(dif x) = (x + y + 3)^2
  $

  Haciendo un cambio de variable:
  $
  u = x + y + 3
  $

  Despejando $y$:
  $
  y = u - x - 3
  $

  Entonces:
  $
  (dif y)/(dif x) = dif /(dif x)(u - x - 3) = (dif u)/(dif x) - (dif x)/(dif x) - (dif)/(dif x) 3 = (dif u) /(dif x) - 1
  $

  Así, la ED transformada:
  $
  (dif u)/(dif x) - 1 = u^2
  $

  $
  therefore (dif u)/(dif x) = u^2 + 1
  $

  Separando variables:
  $
  (dif u)/(u^2 + 1) = dif x
  $

  Integrando ambos lados:
  $
  integral (dif u)/(u^2 + 1) = integral dif x = arctan u = x + C
  $

  Despejando $u$:
  $
  u = tan (x + C)
  $

  Sustituyendo $u$:
  $
  x + y + 3 = tan (x + C)
  arrow.double.long

  #mathbox()[
    $y = tan (x + C) - x - 3$
  ]
  $
]

El ejemplo anterior ilustra que cualquier ED de la forma
$
(dif y)/(dif x) = F(a x + b y + c)
$

Se puede transformar en una ecuación de variables separables utilizando la siguiente sustitución:
$
u = a x + b y + c
$

== Ecuaciones Homogeneas

Se dice que una ec. de la forma
$
(dif y)/(dif x) = f(x,y)
$

es homogenea siempre que la función $f$ no dependa por separado de $x$ y $y$, sino solamente de su razón $y/x$ o $x/y$.

Entonces, las ecuaciones homogeneas son de la forma siguiente:
$
(dif y)/(dif x) = F(y/x) space.quad space.quad ("o " x/y)
$

#example()[
  a) Homogenea
  $
  (dif y)/(dif x) = (y^2 + 2x y)/x^2 = y^2/x^2 + (2x y)/x^2 = (y/x)^2 + 2(y/x)
  $

  b) Homogenea
  $
  (dif y)/(dif x) = ln(x) - ln(y) + (x + y)/(x - y) = ln(x/y) + (x + y)/(x - y) = ln((x dot.c 1/x)/(y dot.c 1/x)) + (x dot.c 1/x + y dot.c 1/x)/(x dot.c 1/x - y dot.c 1/x) = ln(1/(y/x)) + (1 + y/x)/(1 - y/x)
  $

  Si hacemos $u = y/x$, y despejando $y$:
  $
  (dif y)/(dif x) = dif/(dif x) (u x) = u (dif x)/(dif x) + x (dif u)/(dif x) = u + x (dif u)/(dif x)
  $

  Entonces:
  $
  u + x (dif u)/(dif x) = F(u)
  arrow.double.long
  x (dif u)/(dif x) = F(u) - u
  arrow.double.long
  (dif u)/(F(u) - u) = (dif x)/x
  $
]

#example()[
  Dada
  $
  2 x y (dif y)/(dif x) = 4 x^2 + 3y^2
  $

  Reescribiendo la ED:
  $
  (dif y)/(dif x) = (4x^2 + 3y^2)/(2 x y) = (4x^2)/(2 x y) + (3y^2)/(2 x y) = 2 (x/y) + 3/2 (y/x) = 2(1/(y/x)) + 3/2 (y/x) = F(y/x)
  $

  Haciendo $u = y/x$, $y = u x$

  $
  u + x (dif u)/(dif x) = 2 (1/u) + 3/2 (u)
  $

  Separando variables:
  $
  x (dif u)/(dif x) = 2 (1/u) + 3/2 (u) - u = 2/u + u/2 = (4 + u^2)/(2u)\
  arrow.double.long\
  (2u)/(4 + u^2) dif u = (dif x)/x
  $

  Integrando ambos lados:
  $
  2 integral (u dif u)/(4 + u^2) = integral (dif x)/x 
  arrow.double.long
  ln(u^2 + 4) = ln(x) + C_1
  $

  Despejando $u$:
  $
  u^2 + 4 = e^(ln(x) + C_1) = e^ln(x) e^(C_1)= C x
  $

  Así, $u^2 + 4 = C x$. Como $u = y /x$, $(y/x)^2 + 4 = y^2/x^2 + 4 = C x$

  $
  #mathbox()[
    $
    therefore y^2 + 4x^2 = C x^3
    $
  ]
  $
]

//TODO:
#exercise()[
  Dada
  $
  (dif y)/(dif x) = (y^2 + 2x y)/x^2
  $

  Reescribiendo la ED:
  $
  (dif y)/(dif x) = y^2/x^2 + (2x y)/x^2 = y/x + 2 y/x = F(y/x)
  $

  Haciendo $u = y/x$, $y = u x$
  $
  u + x (dif u)/(dif x) = (u x)/x + 2 (u x)/x = 3u\
  arrow.double.long\
  x (dif u)/(dif x) = 2u
  $

  Separando variables:
  $
  $

]

#example()[
  Resuelve el siguiente PVI
  $
  x (dif y)/(dif x) = y + sqrt(x^2 - y^2); space.quad space.quad y(x_0) = 0 space.en (x_0 > 0)
  $

  Reescribiendo la ED:
  $
  (dif y)/(dif x) = y/x + (sqrt(x^2 - y^2))/x = y/x + sqrt((x^2 - y^2)/x^2) = y/x + sqrt(1 - (y/x)^2), space.quad u = y/x, y = u x
  $

  Entonces
  $
  x (dif u)/(dif x) = sqrt(1 - u^2)
  $

  Separando variables
  $
  (dif u)/(sqrt(1 - u^2)) = (dif x) / x
  $

  Integrando ambos lados:
  $
  integral (dif u)/sqrt(1 - u^2) = integral (dif x)/x
  arrow.double.long
  arcsin(u) = ln(x) + C
  $

  Como $u = y/x$
  $
  arcsin (y/x) = ln(x) + C
  $

  Dado que $y(x_0) = 0$

  $
  arcsin (0/x_0) = ln(x_0) + C
  arrow.double.long
  0 = ln(x_0) + C
  arrow.double.long
  C = - ln(x_0)
  $

  Por tanto
  $
  arcsin (y/x) = ln(x) - ln(x_0) = ln(x/x_0)
  $

  Aplicando $sin$ de ambos lados
  $
  y/x = sin(ln(x/x_0))
  $

  $
  therefore y = x sin(ln(x/x_0))
  $

]
