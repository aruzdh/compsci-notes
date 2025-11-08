#import "../lib.typ":*

= 07 de Noviembre de 2025

== Método de Reducción de Orden
// TODO: Foto
Tenemos 
$
y_1 (x) arrow.double.long y = u(x) g_1 (x)
$

$
y''(x) + P(x) y' (x) + Q(x) y = 0
$

Caso general:
$
y'' (x) + (a_1 (x))/(a_2 (x))y' (x) + (a_0 (x))/(a_2 (x)) y (x) = 0\
$

Supongamos que $y_1 (x)$ es una solución conocida y $y_1 (x) != 0$. Entonces, si hacemos $y = u(x) y_1 (x)$ y se sustituye en la ED en la forma estándar:
$
y' = u(x) y_1' (x) + y_1 (x) u'(x)\
y'' = u(x) y_1''(x) + 2u'(x) y_1 '(x) + u''(x)y_1 (x)
$

Sustituyendo en la ED original:
$
dots
$


== Ecuaciones Lineales Homogéneas con Coeficientes Constantes

Como introducción recurriremos a las ED lineales homogéneas de 1er orden de las forma
$
a y' + b y = 0
$

donde $a,b$ son constantes y $a != 0$

Este tipo de Ecuaciones se pueden resolver por el método de separación de variables o usando un factor integrante. Existe otro método de solución si despejamos a $y'$:
$
y' = -b/a y arrow.double.long y' = k y arrow.double.long (dif y)/(dif x) = k y
$

La única función elemental no trivial cuya derivada es uns multiple constante de si misma es la función exponencial $e^(m x)$ con $m$ constante. Es decir,
$
y(x) = e^(m x) arrow.double.long (dif y)/(dif x) = m e^(m x) = m y
$

Entonces
$
a(m e^(m x)) + b e^(m x) = 0 arrow.double.long e^(m x) (a m + b) = 0 arrow.double.long a m + b = 0 and m = -b/a
$

$
therefore y(x) = e^(-b/a x)
$
es la solución que satisface a la ED.

#example()[
  Sea 
  $
  2y' + 5y = 0
  $

  Proponiendo una solución de la forma $y(x) = e^(m x)$

  Se tiene
  $
  y'(x) = m e^(m x)
  $

  Sustituyendo en la ED
  $
  2m e^(m x) + 5 e^(m x) = 0 arrow.double.long e^(m x)
  // underbrace((2m + 5), )
  (2m + 5)
  = 0
  $

  $
  therefore y(x) = e^(-5/2 x)
  $
]

ED de 2do orden
$
a y'' + b y' + c y = 0
$ con $a,b,c$ constantes

Supongamos que la solución es de la forma
$
y = e^(m x)
space.quad space.quad
y' = m e^(m x)
space.quad space.quad
y'' = m^2 e^(m x)
$

Sustituyendo en la ED original
$
a (m^2 e^(m x)) + b (m e^(m x)) + c e^(m x) = 0 arrow.double.long e^(m x) (a m^2 + b m + c) = 0 arrow.double.long a m^2 + b m + c = 0
$

cuyas racies son
$
m = (-b plus.minus sqrt(b^2 - 4a c))/(2 a)
$

Se puede tener tres casos
+ $b^2 - 4 a c > 0$: $m_1, m_2 in RR$ distintas
Entonces las dos soluciones son
$
y_1 (x) = e^(m_1 x)
space.quad space.quad
y_2 (x) = u(x) y_1 (x)
$
y
$
u = integral (e^(- integral p(x) dif x))/(y_1^2 (x)) dif x
$

Como
$
a y'' + b y' + c y = 0 arrow.double.long y'' + b/a y' + c/a y = 0
$

Entonces
$
y_2 (x) = e^(m x) integral (e^)
$


Y la solución general
$
y(x) = c_1 e^(m_1 x) + c_2 e^(m_2 x)
$
+ $b^2 - 4 a c = 0$: $m_1, m_2 in RR$ iguales
La solución es de la forma
$
y_1 (x) = e^(m_1 x)

$

+ $b^2 - 4 a c < 0$: $m_1, m_2 in CC$ conjugadas




