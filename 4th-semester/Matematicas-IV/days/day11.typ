#import "../lib.typ":*

= 13 de Octubre de 2025

== Ecuaciones Exactas

Aunque la siguiente ED de 1er orden
$
y dif x + x dif y = 0
$

es separable, podemos resolver la ecuación de una forma alterna al reconocer que la expresión del lado izquierdo es la diferencial de la función $f(x,y) = x y$:
$
dif f = x dif y + y dif x
$

En este tema analizaremos las ED de 1er orden de la forma diferencial
$
M(x,y) dif x + N(x,y) dif y = 0
$

Aplicaremos una secilla prueba a $M$ y a $N$ para determinar si $M(x,y) dif x + N(x,y) dif y$ es una diferencial de una función $f(x,y)$. Si es así, encontraremos $f$ integrando parcialmente.

=== Diferencial de una función de dos variables

Si $z = f(x,y)$ es una función de dos variables con primeras derivadas parciales continuas en una región $R$ en el plano $x y$, su diferencial es
$
dif z = (diff f)/(diff x) dif x + (diff f)/(diff y) dif y
$

Cuando $f(x,y) = c$, con $c$ constante, la ecuación anterior implica que
$
0 = (diff f)/(diff x) dif x + (diff f)/(diff y) dif y
$

Es decir, dada una familia de curvas $f(x,y) = c$ podemos generar una ED de 1er orden si calculamos la diferencial en ambos lados de la igualdad.

#example()[
  Teniendo
  $
  x^2 - 5 x y + y^3 = c
  $
  Sacando la diferencial de ambos lados:
  $
  (diff f)/(diff x) = 2x - 5y
  space.quad space.quad space.quad
  (diff f)/(diff y) =  -5x + 3y^2
  $

  Entonces
  $
  (2x - 5y) dif x + (-5x + 3y^2) dif y = 0
  $

]

#note()[
  No todas las ED de 1er orden escritas en la forma
  $  
  M(x,y) dif x + N(x,y) dif y = 0
  $
  corresponden a una diferencial de $f(x,y) = c$
]

== ED Exacta

#definition()[
  Una expresión diferencial dada por 
  $
    M(x,y) dif x + N(x,y) dif y
  $
  en una diferencial exacta en una región $R$ del plano $x y$ si esta corresponde a la diferencial de alguna función $f(x,y)$ dada en $R$.
]

#definition()[
  Una ED de 1er orden de la forma
  $
    M(x,y) dif x + N(x,y) dif y = 0
  $
]

se dice que la expresión del lado izquierdo es una diferencial exacta

#example()[
  $
  x^2 y^3 dif x + x^3 y^2 dif y = 0
  $
  es exacta ya que en lado izquierdo es una diferencial exacta, puesto que:

  $
  dif (1/3 x^3 y^3) = 1/3 x^3 3y^2 dif y + y^3 3 1/3 x^2 dif x = x^2 y^3 dif x + x^3 y^2 dif y
  $

  Ahora
  $
  (diff f)/(diff x) = 1/3 y^3 (3x^2) = x^2 y^3
  $
  $
  (diff f)/(diff x) = x^3 y^2
  $
  
  y se tiene que
  $
  (diff f)/(diff x) = M(x,y)
  space.quad space.quad space.quad
  (diff f)/(diff y) = N(x,y)
  $
]

== Criterio para una Diferencial Exacta

Sean $M(x,y)$ y $N(x,y)$ funciones continuas y que tienen primeras derivadas parciales en una región rectangular $R$ definida por $a <= x <= b$ y $c <= y <= d$, Entonces una condición necesaria y suficiente para que
$
M(x,y) dif x + N(x,y) dif y
$

sea exacta, se tiene que cumplir 
$
(diff M)/(diff y) = (diff N)/(diff x)
space.quad
diff_y M = diff_x N
$

== Método de solución para las ED exactas

$
M(x,y) dif x + N(x,y) dif y = 0
$

+ Verificar que la ED sea exacta. Para ello tenemos que verificar que se cumpla
$
(diff M)/(diff y) = (diff N)/(diff x)
$

EJ:
$
2x y dif x + (x^2 - 1) dif y = 0
$

$
(diff M)/(diff y) = 2x = (diff M)/(diff y)
$

Como ambos derivadas son iguales, la ED es exacta.

Si es exacta, entonces existe una función $f$ tal que 
$
(diff f)/(diff x) = M(x,y)
space.quad space.quad space.quad
(diff f)/(diff y) = N(x,y)
$

Del EJ tenemos:
$
(diff f)/(diff x) = 2x y
space.quad space.quad space.quad
(diff f)/(diff y) = x^2 - 1
$

Considerando $(diff f)/(diff x) = 2x y$ por ser "más facil" de trabajar tenemos:

Para determinar $f$ integramos con respecto a $x$, mientras $y$ se conserva constante:
$
f(x,y) = integral M(x,y) dif x + g(y)
$

En el EJ:
$
f(x,y) = integral 2 x y dif x + g(y) = 2y integral x dif x + g(y) = 2y (x^2/2) + g(y) = x^2 y + g(y)
$

Como
$
(diff f)/(diff y) = N(x,y) = x^2 - 1
$
se tiene
$
(diff f)/(diff y) = x^2 + g'(y) = x^2 - 1 arrow.double g'(y) = -1
$

Integrando con respecto a $y$:
$
g(y) = - integral 1 dif y = - y
$

$
therefore f(x,y) = x^2 y - y
$

Las curvas solución son de las forma:
$
f(x,y) = c arrow.double x^2 y - y = c arrow.double y = c/(x^2 - 1)
$

#example()[
  Dada 
  $
  e^(2y) - y cos(x y) dif x + (2x e^(2y) - x cos(x y) + 2y)dif y = 0
  $

  Verificando que sea exacta:
  $
  (diff M)/(diff y) = (diff N)/(diff x)
  $

  $
  (diff M)/(diff y) = 2 e^(2y) - [-x y sin(x y) + cos(x y)]
  = 2 e^(2y) + x y sin(x y) - cos(x y)
  $

  $
  (diff N)/(diff x) = 2e^(2y) - [-x y sin(x y) + cos(x y)] = 2e^(2y) + x y sin( x y) - cos(x y)
  $

  Como las derivadas son iguales, la ED es exacta.

  Entonces
  $
  exists f(x,y) space.quad 
  (diff f)/(diff x) = e^(2y) - y cos(x y);
  space.quad
  (diff f)/(diff y) = 2x e^(2y) - x cos(x y) + 2y
  $

  Integrando con respecto de $y$:

  $
  f(x,y) &= 2x integral e^(2y) dif y - x integral cos(x y) dif y + 2 integral y dif y + h(x)\
   &= [2x (1/2 e^(2y)) - x (1/x sin(x y)) + 2 (y^2/2)] + h(x)\
   &= x e^(2y) - sin(x y) + y^2 + h(x)
  $

  Como
  $
  (diff f)/(diff x) = e^(2y) - y cos(x y) = e^(2y) - y cos( x y) + h'(x)
  $

  Entonces
  $
  h'(x) = 0
  $

  Integrando con respecto de $x$:
  $
  h(x) = C_1
  $

  y se tiene 

  $
  f(x,y) = x e^(2y) - sin(x y) + y^2 + C_1
  $

  La solución que satisface a la ED $f(x,y) = C$
  $
  x e^(2y) - sin(x y) + y^2 + C_1 = C
  $
  con k = C_1 - C

  $
  therefore x e^(2y) - sin(x y) + y^2 + k = 0
  $
]
