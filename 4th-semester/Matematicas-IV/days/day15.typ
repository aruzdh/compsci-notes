#import "../lib.typ":*

= 27 de Octubre de 2025

== Ecuaciones Diferenciales Reducibles a Homogéneas

Sea la siguiente ED
$
(dif y)/(dif x) = (a x + b y + m)/(c x d y + n)
$

con $a,b,c,d,m$ y $n$ son constantes.

- Si $a d - b c != 0$: La ecuación anterior se reduce a una ED homogénea de variables $u$ y $v$
$
(dif v)/(dif u) = (a u + b v)/(c u + d v)
$

Haciendo el siguiente cambio de variable:
$
x = u + h arrow.double dif x = dif u\
y = v + k arrow.double dif y = dif v
$

donde $h$ y $k$ son soluciones del sistema
$
a h + b k + m = 0\
c h + d k + n = 0
$

- Si $a d - b c = 0 arrow.double a d = b c$: El cambio de variable es el siguiente
$
w = a x + b y
space.quad space.quad "o" space.quad space.quad
w = c x + d y
$

Entonces
$
(dif w)/(dif x) = (dif)/(dif x)[a x + b y] = dif/(dif x)(a x) + dif/(dif x) (b y) = a + b (dif y)/(dif x) arrow.double.long (dif y)/(dif x) = 1/b ((dif w)/(dif x) - a)
$

$
(dif w)/(dif x) = dif/(dif x) [c x + d y] = c + d (dif y)/(dif x) arrow.double.long (dif y)/(dif x) = 1/d ((dif w)/(dif x) - c)
$

Reduce la ED a una ecuación de variables separables en las variables $w$ y $x$.

#example()[
  Sea 
  $
  (dif y)/(dif x) = (x - y - 1)/(x + y + 3)
  $

  La ED es de la forma
  $
  (dif y)/(dif x) = (a x + b y + m)/(c x + d y + n)
  $
  con $a = 1, b = -1, m = -1, c = 1, d = 1, n = 3$

  Encontrando
  $
  a d - b c = (1)(1) - (-1)(1) = 2
  $

  Como el término anterior es $!= 0$, hacemos el siguiente cambio
  $
  x = u + h space.quad space.quad y = v + k
  $

  Encontrando los valores de $h$ y $k$ tenemos lo siguiente
  $
  a h + b k + m = 0\
  c h + d k + n = 0
  $
  $
  arrow.double.long
  $
  $
  h - k - 1 = 0\
  h + k + 3 = 0
  $

  $
  2h + 2 = 0 arrow.double.long h = -1
  $

  $
  arrow.double.long
  $

  $
  -1 -k - 1 = 0 arrow.double.long -k - 2 = 0 arrow.double.long k = -2
  $

  Haciendo 
  $
  x = u + h arrow.double x = u - 1 arrow.double dif x = dif u
  space.quad space.quad
  y = v + k arrow.double y = v - 2 arrow.double dif y = dif v
  $

  Sustituyendo en la ecuación original
  $
  (dif v)/(dif u) = ((u - 1) - (v - 2) - 1)/((u-1) + (v - 2) + 3) = (u - v)/(u + v)
  $
  resultando en una ED homogénea

  $
  (dif v)/(dif u) = (1/u (u-v))/(1/u (u + v)) = (1 - v/u)/(1 + v/u)
  $

  Haciendo el siguiente cambio
  $
  p = v/u arrow.double 

  (dif v)/(dif u) = (1 - p)/(1 + p)
  $

  Despejando 
  $
  v = p u
  $

  $
  (dif v)/(dif u) = dif/(dif u) [p u] = p (dif u)/(dif u) + u (dif p)/(dif u)
  $

  Así
  $
  p + u (dif p)/(dif u) = (1-p)/(1+p)
  $
  
  Despejando $(dif p)/(dif u)$
  $
  u (dif p)/(dif u) = (1-p)/(1+p) - p = ((1-p) - p(1+p))/(1+p) = (1 -2p - p^2)/(1+p)
  $

  Separando variables
  $
  (1+p)/(1 -2p - p^2) dif p = 1/u dif u
  $

  Integrando ambos lados
  $
  integral (1+p)/(1 -2p - p^2) dif p = integral 1/u dif u
  &arrow.double.long
  -1/2 ln(p^2 + 2p - 1) = ln(u) + C_1\
  &arrow.double.long
  ln(p^2 + 2p - 1) = -2ln(u) + C_1\
  &arrow.double.long e^(ln (p^2 + 2p - 1)) = e^(-2 ln(u) + C_2)\
  &arrow.double.long p^2 + 2p - 1 = u^(-2) dot.c C_3
  $

  como $p = v/u$, Sustituyendo
  $
  (v/u)^2 + 2(v/u)- 1 = 1/u^2 dot.c C_3
  $

  Desarrollando y simplificando
  $
  v^2 + 2v u - u^2 = C
  $

  Sustituyendo $v = y + 2$ y $u = x + 1$
  $
  (y + 2)^2 + 2(y + 2)(x + 1) - (x + 1)^2 = C
  $

  Desarrollando y simplificando, la solución es
  $
  y^2 - x^2 + 2x y + 2x + 6y + y = C
  $
]

