#import "./utils.typ":*
#set text(size: 12pt)
#show math.equation: set text(size: 13pt)

#align(center)[
  #text(18pt)[
    = Tarea 3
  ]
  #text(13pt)[
    Hernández Vázquez Carlos Arturo
  ]
]

1. Resuelva las siguientes ecuaciones diferenciales. Averigüe si son exactas o no.

(a)
$
(dif y)/(dif x) = (x y^2 - cos(x) sin(x))/(y(1-x^2))
$

Primero tenemos que
$
(dif y)/(dif x) = (x y^2 - cos(x) sin(x))/(y(1-x^2)) &arrow.double.long
y(1-x^2) dif y - (x y^2 - cos(x) sin(x)) dif x = 0
$

Derivando parcialmente:

$
(diff M)/(diff y) = diff / (diff y) [- x y^2 + cos(x) sin(x)] = -2x y
$

$
(diff N)/(diff x) = diff / (diff x) [y(1 - x^2)] = -2x y
$

Se tienen que
$
(diff M)/(diff y) = (diff N)/(diff x)
$
, y por tanto la ED es exacta.

Entonces existe una función $f$ tal que
$
(diff f)/(diff x) = M(x,y)= -x y^2 + cos(x)sin(x) 
space.quad space.quad space.quad space.quad
(diff f)/(diff y) = N(x,y)= y(1-x^2)
$

Integrando con respecto a $y$:
$
f(x,y) = (1-x^2) integral y dif y + h(x) = (1-x^2) y^2/2 + h(x)
$

Como
$
(diff f)/(diff x) =-x y^2 + cos(x)sin(x) = -x y^2 + h'(x) arrow.double.long h'(x) = cos(x)sin(x)
$

Integrando con respecto a $x$:
$
h(x) = integral cos(x) sin(x) dif x = (sin^2(x))/2 
$

#align(center)[
  (se puede usar la sustitución de $u = sin(x), dif u = cos(x) dif x$)
]

$
therefore f(x,y) = 1/2 ((1-x^2)y^2 + sin^2 (x))
$

Las curvas solución son de las forma:
$
f(x,y) = c arrow.double.long 1/2 ((1-x^2)y^2 + sin^2 (x)) = c
arrow.double.long (1-x^2)y^2 + sin^2 (x) = C
$

#horizontalrule(dashed: true)

(b)
$
(1/t + 1/t^2 - y/(t^2 + y^2)) dif t + (y e^y + t/(t^2 + y^2)) dif y = 0
$

Derivando parcialmente:

$
(diff M)/(diff y) = diff / (diff y) [1/t + 1/t^2 - y/(t^2 + y^2)] &= - diff /(diff y) [y(t^2 + y^2)^(-1)] \
&= -((t^2 + y^2)^(-1) - y (t^2 + y^2)^(-2) 2y)\
&= -(t^2 + y^2)^(-1) +  2y^2 (t^2 + y^2)^(-2)\
&= (-t^2 - y^2 + 2y^2)/(t^2 + y^2)^2
= (-t^2 + y^2)/(t^2 + y^2)^2
$

$
(diff N)/(diff t) = diff / (diff t) [y e^y + t/(t^2 + y^2)] &= diff / (diff t) [t(t^2 + y^2)^(-1)]\
&= (t^2 + y^2)^(-1) - t(t^2 + y^2)^(-2)2t \
&= (t^2 + y^2)^(-1) - 2t^2(t^2 + y^2)^(-2)\
&= (t^2 + y^2 - 2t^2)/(t^2 + y^2)^2
= (-t^2 + y^2)/(t^2 + y^2)^2
$

Se tiene que
$
(diff M)/(diff y) = (diff N)/(diff t)
$, y por la tanto es exacta

Entonces existe una función $f$ tal que
$
(diff f)/(diff t) = M(t,y) = 1/t + 1/t^2 - y/(t^2 + y^2)
space.quad space.quad space.quad space.quad 
(diff f)/(diff y) = N(t,y) = y e^y + t/(t^2 + y^2)
$

