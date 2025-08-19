#import "../lib.typ":*

= 18 de Agosto de 2025

== Solución de una EDO

Cualquier función $Phi$ definida en un intervalo $I$ y que tiene *al menos $n$ derivadas* continuas en $I$, las cuales se sustituyen en la EDO de orden $n$ y reducen la ecuación a una identidad. Entonces se dice que $Phi$ es una solución de la EDO en el intervalo $I$.

#definition("Intervalo de Definición (I)")[
  Toda solución que satisfaga una ED tiene que estar definida en un *intervalo de definición*, o también conocido como *intervalo de existencia*, *intervalo de validez*, o *dominio de solución*, y puede ser un intervalo abierto $(a,b)$, un intervalo cerrado $[a,b]$, un intervalo infinito $(a, infinity)$, etc.
]

//TODO:
#example()[
  Verifique que la función indicada es una solución de la EC dada en el intervalo dado.
  - $(dif y) / (dif x) = x y^(1/2)$, $y(x) = 1/16 x^4$, $space.quad forall x in (- infinity, infinity)$
  $
  (4x^3) / 16 = x^3/4 = x(1/16 x^4)^(1/2) = x (1/4 x^2) = x^3/4
  $
  - $4x^2 y'' + y = 0$, $y(x) = 2x^(1/2) - x^(1/2) ln(x)$, $space.quad forall x > 0$
  $
  y' = - 1/2 x^(-1/2) ln(x)
  $
  $
  y'' = - 1/2 x^(-3/2) + 1/4 x^(-3/2) ln(x)
  $
  Sustituyendo $y''$ en la ED original:

  $
  4x^2 y'' + y = 0$, $y(x) = 2x^(1/2) - x^(1/2) ln(x)$, $space.quad forall x > 0
  space.quad\
  dots.v
  therefore y(x) "es solución de la ED"
  $


  - $x^2 y'' - 3x y' + 4y = 0$, $y(x) = x^2 ln(x)$, $space.quad forall x > 0$
]


#note()[
  Una solución $Phi$ de una ED que es igual a cero $(Phi = 0)$ en un intervalo $I$ se dice que es una solución trivial (obvia).
]

== Curva Solución

Se llama *curva solución* la gráfica de una solución $Phi$ de una ED. Como $Phi$ es una función derivable, continua en un intervalo de definición.

== Solución Implícitas

En ocasiones al resolver EDO no siempre se tiene soluciones explícitas, sino que también se pueden obtener soluciones implícitas

Se dice que una relación $G(x,y) = 0$ (e.g. $x e^y sin(x/y) = 0$) es una solución implícita de una EDO de la forma: 
$
F(x,y,y',dots,y^n) = 0
$

#exercise()[
  La relación $x^2 + y^2 = 25$ es una _solución implícita_ de la ED 
  $
  (dif y) / (dif x) = - x/y, space.quad forall x in (-s, s)
  $

  Derivando implícitamente se tiene:
  $
  dif / (dif x) x^2 + dif / (dif x) y^2 = dif / (dif x) 25
  $
  $
  2x + 2y (dif y) / (dif x) = 0
  $
  $
  2(x + y (dif y) / (dif x)) = 0
  $
  Despejando $(dif y) / (dif x)$
  $
  y (dif y) / (dif x) = -x 
  arrow.long.double
  (dif y) / (dif x) = - x/y
  $
]

== Familia de Soluciones

Cuando resolvemos una ED de 1er orden de la forma
$
F(x,y,y') = 0,
$
normalmente se obtiene una solución que contiene una sola constante arbitraria o parámetro $c$.

Una solución que contiene una constante arbitraria $C$ representa un conjunto de soluciones llamado *familia de soluciones uniparamétrica*.

#example()[
  Tenemos la siguiente ED lineal de 1er orden.
  $
  x y' - y = x^2 sin(x)
  $
  cuya solución es
  $
  y(x) = C x - x cos(x)
  $
]

Cuando resolvemos una ED de orden $n$ de lo forma

$
F(x,y,y', y'', dots, y^n) = 0
$

buscamos una familia de soluciones de la forma siguiente:
$
G(x,y, C_1, C_2, dots, C_n) = 0
$

Lo que significa que una sola ED puede tener un número infinito de soluciones (para cada valor que se le puede dar a $C$)

Cuando a una solución de una ED se le asigna un único valor a la constante $C$ se le llama *solución particular*.

== Solución Singular

Cuando una ED tiene solución que no forma parte o no pertenece a una familia de soluciones, se dice que es una *solución singular*.

#example()[
  $
  y_1 = 1/16 x^4
  space.quad "y" space.quad
  y_2 = 0 
  space.med
  ("sol. trivial")
  $
  son soluciones de la ecuación diferencial
  $(dif y) / (dif x) = x y^(1/2)$

  La familia de soluciones es
  $
  y(x) = (1/4 x^2 + C)^2
  $
  pero $y_2 = 0$ es una solución singular porque no pertenece a la familia de soluciones ya que no hay manera de darle un valor a $C$ para obtener $y_2 = 0$
]
