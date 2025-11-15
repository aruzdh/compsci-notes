#import "../lib.typ": *

= 14 de Noviembre de 2025

== Problema de Sturm-Lioville

#example()[
  $
    y'' + k^2 y = 0\
    y''- k^2y = 0
  $
  con $forall k in RR$

  (a)
  $
    y'' + k^2 y = 0\
  $

  Ecuación caracteristica
  $
    m^2 + k^2 = 0 arrow.double.long m^2 = -k^2 arrow.double.long m = plus.minus k i
  $

  La solución es de la forma
  $
    y(x) = e^(0 x) [c_1 cos(k x) + c_2 sin(k x)] = c_1 cos(k x) + c_2 sin(k x)
  $

  (b)
  $
    y''- k^2y = 0
  $

  Ecuación caracteristica
  $
    m^2 - k^2 = 0 arrow.double.long m = plus.minus k
  $

  La solución es de la forma
  $
    y(x) = c_1 e^(k x) + c_2 e^(-k x)
  $

  Si
  $
    c_1 = c_2 = 1/2
    arrow.double.long
    y(x) = 1/2 e^(k x) + 1/2 e^(-k x) = 1/2(e^(k x) + e^(-k x)) = cosh(k x)
  $

  Si
  $
    c_1 = 1/2, c_2 = -1/2
    arrow.double.long
    y(x) = 1/2 e^(k x) - 1/2 e^(-k x) = 1/2(e^(k x) - e^(-k x)) = sinh(k x)
  $
]

== Ecuaciones de Orden Superior

Se tiene la siguiente ED linea homogénea de $n-$ésimo orden
// TODO:
$
  a
$

Si $a_i (x)$ con $i = 0,1,dots, n$ son constantes, tiene una ecuación auxiliar
$
  a_n m^n + a_(n-1) m^(n-1) + dots.c + a_2 m^2 + a_1 m + a_0 = 0
$

Por ejemplo, si las raices de la ecuación auxiliar son reales y distintas, la solución general de la ED es:
$
  y(x) = c_1 e^(m_1 x) + c_2 e^(m_2 x) + dots.c + c_n e^(m_n x)
$

Cuando se tiene raices reales repetidas, es posible demostrar que las siguientes soluciones l.i, son
$
  e^(m_1 x), x e^(m_1 x), x^2 e^(m_1 x), dots, x^(k-1) e^(m_1 x)
$

La solución general es de la forma
$
  y(x) = c_1 e^(m_1 x) + c_2 x e^(m_1 x) + c_3 x^2 e^(m_1 x) + dots.c + c_k x^(k-1) e^(m_1 x)
$

#example()[
  $
    y''' + 3y'' - 4y = 0
  $

  Ecuación auxiliar
  $
    m^3 + 3m^2 - 4 = 0
  $

  Las raices son
  $
    m_1 = 1, m_2 = m_3 = -2
  $

  La solución general es:
  $
    y(x) = c_1 e^x + c_2 e^(-2x) + c_3 x e^(-2x)
  $
]

#example()[
  $
    3y''' + 5y'' + 10 y' - 4y = 0
  $

  Ecuación auxiliar
  $
    3m^3 + 5m^2 + 10m - 4 = 0
  $

  Las raices son $m_1 = 1/3, m_2 = -1 + sqrt(3)i, m_3 = -1 - sqrt(3)i$

  Entonces
  $
    y(x) = c_1 e^(1/3 x) + e^(-x)[c_2 cos(sqrt(3)x) + c_3 sin(sqrt(3)x)]
  $
]

== Coeficientes Indeterminados

Este método es utilizado para resolver ED lineales no homogéneas de $n-$ésimo orden de la forma:
$
  dots = g(x)
$

Para resolver este tipo de ecuaciones se debe hacer dos cosas:
+ Encontrar una función complementaria $y_c$
+ Encontrar una función particular $y_p$ de la ecuación no homogénea

La solución general a una ED no homogénea
$
  y(x) = y_c + y_p
$

$y_c:$ se encuentra al resolver la ED homogénea

La idea fundamental detras del método es una conjetura acerca de la forma de $y_p$. Este método se limita a resolver
+ ED lineales no homogéneas con Coeficientes constantes
+ $g(x)$ puede ser de la forma: función constante, polinomial, exponencial, $sin$ o $cos$, o sumas y productos de esta funciones

#example()[
  $g(x) = 10, g(x) = x^2 - 5x, g(x) = 16x - 6 + 8e^(-x), g(x) = sin(3x) - 5x cos(2x), g(x) = x e^x sin(x) + (3x^2 - 1) e^(-4x)$
]

El método no es aplicable cuando
$
  g(x) = ln(x), g(x) = 1/x, g(x) = tan x, g(x) sin^(-1) (x)
$

#example()[
  $
    y'' + 4y' - 2y = 2x^2 - 3x + 6
    // TODO:
  $
]