Integrando con respecto a $t$:
$
f(t,y) = integral 1/t + 1/t^2 - y/(t^2 + y^2) dif t + g(y) &= ln |t| - t^(-1) -y integral 1/(t^2 + y^2) dif t + g(y)\
&= ln|t| - t^(-1) - arctan(t/y) + g(y)
$

#mathnote()[
  se usa la formula conocida para la derivada de $arctan$
]

Como
$
(diff f)/(diff y) = y e^y + 1/(t^2 + y^2) = 1/(t^2 + y^2) + g'(y)
arrow.double.long g'(y) = y e^y
$

Integrando con respecto a $y$:
$
g(y) = integral y e^y = y e^y - integral e^y dif y = (y - 1) e^y
$

#mathnote()[
  se usan las sustituciones $u = y, dif u = dif y, dif v = e^y, v = e^y$, e integración por partes
]

$
therefore f(t,y) = ln abs(t) - t^(-1) - arctan(t/y) + (y-1)e^y
$

Las curvas solución son de la forma:
$
f(t,y) = C arrow.double.long ln abs(t) - t^(-1) - arctan(t/y) + (y-1)e^y = C
$


#horizontalrule(dashed: true)
(c)
$
x (dif y)/(dif x) = 2x e^x - y + 6x^2
$

Primero tenemos que
$
x (dif y)/(dif x) = 2x e^x - y + 6x^2 &arrow.double.long (dif y)/(dif x) = 2e^x - y/x + 6x\
&arrow.double.long dif y - (2e^x - y/x + 6x) dif x = 0
$

Derivando parcialmente
$
(diff M)/(diff y) = diff / (diff y) [-(2e^x - y/x + 6x)]
= diff /(diff y) [-2e^x + y/x - 6x]
= 1/x
$
$
(diff N)/(diff x) = diff / (diff x) 1 = 0
$

Se tiene que
$
(diff M)/(diff y) != (diff N)/(dif x)
$, y por tanto *no* es exacta.

Entonces buscamos un factor integrante. Verificamos que el término que buscamos está en función de $x$:
$
(M_y - N_x)/N = (1/x - 0)/(1) = 1/x
$

Dado lo anterior, el factor integrante correcto es:
$
mu(x) = e^(integral (M_y - N_x)/N dif x) = e^(integral 1/x dif x) = e^(ln abs(x)) = x
$

Multiplicando el factor integrante por la ED no exacta:
$
x dif y - (2x e^x - y + 6x^2) dif x = 0
$

Verificando que ya es exacta:
$
(diff M)/(diff y) = diff / (diff y) [-(2 x e^x - y + 6x^2)]
= diff /(diff y) [-2 x e^x + y - 6x^2]
= 1
$
$
(diff N)/(diff x) = diff / (diff x) x  = 1
$

Entonces existe una función $f$ tal que
$
(diff f)/(diff x) = M(x,y) = -2x e^x + y - 6x^2
$
$
(diff f)/(diff y) = N(x,y) = x
$

Integrando con respecto a $y$:
$
f(x,y) = x integral dif y + h(x) = x y + h(x)
$

Como
$
(diff f)/(diff x) = -2x e^x + y - 6x^2 = y + h'(x) arrow.double.long h'(x) = -2x e^x -6x^2
$

Integrando con respecto a $x$:
$
h(x) = -2 integral x e^x dif x -6 integral x^2 dif x = -2 (x - 1) e^x -2x^3
$

#mathnote()[
  La primera integral se resuelve de la misma manera que en el ejercicio pasado
]

$
therefore f(x,y) = x y -2(x-1)e^x - 2x^3
$

Las curvas solución son de la forma:
$
f(x,y) = C arrow.double.long x y -2(x-1)e^x - 2x^3 = C
$

#horizontalrule(dashed: true)
2. Resuelva las siguientes ecuaciones diferenciales. Averigüe si son exactas o no. Si no son exactas use un factor integrante.

