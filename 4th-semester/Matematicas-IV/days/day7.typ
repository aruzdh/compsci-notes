#import "../lib.typ":*

= 03 de Septiembre de 2025

== Problemas

#exercise()[
  Sea $y = y(x)$ la solución de la siguiente ED:
  $
 (dif y) / (dif x) = y(9 - y^2)
  $
  con la condición inicial $y(0) = 1$

  - ¿Es $y$ una función creciente o decreciente?
  - ¿Que valer tiene $lim_(x arrow infinity) y(x)$ y $lim_()$

  Encontrando las soluciones de equilibrio a partir de los puntos críticos.

  $arrow.double f(y) = 0$ donde 
  $
  f(y) = y(9 - y^2) arrow.double y(9 - y^2) = 0 arrow.double cases(
    y = 0\
    y = plus.minus 3
  )
  $

  Los puntos críticos son $0, plus.minus 3$ y las soluciones de equilibrio son $y(x) = 0, y(x) = 3, y(x) = -3$ 
  //TODO: grafica
  //TODO: tabla
  
  a) La función es creciente

  b) 
  $
  lim_(x arrow infinity) y(x) = 3 
  space.quad
  space.quad
  space.quad
  lim_(x arrow - infinity) y(x) = 0
  $
]

#exercise()[
  Dibuje el esquema fase de la siguiente ED:
  $
  (dif y) / (dif x) = (y-1)^2
  $

  Encontrando las soluciones de equilibrio a partir de los puntos críticos.

  $arrow.double f(y) = 0$ donde 
  $
  f(y) = (y - 1)^2 arrow.double (y - 1)^2 = 0 arrow.double (y - 1)^2 (y - 1)^2 = 0 arrow.double y = 1
  $

  Los punto crítico es $1$, y las soluciones de equilibrio son $y(x) = 1$ 

  //TODO: grafica
  //TODO: tabla
]

La solución de la ED es
$
y(x) = 1 - 1/(x + c)
$
si tengo las siguientes condiciones iniciales:
$
y(0) = -1
space.quad "y"space.quad
y(0) = 2
$

Las soluciones particulares son:
$
y(0) = -1, y(x) = 1 - 1/(x + 1/2)
space.quad
space.quad
y(0) = 2, y(x) = 1 - 1/(x - 1)
$
//TODO: graficas


== Puntos críticos atractores o repulsores
//TODO: grafica

Supongamos que $y(x)$ es una solución no constante de la ED autónoma
$
(dif y) / (dif x) = f(y)
$
y $c$ es un punto crítico de la ED.

Básicamente hay 3 tipos de comportamientos de $y(x)$ cerca de $c.$

+ Cuando ambas puntas de la flecha en cualquier lado de $c$ apuntan hacia el, entonces se dice que es un *punto asintóticamente estable* o *atractor*.
+ Cuando ambos puntas de la flecha en cualquier lado del punto crítico $c$ se alejan de él, entonces se dice que $c$ es un *punto crítico inestable* o *repulsor*.
+ Tenemos el caso en el que $c$ no es estable ni inestable, pero si presenta caracteristicas de ambos, entonces se dice que el punto crítico es *semiestable*.

== Problema de Velocidad Terminal

#example()[
  La ED autónoma:
  $
  m (dif v) / (dif t) = m g - k v
  $
  , donde $k$ es una constante positiva, $g$ es la aceleración de la gravedad. Modela la Velocida de un cuepo de masa $m$ que está cayendo bajo la influencia de la gravedad.

  El término $-k v$ representa la resistencia del aire.

  La velocidad de un cuerpo que cae de una gran altura no aumenta sin límite conforme pasa el tiempo $t$.

  Utilice un esquema fase de la ED para encontrar la velocidad límite o terminal del cuerpo. Explique su razonamiento.

  Reescribiendo la ED:
  $
  (dif v) / (dif t) = (m g - k v) / m = g - (k v) / m
  $

  Encuentro los puntos críticos y soluciones de equilibrio:
  $
  f(v) = = g - (k v) / m = 0 arrow.double (k v) / m = g arrow.double v = (m g) / k
  $ es punto crítico, y $v(t) = (m g) / k$ la solución de equilibrio.

  //TODO:grafica
  //TODO:tabla

  $
  "La velocidad terminal" = lim_(t arrow infinity) v arrow.double
  "La velocidad terminal" = (m g) / k
  $
]


