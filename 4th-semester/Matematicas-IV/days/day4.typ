#import "../lib.typ":*

= 27 de Agosto de 2025

#exercise()[
  Se tiene la siguiente ED de 1er orden.
  $
  y' = 2 x y^2 = 0
  $
  cuya familia de soluciones es
  $
  y(x) = 1 / (x^2 + c)
  $

  Determine el intervalo de soluciones si se tiene la siguiente condición inicial $y(0) = 1$

  Para obtener la solución particular sustituimos $x = 0$ y $y = 1$ en la expresión dada por la familia de soluciones:
  $
  y(0) = 1 / (0^2 + c) = 1
  $
  , despejando $c$ se tiene: $1 = c$, y así la solución particular es:
  $
  y = 1 / (x^2 + 1)
  $
  La función no está definida cuando $x^2 + 1 = 0$, es decir, $x = plus.minus i$

  Trabajando en $RR$.El intervalo de definición $I$ es $(- infinity, infinity)$

  #align(center)[*_¿Qué pasa si $y(0) = -1$_*]

  Para obtener la solución particular sustituimos $x = 0$ y $y = -1$ en la expresión dada por la familia de soluciones:
  $
  y(0) = 1 / (0^2 + c) = -1
  $
  , despejando $c$ se tiene: $-1 = c$, y así la solución particular es:
  $
  y = 1 / (x^2 -1)
  $

  La función no está definida cuando $x^2 - 1 = 0$, es decir, $x = plus.minus 1$

  El intervalo donde no está definida la función es $RR - {plus.minus 1}$

  El intervalo de definición de $y(x) = 1 / (x^2 - 1)$ sujeta a la condición inicial $y(0) = -1$ es $(-1,1)$
]

#exercise()[
  PVI de 2do orden


  $
  x'' + 16x = 0
  $

  cuya familia de soluciones es
  $
  x(t) = C_1 cos(4t) + C_2 sin(4t)
  $
 
  Determine una solución que cumpla los siguientes valores/condiciones iniciales:
  $
  x(pi/2) = -2
  space.quad "y" space.quad
  x'(pi/2) = 1
  $

  Donde $x(pi/2) = -2$ pide que la solución particular pase por el punto $(pi/2, -2)$

  Sustituyendo $t = pi/2$ y $x = -2$ en la expresión de la familia de soluciones
  $
  x(pi/2) &= C_1 cos(4t) + C_2 sin(4t) = -2 \
  &= C_1 cos(2 pi) + C_2 sin(2pi) = -2
  $
  Por la tanto:$C_1 = -2$
  Sustituyendo $C_1 = -2$ en la familia de soluciones:
  $
  x(t) = -2 cos(4t) + C_2 sin(4t)
  $

  Derivando x(t):
  $
  x'(t) = 8 sin(4t) + 4C_2 cos(4t)
  $

  Aplicando la condición inicial:
  $
  x'(pi/2) &= 8 sin(4 pi/2) + 4C_2 cos(4pi/2) = 1\
  &=8 sin(2pi) + 4C_2 cos(2pi) = 1\
  &= 4C_2 = 1
  $
  Por tante $C_2 = 1/4$

  Por lo tanto, lo solución particular que cumple las condiciones iniciales:
  $
  x(t) = 2 cos(4t) + 1/4 sin(4t)
  $
]

Al considerar un problema con valores iniciales surgen 2 preguntas:
+ ¿Existe la solución al problema?
+ Si existe, ¿Es única?