(a)
$
(10 - 6y + 3e^(-3x)) dif x - 2 dif y = 0
$

Derivando parcialmente:
$
(diff M)/(dif y) = diff/(diff y) [10 - 6y + 3e^(-3x)] = -6
$
$
(diff N)/(diff x) = dif/(diff x) [-2] = 0
$

Se tiene que
$
(diff M)/(diff y) != (diff N)/(diff x)
$, y por tanto *no* es exacta.

Consideramos
$
(M_y - N_x)/N = (-6 - 0)/(-2) = 3
$ una función que, trivialmente, depende de $x$

Dado lo anterior, el factor integrante correcto es:
$
mu(x) = e^(integral (M_y - N_x)/N dif x) = e^(3 integral dif x) = e^(3x)
$

Multiplicando el factor integrante por la ED no exacta:
$
(10e^(3x) - 6e^(3x)y + 3) dif x - 2e^(3x)dif y = 0
$

Verificando que ya es exacta:
$
(diff M)/(diff y) = -6e^(3x)
$
$
(diff N)/(diff x) = -6e^(3x)
$

Entonces existe una función $f$ tal que
$
(diff f)/(diff x) = M(x,y) = 10e^(3x) - 6e^(3x)y + 3
$
$
(diff f)/(diff y) = N(x,y) = -2e^(3x)
$

Integrando con respecto a $y$:
$
f(x,y) = -2e^(3x) integral dif y + h(x) = -2e^(3x)y + h(x)
$

Como
$
(diff f)/(diff x) = 10e^(3x) - 6e^(3x)y + 3 = -6e^(3x)y + h'(x) arrow.double.long h'(x) = 10e^(3x) + 3
$

Integrando con respecto a $x$:
$
h(x) = 10/3e^(3x) + 3x
$

$
therefore f(x,y) = -2e^(3x)y + 10/3e^(3x) + 3x
$

Las curvas solución son de la forma:
$

f(x,y) = -2e^(3x)y + 10/3e^(3x) + 3x = C 
arrow.double.long
f(x,y) = -6e^(3x)y + 10e^(3x) + 9x = K
$

#horizontalrule(dashed: true)
(b)
$
(y^2 + x y^3) dif x + (5 y^2 - x y + y^3 sin(x)) dif y = 0
$

Derivando parcialmente:
$
(diff M)/(diff y) = 2y + 3x y^2
space.quad space.quad space.quad
(diff N)/(diff x) = -y + y^3 cos(x)
$

Se tiene que
$
(diff M)/(diff y) != (diff N)/(diff x)
$, y por tanto *no* es exacta

// TODO: Esperar la respuesta
Consideramos
$
(M_y - N_x)/N = (2y + 3x y^2 - (-y + y^3cos(x)))/(5y^2 - x y + y^3sin(x)) = (3y + 3x y^2 - y^3cos(x))/(5y^2 - x y + y^3sin(x))
$
$
(N_x - M_y)/M = (-y + y^3cos(x) - (2y + 3x y^2))/(y^2 + x y^3) = (-3y + y^3cos(x) - 3x y^2)/(y^2 + x y^3)
$

#horizontalrule(dashed: true)
3. Analice como se puede encontrar la función $M(x,y)$ tal que la ecuación diferencial sea exacta.

$
M(x,y) dif x + (x e^(x y) + 2x y + 1/x) dif y = 0
$

Consideramos
$
M(x,y) =  y e^(x y) + y^2 - y/x^2
$

Derivando parcialmente:
$
(diff M)/(diff y) = e^(x y) + x y e^(x y) + 2y -1/x^2
$
$
(diff N)/(diff x) = e^(x y) + x y e^(x y) + 2y -1/x^2
$

#horizontalrule(dashed: true)
4. Resuelva la siguiente ecuación usando una sustitución adecuada.
$
(x^2 + y^2) dif x - (x^2 + x y) dif y = 0
$

