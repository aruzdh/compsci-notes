#import "../lib.typ": *

= 10 de Noviembre de 2025

==
+ Raices reales distintas
$
  a y'' + b y' + c y =0
$
Ecuación auxiliar/caracteristica
$
  a m^2 + b m + c = 0
$

Si $m_1$ y $m_2 in RR$ distintas
$
  y(x) = c_1 e^(m_1 x) + c_2 e^(m_2 x)
$

+ Raices reales iguales
$
  y(x) = c_1 e^(m_1 x) + c_2 x e^(m_2 x)
$

+ Raices complejas conjugadas
Si $m_1$ y $m_2$ son complejas conjugadas, entonces las podemos escribir como
$
  m_1 = alpha + i beta
  space.quad space.quad
  m_2 = alpha - i beta
$

donde $alpha, beta in RR$, $i = sqrt(-1)$

La solución general es
$
  y(x) = c_1 e^((alpha + i beta)x) + c_2 e^((alpha - i beta)x)
$

Generalmente se prefiere trabajar con funciones reales en lugar de exponenciales complejas. Para ello usamos la fórmula de Euler:
$
  e^(i theta) = cos(theta) + i sin(theta), forall theta in RR
$

// TODO: s
//

Por la fórmula de Euler:
$
  e^(i beta x) = cos(beta x) + i sin(beta x)\
  e^(-i beta x) = cos(-beta x) + i sin(- beta x)
$

Y
$
  cos(- beta x) = cos(beta x)
  space.quad space.quad
  sin(- beta x) = - sin(beta x)
$

Entonces
$
  e^(i beta x) = cos(beta x) - i sin(beta x)
$

Si hacemos
$
  e^(i beta x) + e^(- i beta x) = 2 cos(beta x)\
  e^(i beta x) - e^(- i beta x) = 2 i sin(beta x)
$

Como la solución general es de la forma:
$
  y(x) = c_1 e^((alpha + i beta)x) + c_2 e^((alpha - i beta)x)
$

Si $c_1 = c_2 = 1$
$
  y_1(x) = e^((alpha + i beta)x) + e^((alpha - i beta)x)
$

Si $c_1 = 1, c_2 = -1$
$
  y_1(x) = e^((alpha + i beta)x) - e^((alpha - i beta)x)
$

Para $y_1 (x)$
$
  y_1 (x) = e^(alpha x) e^(i beta x) + e^(alpha x) e^(- beta x) = e^(alpha x) [e^(i beta x) + e^(- i beta x)] = e^(alpha x) 2 cos(beta x)\
  y_2 (x) = e^(alpha x) e^(i beta x) - e^(alpha x) e^(- i beta x) = e^(alpha x) [e^(i beta x) - e^(- i beta x)] = e^(alpha x) 2 i sin(beta x)
$

Del corolario del Teorema del Principio de Superposición para ecs. homogéneas: Un multiplo constante $y(x) = c_1 y_1 (x)$ de una solución $y_1 (x)$ de una ED lineal homogénea también es solución.

Entonces tenemos que
$
  e^(alpha x) cos(beta x)
  space.quad space.quad
  e^(alpha x) sin(beta x)
$

son soluciones reales de la ED

La solución general
$
  y(x) = c_1 e^(alpha x) cos(beta x) + c_2 e^(alpha x) sin(beta x)
$

#example()[
  $
    2y'' - 5y' - 3y = 0
  $

  Usando la ec. auxiliar/caracteristica
  $
    a m^2 + b m + c = 0 arrow.double.long 2 m^2 - 5m - 3 = 0 arrow.double.long m_1 = -1/2, m_2 = 3
  $

  Cuando son raices reales distintas
  $
    y(x) c_1 e^(m_1 x) + c_2 e^(m_2 x) arrow.double.long y(x) = c_1 e^(-x/2) + c_2 e^(3x)
  $

  $
    y'' - 10y' + 25y = 0
  $

  Ecuación caracteristica
  $
    m^2 - 10 m + 25 = 0 arrow.double.long m_1 = 5, m_2 = 5
  $

  Como las raices son iguales, la solución es de la forma
  $
    y(x) = c_1 e^(m_1 x) + c_2 x e^(m_1 x) arrow.double.long y(x) = c_1 e^(5x) + c_2 x e^(5x)
  $

  $
    y'' - 4y' + 7y = 0
  $

  Ecuación caracteristica
  $
    m^2 - 4m + 7 = 0 arrow.double.long m_1 = -2 + sqrt(3) i, m_2 = -2 - sqrt(3) i
  $

  Como son raices conjugadas, la solución es de la forma
  $
    y(x) c_1 e^(alpha x) cos(beta x) + c_2 e^(alpha x) sin(beta x)
  $

  Entonces
  $
    y(x) = e^(-2 x)[c_1 cos(sqrt(3)x) + c_2 sin(sqrt(3)x)]
  $
]

#example()[
  $
    4y'' + 4y' + 17y = 0,
    space.quad space.quad
    y(0) = 1, y'(0) = 2
  $

  Ecuación caracteristica
  $
    4 m^2 + 4m + 17y = 0 arrow.double.long m_1 = -1/2 + 2i, m_2 = -1/2 - 2i
  $

  Entonces
  $
    y(x) = e^(-x/2)[c_1 cos(2x) + c_2 sin(2x)]
  $

  $
    y'(x) =
  $
]
