#import "../lib.typ":*

= 05 de Septiembre de 2025

== Métodos para Resolver ED

=== Variables Separables

Consideramos una ED de 1er orden de la forma
$
(dif y) / (dif x) = f(x,y) arrow.l.long "Forma Normal"
$

Cuando $f$ no depende de la variable $y$, se tiene que $f(x,y) = g(x)$

Entonces
$
(dif y) / (dif x) = g(x)
$,
y se puede resolver por integración.

Si $g(x)$ es una función continua, al integrar con respecto a $x$ la ED anterior en ambos lados se tiene:
$
integral (dif y) / (dif x) dif x = integral g(x) dif x
arrow.double.long
integral dif y = integral g(x) dif x
arrow.double.long
y + C_1 = underbrace((x) + C_2, "antiderivada de" g(x))\
arrow.double.long
y = G(x) + C, space.med "donde" C_2 - C_1 = C
$

#example()[
  $
  (dif y) / (dif x) = underbrace(1 + e^(2x), g(x))
  $

  Resolviendo por integración:
  $
  integral (dif y) / (dif x) dif x = integral 1 + e^(2x) dif x 
  arrow.long.double
  y = integral 1 + e^(2x) dif x  = x + C_2 + 1/2 integral e^u dif u = x + C_2 + 1/2 e^u + C+3\
  arrow.long.double
  y = x + 1/2 e^(2x) + C
  $
  con 
  $
  u = 2x, dif u = 2 dif x, dif x = (dif u)/2
  $, y donde $C = C_2 + C_3 - C_1$
]
#align(center)[
  _ *¿Qué pasa sí $f(x,y) != g(x)$ en la ED $(dif y) / (dif x) = f(x,y)?$ *_
]

$f(x,y)$ se puede escribir como el producto de una función de $x$ por una función de $y$, es decir
$
f(x,y) = g(x) h(y) arrow.double.long (dif y) / (dif x) = f(x,y) = g(x) h(y)
$
y se dice que es una ED de 1er orden *separable* o que tiene *variables separables*.

#example()[
  + 
    $
    (dif y) / (dif x) = y^2 x e^(3x + 4y) = underbrace((x e^(3x)), g(x)) dot.c underbrace((y e^(4y)), h(y))
    " es separable."
    $
  +
    $
    (dif y) / (dif x) = y + sin(x) " no es separable."
    $
]

=== Método de Separación de Variables

*Consiste en dejar de un lado todo lo que dependa de $y$, y del otro todo la que dependa de $x$.*

Observemos que si dividimos la ED
$
(dif y) / (dif x) = g(x) h(y)
$

entre $h(y)$ se tiene:

$
1/(h(y)) (dif y) / (dif x) = g(x)
$

Haciendo $p(y) = 1/(h(y))$:
$
p(y) (dif y) / (dif x) = g(x)
$

+ Si $p(y) = 1 arrow.double.long (dif y) / (dif x) = g(x)$
+ Si $y = phi(x)$ y es la solución a la ED $(dif y) / (dif x) = g(x) h(y) arrow.double.long$
si sustituimos dicha solución en $p(y) (dif y) / (dif x) = g(x)$ tenemos:
$
p[phi(x)] underbrace(phi'(x), (dif phi(x)) / (dif x)) = g(x)
$

Integrando ambos lados de la ED respecto a $x$:
$
integral p[phi(x)] phi'(x) dif x= integral g(x) dif x
$
$
phi'(x) = (dif phi(x)) / (dif x) = (dif y) / (dif x)
$

Despejando $dif y$:
$
dif y = phi'(x) dif x
$
Entonces se tiene:
$
integral p(y) dif y = integral phi(x) dif x
$


#exercise()[
  Resuelve la siguiente ED:
  $
  (1 + x) dif y - y dif x = 0
  $

  Separando variables, es decir:
  $
  p(y) dif y = g(x) dif x
  arrow.double.long
  (1+x) dif y = y dif x
  arrow.double.long
  (dif y) / y = (dif x)/(1+x)
  $

  Integrando ambos lados:
  $
  integral (dif y) / y = integral (dif x)/(1+x)
  arrow.double.long
  ln(y)_(forall y > 0) + C_1 = ln(1 + x)_(forall 1 + x > 0) + C_2
  arrow.double.long
  ln(y) = ln(1 + x) + C_3\
  arrow.double.long
  e^(ln(y)) = e^(ln(1 + x) + C_3)
  arrow.double.long
  e^(ln(y)) = e^(C_3) e^(ln(1 + x))
  arrow.double.long
  y = C(1 + x)
  $
]

#exercise()[
  Resuelva el siguiente PVI dado por
  $
  (dif y) / (dif x) = -x/y "con" y(4) = -3
  $

  Separando variables:
  $
  y dif y = -x dif x
  $

  Integrando ambos lados:
  $
  integral y dif y = - integral x dif x
  arrow.double.long
  y^2/2 + C_1 = - x^2/2 + C_2
  arrow.double.long
  y^2/2 = - x^2/2 + C_3
  arrow.double.long
  $x^2 + y^2 = C_3$
  $
  si $C_3 = r^2$, entonces
  $
  x^2 + y^2 = r^2
  $ representa una familia de circunferencia centradas en el origen.

  Usando la condición inicial $(x = 4, y = -3)$:

  Entonces 
  $
  4^2+ (-3^2) = r^2
  arrow.long.double
  16 + 9 = r^2 
  arrow.long.double 25 r^2\
  therefore x^2 + y^2 = 25
  $

  es la solución particular, que corresponde a una circunferencia concentrica de radio $r = 5$

  Para dejar expresadaa la solución de manera explica, despejamos a $y$:
  $
  y^2 = 25 - x^2
  arrow.long.double
  y = plus.minus sqrt(25 - x^2)
  $

  $
  y = sqrt(25 - x^2)
  $
  
  $
  y = -sqrt(25 - x^2)
  $

  con $25 - x^2 >= 0$, en el intervalo $-5 <= x <= 5$
]

//TODO:
#exercise()[
  Resuelva la siguiente ED:
  $
  (dif y) / (dif x) = y^2 - 4
  arrow.long.double
  (dif y) / (y^2 - 4) = 1 dif x
  $

  $y^2 - 4 != 0 arrow.long.double y = plus.minus 2$ son soluciones singulares.

  Integrando ambos lados:
  $
  integral (dif y) / (y^2 - 4) = integral dif x
  arrow.double.long
  integral [(1/4)/(y-2) - (1/4) / (y+2)] dif y = integral dif x\
  arrow.double.long
  integral [(1/4)/(y-2) - (1/4) / (y+2)] dif y = integral dif x
  $
]