Primero tenemos que
$
(x^2 + y^2) dif x - (x^2 + x y) dif y = 0 &arrow.double.long (x^2 + y^2) dif x = (x^2 + x y) dif y\
 &arrow.double.long ( dif x)/(dif y) = (x^2 + x y)/(x^2 + y^2)\
 &arrow.double.long ( dif x)/(dif y) = (x^2/y^2 + (x y)/y^2)/(x^2/y^2 + y^2/y^2)\
 &arrow.double.long ( dif x)/(dif y) = ((x/y)^2 + x/y)/((x/y)^2 + 1)\
$

Haciendo $u = x/y$ y $x = u y$
$
(dif x)/(dif y) = dif/(dif y) u y = u (dif y)/(dif y) + y (dif u)/(dif y) = u + y (dif u)/(dif y) = F(u)
$

Sustituyendo:
$
y (dif u)/(dif y) = (u^2 + u)/(u^2 + 1) - u = (u^2 + u)/(u^2 + 1) - (u^3 + u)/(u^2 + 1) = (-u^3 + u^2)/(u^2 + 1) arrow.double.long (dif y)/y = (u^2 + 1)/(-u^3 + u^2) dif u
$

Integrando ambos lados:
$
integral (u^2 + 1)/(-u^3 + u^2) dif u = ln(x) + C_1 arrow.double.long -1/u -2 ln(1-u) + ln(u) = ln(y) + C_1
$

#mathnote()[
  La integral con respecto a $u$ la resolví con _WolframAlpha_
]

Como $u = x/y$
$
 -y/x -2 ln(1-x/y) + ln(x/y) = ln(y) + C_1 &arrow.double.long -y/x -2 ln((y-x)/y) + ln(x)-ln(y) = ln(y) + C_1 \
 &arrow.double.long -y/x -2(ln(y-x) - ln(y)) + ln(x) - ln(y) = ln(y) + C_1\
 &arrow.double.long -y/x -2ln(y-x) +2ln(y) + ln(x) - ln(y) = ln(y) + C_1\
 &arrow.double.long y/x +2ln(y-x) - ln(x) = C
$

// TODO: Preguntar forma explicita
// La solución implicita es
$
therefore y/x +2ln(y-x) - ln(x) = C
$

#horizontalrule(dashed: true)
5. Resuelva la siguiente ecuación diferencial. *HINT:* La ecuación a resolver es de Bernoulli
$
x (dif y)/(dif x) + 6y = 3 x y^(4/3)
$

Primero tenemos que
$
(dif y)/(dif x) + 6/x y = 3 y^(4/3)
$ es una ecuación de Bernoulli con $P(x) = 6/x, f(x) = 3$, y $n = 4/3$

Proponiendo el siguiente cambio
$
u = y^(1-n) = y^(1 - 4/3) = y^(-1/3) arrow.double.long y = u^(-3)
$

Por la regla de la cadena
$
(dif y)/(dif x) = (dif y)/(dif u) (dif u)/(dif x) = -3 u^(-4) (dif u)/(dif x)
$

Sustituyendo en la ED
$
-3u^(-4) (dif u)/(dif x) + 6/x u^(-3) = 3 (u^(-3))^(4/3)
arrow.double.long
-3u^(-4) (dif u)/(dif x) + 6/x u^(-3) = 3 u^(-4)
$

Dividiendo por $-3u^(-4)$
$
(dif u)/(dif x) + (6/x u^(-3))/(-3 u^(-4)) = -1
arrow.double.long
(dif u)/(dif x) - 2/x u = -1
$

El factor integrante es
$
m(u) = e^(integral -2/x dif x) = e^(-2 integral 1/x dif x) = e^(-2ln(x)) = x^(-2)
$

Multiplicando el factor integrante por la ED
$
1/x^2(dif u)/(dif x) - 2/x^3 u = - 1/x^2 arrow.double.long d/(dif x)[x^(-2) u] = -1/x^2
$

