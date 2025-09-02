#import "../lib.typ":*

= 01 de Septiembre de 2025

== Elemento Lineal

//FIX: underbrace

$
(dif y) / (dif x) = underbrace((x,y), "Función pendiente/razón") arrow.l.long "Forma normal"
$

La pendiente de la recta tangente en un punto $(x,y)$ en una curva solución, es el valor de la 1era derivada $(dif y)/(dif x)$.

//TODO:ref
y por la ecuación anterior es el valor de la función pendiente, es decir, 

$
(dif y) / (dif x) = m = f(x,y)
$

#exercise()[
  Consideremos la siguiente ED
  $
  (dif y) / (dif x) = underbrace(.2 x y, f(x,y))
  $

  Calcule la pendiente en el punto $(2,3)$

  La pendiente $m$ de $f(x,y) = 0.2 x y$ en el punto $(2,3)$ es:

  Evaluando $(x=2, y=3)$ en $f(x,y) arrow.double f(2,3) = 0.2 (2) (3) = 1.2$

  Por lo tanto, la pendiente es $m = 1.2$, o bien, $(dif y)/(dif x) = 1.2$

  //TODO: gráfica
]

Supongamos que $(x,y)$ representa cualquier punto en el plano $x y$ en el que esta definida una función $f$. El valor de $f(x,y)$ que la función $f$ le asigna al punto $(x,y)$ representa pendiente de una recta, gráficamente como un segmento de recta llamado *elemento lineal*

== Campo Direccional

Si evaluamos sistemáticamente a $f$ en un conjunto de puntos en el plano $x y$ y si dibujamos un elemento lineal en cada punto $(x,y)$ con pendiente $f(x,y)$, entonces al conjunto de todos esos elementos lineales le llamamos *campo direccional* o *isoclinas* de la ED.

//TODO: gráfica

Visualmente, la dirección del campo indica el aspecto o forma de una familia de solución de la ED.

== Crecimiento y Decremento

La interpretación de la derivada $(dif y)/(dif x)$ como una función que da la pendiente juega un papel fundamental en la construcción de un campo direccional.

Recordemos que:
$
(dif y) / (dif x) > 0 space.med forall x in I arrow.double y(x) "es creciente en" I
$

$
(dif y) / (dif x) < 0 space.med forall x in I arrow.double y(x) "es decreciente en" I
$

=== Ecuación Diferencial de 1er Orden Autónomas

#definition("Ecuación Diferencial de 1er Orden Autónoma")[
  Una EDO en la que la variable independiente _no_ aparece explícitamente se le llama *autónoma*.
  $
  (dif y) / (dif x) = f(y)
  $
]

//TODO:

#example()[
  - $(dif y) / (dif x) = 1 + y^2$ es autónoma.
  - $(dif y) / (dif x) = 0.2 x y$ no es autónoma.
  - $(dif A) / (dif t) = k A$, con $k = "constante"$, es autónoma.
  - $(dif x) / (dif t) = k x(n + 1 - x)$, con $k,n = "constante"$, es autónoma.
  - $(dif T) / (dif t) = k (T - T_m)$, con $T,T_m = "constante"$, es autónoma.
]

== Puntos Críticos

Los puntos críticos se obtienen al hacer o igualar la derivada $(dif y) / (dif x) = 0$. Entonces, para encontrar los puntos críticos de 
$
(dif y) / (dif x) = f(y) = 0
$

basta encontrar los valores $c$ tales que cumplan $f(c) = 0$

#example()[
  Encuentre los puntos críticos de la siguiente ED:
  $
  (dif y) / (dif x) = 5 y^2 + 6y arrow.l.long "Si es una ED autónoma."
  $
  Para encontrar los puntos críticos hacemos:
  $
  (dif y) / (dif x) = 5 y^2 + 6y = 0
  $

  Resolviendo $5 y^2 + 6y = 0$:
  $
  y(5y + 6) = 0 arrow.long.double y = 0, space.med 5y + 6 = 0 arrow.double y = - 6/5
  $

  Por tanto, los puntos críticos de la ED son $y = 0$ y $y = -6/5$
]

#note()[
  Un _punto crítico_ también es conocido como *punto de equilibrio* o *punto estacionario*.
]

Si se sustituyen $y = c$ en $(dif y)/(dif x) = f(y)$ entonces ambos lados de la ecuación son iguales a cero. Esto significa que si $c$ es un punto crítico de una ED autónoma ($(dif y)/(dif x) = f(y)$), entonces $y(x) = c$ es una solución constante a la ED autónoma.

=== Solución de Equilibrio

#definition("Solución de Equilibrio")[
  Una solución constante $y(x) = c$ se llama *solución de equilibrio*. Las soluciones de equilibrio son las únicas soluciones constantes de las ED autónomas.
]

Podemos decir cuando una solución no constante $y = y(x)$ está creciendo o decreciendo determinando el signo de la derivada $(dif y) / (dif x)$ en algún intervalo $I$.

En este caso se puede hacer identificando los intervalos en el eje $y$ en los que la función $f(y)$ es positiva o negativa.

#example()[
  $
  (dif P) / (dif t) = P(a - b P) space.quad "con" a,b >0 "y constantes."
  $

  Es una ED autónoma.

  Para calcular los puntos críticos hacemos $f(P) = 0$ y resolvemos:
  $
  P(a - b P) = 0 arrow.long.double P = 0, P = a /b
  $

  Entonces las soluciones de equilibrio de la ED son $P(t) = 0$ y $P(t) = a/b$.

  Graficando los puntos críticos y soluciones de equilibrio:
  //TODO: gráfica

  Definimos la *recta fase* en tres intervalos

  - $I: (- infinity, 0)$ o $- infinity < P < 0$
  - $I I: (0, a/b)$ o $0 < P < a/b$
  - $I I I: (a/b, infinity)$ o $a/b < P < infinity$

  Con los datos anteriores construimos la siguiente tabla:

  //TODO: Tabla


  //TODO: gráfica con las flechas
  Esquema fase unidimensional
  //TODO: gráfica
]

#exercise()[
  Dibuje el esquema fase y el comportamiento de las curvas solución de la siguiente ED:
  $
  (dif y) / (dif x) = y^3 - 4y
  $

  La ED es autónoma.

  Encontrando los puntos críticos y soluciones de equilibrio: 
  $
  f(y) = y^3 - 4y = 0
  $

  Resolviendo:
  $
  y(y^2 - 4) = 0
  $

  Entonces $y = 0$ y $y^2 - 4 = 0 arrow.double y = plus.minus 2$

  Por tanto los puntos críticos son $y = 0$, $y = -2$, y $y = 2$, y las soluciones de equilibrio son $y = 0$, $y = -2$, y $y = 2$

  Graficando los puntos críticos y soluciones de equilibrio:
  //TODO: gráfica

  //TODO: Tabla

  //TODO: gráfica

]

