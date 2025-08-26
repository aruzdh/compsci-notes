#import "../lib.typ":*

= 25 de Agosto de 2025

== Sistema de Ecuaciones Diferenciales

Así como hay ED, también hay sistemas de EDO que tienen dos o más ecuaciones que implican derivadas de dos o más funciones incógnitas de una sola variable independiente.

#example()[
$
  "Sistema de ED de 1er orden"
  cases(
    (dif x) / (dif t) = f(t,x,y)\
    (dif y) / (dif t) = g(t,x,y)
  )
  $

  donde $x$ y $y$ son las variables dependientes, y $t$ es la variable independiente.
]

Una solución de un sistema como el anterior es un par de funciones derivables $x = Phi_1(t)$ y $y = Phi_2(t)$ definidas en un intervalo $I$ común.

#exercise()[
  Compruebe que el par de soluciones satisface el siguiente sistema de ecuaciones diferenciales en el intervalo $(- infinity, infinity)$.

  $
  (dif x) / (dif t) = x + 3y\
  (dif y) / (dif t) = 5x + 3y
  $

  con
  $
  x(t) = e^(-2t) + 3e^(6t)\
  y(t) = e^(-2t) + 5e^(6t)
  $

  //TODO:
  $
  (dif x) / (dif t) = -2e^(2t) + 18e^(6t)\
  x + 3y = e^(-2t) + 3^(6t) + 
  $
]

#exercise()[
  Compruebe que la expresión indicada es una solución implícita de la ED. Encuentre al menos una solución explícita de la forma siguiente $y = Phi(x)$. De un intervalo de definición de la solución $Phi$.

  $
  (dif X) / (dif t) = (X - 1) (1 - 2X)\
  ln((2X - 1) / (X - 1)) = t
  $

  Encontrando la función explícita de la forma $y = Phi(x)$, en este caso $X(t)$

  Despejando $X$:
  $
  e^(ln((2X - 1) / (X - 1))) = e^t
  $
  Quedando:
  $
  (2X - 1) / (X - 1) = e^t
  arrow.long.double
  2X - 1 = e^t X - e^t
  arrow.long.double
  2X - e^t X = 1 - e^t
  arrow.long.double
  X (2 - e^t) = 1 - e^t\
  therefore X(t) = (1 - e^t)/(2-e^t)
  $

  Encontrando el intervalo de definición:

  La solución $X(t)$ no está definida cuando $2 - e^t = 0$

  Resolviendo tenemos:
  $
  2 = e^t arrow.long.double ln(2) = ln(e^t) arrow.long.double ln(2) = t
  $

  El intervalo de definición $I$ es $RR-{ln(2)}$ o $(- infinity, ln(2)) union (ln(2), infinity)$

  Para comprobar:
  $
  (dif X) / (dif t) 
  = ((2 -e^t)(-e^t) - (1-e^t)(-e^t)) / (2-e^t)^2 
  = (-2e^t + e^(2t) - (-e^t + e^(2t))) / (2-e^t)^2
  = - (e^t) / (2-e^t)^2
  $

//TODO:
  $
  (X - 1)(1-2X) = [(1-e^t)/(2-e^t)][1 - 2 (1-e^t)/2-e^t] 
  &= [((1-e^t)-(2-e^t)) / (2e^t)] [(2 - e^t - (2-2e^t)) / (2-e^t)]\
  = [(-1)/(2-e^t)][(e^t) / (2-e^t)]
   = - (e^t) / (2-e^t)^2
  $
]

#exercise()[
  Determine los valores de $m$ tales que la función $y(x) = e^(m x)$ sean una solución de la siguiente ED:
  $
  y'' - 5y' + 6y = 0
  $

  Encontramos $y'$ y $y''$
  $
  y' = m e^(m x)
  space.quad
  y'' = m^2 e^(m x)
  $

  Sustituyendo:

  $
  m^2 e^(m x) - 5(m e^(m x)) + 6 (e^(m x)) = 0
  arrow.long.double
  m^2 e^(m x) - 5m e^(m x) + 6 e^(m x) = 0
  arrow.long.double
  e^(m x) (m^2  - 5m + 6) = 0
  $

  Dado que $e^(m x) != 0$, entonces $m^2 -5m + 6 = 0$

  Factorizando:

  $
  (m-3)(m-2) = 0
  $

  Entonces
  $
  m = 3
  space.quad "y" space.quad
  m = 2
  $

  Las soluciones que satisfacen la ED son:
  $
  y_1(x) = e^(3x)
  space.quad "y" space.quad
  y_2(x) = e^(2x)
  $
]

== Problemas con Valores Iniciales (PVI)

Generalmente nos interesan problemas en los que buscamos *una solución* $y(x)$ de una ED tal que $y(x)$ satisfaga ciertas condiciones, es decir, condiciones impuestas sobre una solución $y(x)$ desconocida o de sus derivadas.

En algún intervalo $I$ de definición que contiene $x_0$ (punto especifico) el problema a resolver 
$
(dif^n y) / (dif x^n) = f(x,y,y',y'', dots, y^(n-1))
$

Sujeto a
$
y(x_0) = y_0, y'(x_0) = y_1, dots, y^(n-1)(x_0) = y_(n-1)
$
llamadas *condiciones iniciales*.

es un problema con valores iniciales (PVI) donde $y_0, y_1, dots, y_(n_1)$ son constantes arbitrarias.

#example("PVI de 1er y 2do orden")[
  - PVI de 1er orden.
    $
    (dif y) / (dif x) = f(x,y), "sujeto a" y(x_0) = y_0
    $
  - PVI de 2do orden.
    $
    (dif^2 y) / (dif x^2) = f(x,y,y'), "sujeto a" cases(
      y(x_0) = y_0\
      y'(x_0) = y_1
    )
    $
]

=== PVI de 1er y 2do orden

- PVI de 1er orden
  //TODO: grafica
  Tenemos que buscar *una solución* dada por $y(x)$ de la ED $y' = f(x,y)$ en el intervalo de definición $I$ que contenga $x_0$ tal que su gráfica pase por el punto $(x_0, y_0)$
- PVI de 2do orden
  //TODO: grafica
  Tenemos que buscar una solución de la forma $y(x)$ de la ED $y'' = f(x,y,y')$ en el intervalo de definición $I$ de tal manera que no solo paso por $(x_0, y_0)$, sino que también la pendiente en a la curva en ese punto sea $y_1$.

#example()[
  PVI de 1er orden.
  $
  y' = y
  $
  cuya solución es la familia de soluciones $y(x) = c e^x$ están definidas en el intervalo $I: (- infinity, infinity)$ con la siguiente condición inicial:
  $
  y(0) = 3
  $

  Sustituimos $x = 0$ y $y = 3$ en la solución de la ED:
  $
  y(0) = c e^0 = 3 arrow.long.double c = 3
  $

  Por tanto, la solución particular que satisface el PVI es 
  $
  y(x) = 3 e^x
  $

  ¿Cuál será la solución particular de la ED si hacemos que *una* de las curvas solución pase por el punto $(1,-2)$
  Condición inicial: $y(1) = -2$, con $x=1$ y $y=-2$
  
  La solución es
  $
  y(x) = -2e^(x-1)
  $
]