Integrando ambos lados
$
x^(-2) u = - integral x^(-2) dif x arrow.double.long x^(-2) u = 1/x + C
$

Como $u = y^(-1/3)$
$
x^(-2) y^(-1/3) = x^(-1) + C arrow.double.long y^(-1/3) = x + C/x^(-2)
$

$
therefore y = (x + C x^2)^(-3)
$

#horizontalrule(dashed: true)
6. Resuelva la siguiente ecuación diferencial. *HINT:* La ecuación a resolver se puede reducir a una ecuación homogénea.
$
(dif y)/(dif x) = (x + y + 1)/(x - y + 3)
$

Tenemos $a = 1, b = 1, m = 1, c = 1, d = -1$ y $n = 3$

Encontrando
$
a d - b c = (1)(-1) - (1)(1) = -1 -1 = -2 != 0
$

Entonces, hacemos el siguiente cambio
$
x = u + h
space.quad space.quad
y = v + k
$

Encontrando los valores de $h$ y $k$:
$
h + k + 1 = 0\
h - k + 3 = 0\
arrow.double.long 2h + 4 = 0 arrow.double.long h = -2\
arrow.double.long -2 + k + 1 = 0 arrow.double.long k = 1
$

Sustituyendo en el cambio previo
$
x = u - 2 arrow.double dif x = dif u
space.quad space.quad
y = v + 1 arrow.double dif y = dif v
$

Sustituyendo en la ecuación original
$
(dif v)/(dif u) = (u - 2 + v + 1 + 1)/(u - 2 - v - 1 + 3) = (u + v)/(u - v)
$ que resulta en una homogénea

$
(dif v)/(dif u) = (1/u (u + v))/(1/u (u - v)) = (1 + v/u)/(1 - v/u)
$

Haciendo $z = v/u$ y $v = z u$
$
(dif v)/(dif u) = z (dif u)/(dif u) + u (dif z)/(dif u) = z + u (dif z)/(dif u) = F(z)
$

Sustituyendo
$
u (dif z)/(dif u) = (1 + z)/(1 - z) - z = (1 + z - z + z^2)/(1 - z)
arrow.double.long
(1 - z)/(z^2 + 1) dif z = (dif u)/u
$

Integrando ambos lados
$
integral 1/(z^2 + 1) dif z - integral z/(z^2 + 1) dif z = ln(u) + C_1
arrow.double.long
arctan(z) - 1/2ln(z^2 + 1) = ln(u) + C_1
$

#mathnote()[
  La primera integral es conocida, y en la segunda se usa $w = z^2 + 1$ y $dif w = 2z dif z$
]

Como $z = v/u$
$
arctan(v/u) - 1/2ln((v/u)^2 + 1) = ln(u) + C_1
$

Como $u = x + 2$ y $v = y - 1$
$
arctan((y-1)/(x+2)) - 1/2ln(((y-1)/(x + 2))^2 + 1) = ln(x + 2) + C_1
$

Simplificando
$
arctan((y-1)/(x+2)) - 1/2ln((y-1)^2/(x + 2)^2 + (x+2)^2/(x + 2)^2) = ln(x + 2) + C_1\
arrow.double.long\
arctan((y-1)/(x+2)) - 1/2ln(((y-1)^2 + (x+2)^2)/(x + 2)^2) = ln(x + 2) + C_1\
arrow.double.long\
arctan((y-1)/(x+2)) - 1/2(ln((y-1)^2 + (x+2)^2) - 2ln(x + 2)) = ln(x + 2) + C_1\
arrow.double.long\
arctan((y-1)/(x+2)) - 1/2ln((y-1)^2 + (x+2)^2) + ln(x + 2) = ln(x + 2) + C_1\
arrow.double.long\
arctan((y-1)/(x+2)) - 1/2ln((y-1)^2 + (x+2)^2) = C_1\
arrow.double.long\
therefore 2arctan((y-1)/(x+2)) - ln((y-1)^2 + (x+2)^2) = C
$