#example()[
  Sea
  $
  (dif y)/(dif x) = (2 y - x + 7)/(4x - 3y - 18)
  $

  con $a = -1, b = 2, m =7, c = 4, d = -3, n = -18$

  Encontrando
  $
  a d - b c = (-1)(-3)-(2)(4) = 3 - 8 = -5
  $

  Haciendo el siguiente cambio
  $
  x = u + h 
  space.quad space.quad
  y = v + k
  $

  Obteniendo $h$ y $k$ del siguiente sistema de ecs
  $
  a h + b k + m = 0\
  c h + d k + n = 0
  $

  $
  arrow.double.long
  $

  $
  -h + 2k + 7 = 0\
  4h - 3k - 18 = 0
  $
  $
  -4h + 8k + 28 = 0\
  4h - 3k - 18 = 0
  $

  Entonces
  $
  5 k + 10 = 0 arrow.double.long k = -2\
  -h - 4 + 7  = 0 arrow.double.long h = 3
  $

  Y se tiene
  $
  x = u + 3 arrow.double dif x = dif u
  space.quad space.quad
  y = v - 2 arrow.double dif y = dif v
  $
  
  Sustituyendo en la ecuación original
  $
  (dif v)/(dif u) = (2(v - 2) - (u + 3) + 7)/(4(u + 3) - 3(v - 2) - 18) = (2v - u)/(4u - 3v)
  $ 
  siendo homogénea

  $
  (dif v)/(dif u) = (1/u (2v - u))/(1/u (4u - 3v)) = (2(v/u) -1)/(4 - 3(v/u))
  $

  Haciendo $p = v/u$, $v = p u$
  $
  p + u (dif p)/(dif u) = (2p - 1)/(4 -3p) arrow.double.long u (dif p)/(dif u) = (3 p^2 - 2p - 1)/(4 -3p)
  $

  Separando variables
  $
  (4 - 3p)/(3p^2 - 2p - 1) dif p = (dif u) /u
  $

  Integrando ambos lados
  $
  integral (4 - 3p)/(3p^2 - 2p - 1) dif p = integral (dif u) /u
  arrow.double.long -5/4 ln(3p + 1) + 1/4 ln(p-1) = ln(u) + C_1
  $

  Aplicando las propiedades de los logaritmos
  $
  ln((p - 1)/(3p + 1)^5) = ln(u^4) + C_2
  $

  Aplicando exponenciales
  $
  (p - 1)/(3p + 1)^5 = C u^4
  $

  Desarrollando y simplificando con $p = v/u$
  $
  C(3v + u)^5 = v-u
  $

  Como $v = y + 2$ y $u = x - 3$, sustituyendo
  $
  C (x + 3y + 3)^5 = y - x + 5
  $
]

- separables
- exacta
- sustituyendo de las primeras
- integracion directa

