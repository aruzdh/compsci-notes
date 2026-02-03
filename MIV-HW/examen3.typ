#import "./utils.typ": *
#set text(size: 12pt)
#show math.equation: set text(size: 13pt)
#set math.mat(delim: "|")
#set math.mat(gap: 1em)

#align(center)[
  #text(18pt)[
    = Examen 3
  ]
  #text(13pt)[
    Hernández Vázquez Carlos Arturo
  ]
]

1-

(a) Como $x(t) = c_1 cos omega t + c_2 sin omega t$ es la solución general de $x'' + omega^2 x = 0$ en el intervalo $(-infinity, infinity)$, demuestre que una solución que satisface las condiciones iniciales $x(0) = x_0, x'(0) = x_1$ está dada por
$
  x(t) = x_0 cos omega t + x_1 / omega sin omega t
$

Evaluando la solución en $t = 0$ y simplificando $sin, cos$
$
  x(0) = c_1 cos omega dot.c 0 + c_2 sin omega dot.c 0 = x_0
  arrow.double.long
  c_1 = x_0
$

Se tiene la derivada de $x(t)$
$
  x'(t) = - c_1 omega sin omega t + c_2 omega cos omega t
$

Usando la condición inicial $x'(0) = x_1$
$
  x'(0) = - c_1 omega sin omega dot.c 0 + c_2 omega cos omega dot.c 0 = x_1
  arrow.double.long
  c_2 omega = x_1
  arrow.double.long c_2 = x_1 / omega
$

Sustituyendo los valores de $c_1$ y $c_2$ en la solución general dada:
$
  x(t) = x_0 cos omega t + x_1 / omega sin omega t
$

#horizontalrule(dashed: true)

(b) Use la solución general $x'' + omega^2 x = 0$ que se dio en el inciso anterior para demostrar que una solución que satisface las condiciones iniciales $x(t_0) = x_0, x'(t_0) = x_1$ es la solución dada en el inciso anterior cambiada por una cantidad $t_0$:
$
  x(t) = x_0 cos omega (t - t_0) + x_1 / omega sin omega (t - t_0)
$

Consideremos el siguiente cambio de variable:
$
  r = t - t_0 arrow.double.long t = r - t_0
$

Derivando se tiene que
$
  (dif x)/(dif t) = (dif x)/(dif r) (dif r)/(dif t) = (dif x)/(dif r)
$

De lo anterior se sigue que
$
  (dif^2 x)/(dif t^2) = (dif^2 x)/(dif r^2)
$

Entonces tenemos que la solución general $x(t) = x''(t) + omega^2 x(t) = 0$ se puede reescribir como:
$
  x(r) = x(r)'' + omega^2 x(r) = 0
$

Usando la primera condición inicial $x(t_0) = x_0$ con $t = t_0$ se tiene $r = 0$, y entonces $x(r) = x_0$

Usando la segunda condición inicial $x'(t_1) = x_1$ con $t = t_0$ se tiene $r = 0$, y entonces $x'(r) = x_1$

Al observar los resultados calculados anteriormente, podemos notar que tenemos el mismo problema que en el inciso (a), pero con la variable $r$ en lugar de $t$. Usamos el resultado obtenido el dicho inciso:
$
  x(r) = x_0 cos omega r + x_1 / omega sin omega r
$

Volviendo a la variable original usando $r = t - t_0$:
$
  x(t) = x_0 cos omega (t - t_0) + x_1 / omega sin omega (t - t_0)
$

#horizontalrule(dashed: true)

2- Determine si el conjunto de funciones lineales es linealmente independiente en el intervalo $(-infinity, infinity)$.

(a) $f_1 (x) = 5, f_2 (x) = cos^2 x, f_3 (x) = sin^2 x$

Calculando el Wronskiano de las tres funciones dadas:
$
  W (f_1, f_2, f_3) = mat(
    f_1(x), f_2(x), f_3(x);
    f_1 '(x), f_2 '(x), f_3 '(x);
    f_1 ''(x), f_2 ''(x), f_3 ''(x)
  )
$

Calculando las derivadas correspondientes:
$
  f_1 ' = 0
  space.quad space.quad
  f_1 '' = 0;\
  f_2 ' = -2sin x dot.c cos x = -sin 2x
  space.quad space.quad
  f_2 '' = -2cos 2x;\
  f_3 ' = 2cos x dot.c sin x = sin 2x
  space.quad space.quad
  f_3 '' = 2cos 2x
$

Entonces tenemos el siguiente determinante
$
  W (f_1, f_2, f_3) & = mat(
                        5, cos^2 x, sin^2 x;
                        0, -sin 2x, sin 2x;
                        0, -2cos 2x, 2cos 2x
                      ) = 5(- 2 sin 2x dot.c cos 2x + 2cos 2x dot.c sin 2x) = 0
$

$
  therefore "El conjunto de funciones es linealmente dependiente"
$

#horizontalrule(dashed: true)

(b) $f_1 (x) = cos 2x, f_2 (x) = 1, f_3 (x) = cos^2 x$

Calculando el Wronskiano de las tres funciones dadas:
$
  W (f_1, f_2, f_3) = mat(
    f_1(x), f_2(x), f_3(x);
    f_1 '(x), f_2 '(x), f_3 '(x);
    f_1 ''(x), f_2 ''(x), f_3 ''(x)
  )
$

Calculando las derivadas correspondientes:
$
  f_1 ' = -2sin 2x
  space.quad space.quad
  f_1 '' = -4cos 2x;\
  f_2 ' = 0
  space.quad space.quad
  f_2 '' = 0\
  f_3 ' = -sin 2x
  space.quad space.quad
  f_3 '' = -2 cos 2x
$

Entonces tenemos el siguiente determinante
$
  W (f_1, f_2, f_3) & = mat(
                        cos 2x, 1, cos^2 x;
                        -2sin 2x, 0, -sin 2x;
                        -4cos 2x, 0, -2cos 2x
                      ) = 4 sin 2x dot.c cos 2x - 4 sin 2x dot cos 2x = 0
$

$
  therefore "El conjunto de funciones es linealmente dependiente"
$

#horizontalrule(dashed: true)

(c) $f_1 (x) = x, f_2 = x - 1, f_3 (x) = x + 3$

Calculando el Wronskiano de las tres funciones dadas:
$
  W (f_1, f_2, f_3) = mat(
    f_1(x), f_2(x), f_3(x);
    f_1 '(x), f_2 '(x), f_3 '(x);
    f_1 ''(x), f_2 ''(x), f_3 ''(x)
  )
$

Calculando las derivadas correspondientes:
$
  f_1 ' = 1
  space.quad space.quad
  f_1 '' = 0;
  space.quad
  f_2 ' = 1
  space.quad space.quad
  f_2 '' = 0;
  space.quad
  f_3 ' = 1
  space.quad space.quad
  f_3 '' = 0
$

Entonces tenemos el siguiente determinante
$
  W (f_1, f_2, f_3) & = mat(
                        x, x - 1, x + 3;
                        1, 1, 1;
                        0, 0, 0;
                      ) = 0
$

#mathnote()[
  usando las propiedades de los determinantes, dado que tenemos un fila de 0's
]

$
  therefore "El conjunto de funciones es linealmente dependiente"
$

#horizontalrule(dashed: true)

(d) $f_1 (x) = e^x, f_2 = e^(-x), f_3 (x) = sinh x$

Calculando el Wronskiano de las tres funciones dadas:
$
  W (f_1, f_2, f_3) = mat(
    f_1(x), f_2(x), f_3(x);
    f_1 '(x), f_2 '(x), f_3 '(x);
    f_1 ''(x), f_2 ''(x), f_3 ''(x)
  )
$

Calculando las derivadas correspondientes:
$
  f_1 ' = e^x
  space.quad space.quad
  f_1 '' = e^x;
  space.quad
  f_2 ' = -e^(-x)
  space.quad space.quad
  f_2 '' = e^(-x);
  space.quad
  f_3 ' = cosh x
  space.quad space.quad
  f_3 '' = sinh x
$

Entonces tenemos el siguiente determinante
$
  W (f_1, f_2, f_3) = mat(
    e^x, e^(-x), sinh x;
    e^x, -e^(-x), cosh x;
    e^x, e^(-x), sinh x;
  ) = 0
$

#mathnote()[
  usando las propiedades de los determinantes, dado que tenemos dos filas idénticas
]

$
  therefore "El conjunto de funciones es linealmente dependiente"
$

#horizontalrule(dashed: true)

3- Sea $y_1 (x)$ una solución de la ED dada. Use la reducción de orden para encontrar una segunda solución $y_2 (x)$, y escriba la solución general.

(a) $y'' + 16y = 0; y_1 = cos 4x$

Si $y(x) = u(x) y_1(x) = u(x) cos 4x$, entonces
$
  y'(x) = -4u(x) sin 4x + u'(x)cos 4x \
$
$
  y''(x) & = -4[4u(x)cos 4x + u'(x) sin 4x] + [-4u'(x)sin 4x + u''(x) cos 4x] \
         & = -16u(x)cos 4x - 4u'(x) sin 4x - 4u'(x) sin 4x + u''(x)cos 4x \
         & = -16u(x)cos 4x - 8u'(x) sin 4x + u''(x)cos 4x
$

Sustituyendo en la ED dada se tiene:
$
  -16u(x)cos 4x - 8u'(x) sin 4x + u''(x)cos 4x + 16 u(x)cos 4x = 0\
  arrow.double.long
  - 8u'(x) sin 4x + u''(x)cos 4x = 0
$

Haciendo $w = u'$:
$
  - 8w sin 4x + w' cos 4x = 0
  arrow.double.long
  w' cos 4x = 8w sin 4x
$

Entonces
$
  (dif w)/(dif x) cos 4x = 8w sin 4x
  arrow.double.long
  (dif w)/w = 8 (sin 4x )/ (cos 4x) dif x
  arrow.double.long
  (dif w)/w = 8 tan 4x dif x
$

Integrando ambos lados:
$
  ln |w| = -2 ln |cos 4x| + C_1
$

#mathnote()[ La integral derecha se resolvió con _Wolfram Alpha_]

Aplicando la exponencial de ambos lados:
$
  w = e^(-2ln|cos 4x| + C_1) = (cos 4x)^(-2) C_2 = C_2 sec^2 4x
$

Como $w = u'$
$
  u'(x) = C_2 sec^2 4x
$

Integrando ambos lados
$
  u(x) = C_2 [1/4 tan 4x + C_3] = C_2 1/4 tan 4x + C_4
$

#mathnote()[ La integral derecha se resolvió con _Wolfram Alpha_]

Entonces se tiene que
$
  y(x) = u(x) = y_1(x) = (C_2 1/4 tan 4x + C_4)(cos 4x)
$

$
  therefore c_1 sin 4x + c_2 cos 4x
$
es la solución general, con $c_1, c_2$ constantes.

#horizontalrule(dashed: true)

// NOTE: Preguntar sobre la y (formula)

(b) $x y'' + y' = 0; y_1 = ln x$

*NOTA:* En el PDF se tiene $x y'' + y = 0$, pero se necesita $y'$ en lugar de solo $y$ para que el ejercicio se pueda resolver con $y_1$    .

Si $y(x) = u(x) y_1 (x) = u(x) ln x$, entonces
$
  y'(x) = u(x) 1/x + u'(x) ln x
$
$
  y''(x) & = -u(x)1/x^2 + u'(x) 1/x + u'(x) 1/x + u''(x) ln x \
         & = -u(x)1/x^2 +2 u'(x) 1/x + u''(x) ln x
$

Sustituyendo en la ED dada se tiene:
$
  x [-u(x)1/x^2 +2 u'(x) 1/x + u''(x) ln x] + u(x)1/x + u'(x) ln x = 0\
  arrow.double.long
  -u(x)1/x +2 u'(x) + u''(x) x ln x + u(x)1/x + u'(x) ln x = 0\
  arrow.double.long
  (2 + ln x) u'(x) + u''(x) x ln x = 0\
$

Haciendo $w = u'$:
$
  (x ln x)w' + (2 + ln x) w = 0\
$

Entonces
$
  (dif w)/(dif x) x ln x = - (2 + ln x) w
  arrow.double.long
  (dif w)/w = - (2 + ln x)/(x ln x) dif x
  arrow.double.long
  (dif w)/w = - 2/(x ln x) - 1/x dif x
$

Integrando ambos lados
$
  ln w = -2 ln (ln x) - ln x + C_1
$

#mathnote()[ Las integrales anterior son muy conocidas]

Despejando $w$
$
  w = e^(- 2ln(ln x) - ln x + C_1) = e^(ln((ln x)^(-2)) - ln x + C_1) = C_2 x^(-1) (ln x)^(-2) = C_3 1/(x ln^2 x)
$

Como $w = u'$
$
  u'(x) = C_3 1/(x ln^2 x)
$

Integrando ambos lados:
$
  u(x) = C_3 integral 1/(x ln^2 x) dif x = C_3 integral 1/v^2 dif v = C_3 [-1/v + C_4] = -C_3 1/(ln x) + C_5
$

#mathnote()[
  con $v = ln x, dif v = 1/x dif x$
]

Entonces se tiene que
$
  y(x) = u(x) ln x = (-C_3 1/(ln x) + C_5) ln x = C_6 + C_5 ln x
$

$
  therefore c_1 + c_2 ln x
$
es la solución general.

#horizontalrule(dashed: true)

(c) $(1 - x^2) y'' + 2x y' = 0; y_1 = 1$

Si $y(x) = u(x) y_1(x) = u(x)$, entonces
$
  y'(x) = u'(x)
  space.quad space.quad
  y'' (x) = u''(x)
$

Sustituyendo en la ED dada se tiene
$
  (1 - x^2) u''(x) + 2x u'(x) = 0
$

Haciendo $w = u'$
$
  (1 - x^2) w' + 2x w = 0
$

Entonces
$
  (1 - x^2) (dif w)/(dif x) = - 2x w
  arrow.double.long
  (dif w)/w = - (2x)/(1 - x^2) dif x
$

Integrando ambos lados
$
  ln w = integral -2 x/(1 - x^2) dif x = integral 1/z dif z = ln z + C_1 = ln (1-x^2) + C_1
$

#mathnote()[ con$z = 1 - x^2, dif z = - 2x dif x$ ]

Despejando $w$
$
  w = e^(ln(1-x^2) + C_1) = C_2(1 - x^2)
$

Como $w = u'$
$
  u'(x) = C_2(1 - x^2)
$

Integrando ambos lados
$
  u(x) = C_2(x - x^3/3 + C_3) = C_2 x - C_2 x^3/3 + C_4
$

Entonces se tiene que
$
  y(x) = C_2x - C_2 x^3/3 + C_4
$

$
  therefore y(x) = c_1 (x - x^3/3) + c_2
$
es la solución general.

#horizontalrule(dashed: true)

4- Obtenga la solución general de las siguientes ED de segundo orden:

(a) $y'' - y' - 6y = 0$

Se tiene la siguiente ecuación auxiliar:
$
  m^2 - m - 6 = 0 arrow.double.long (m + 2)(m - 3) = 0 arrow.double m_1 = -2, m_2 = 3
$

Como las raíces son reales distintas, la solución es de la forma:
$
  y(x) = c_1 e^(-2 x) + c_2 e^(3x)
$

#horizontalrule(dashed: true)

(b) $y'' + 8y' + 16y = 0$

Se tiene la siguiente ecuación auxiliar:
$
  m^2 + 8m + 16 = 0 arrow.double.long (m + 4) (m + 4) arrow.double.long m_1 = m_2 = -4
$

Como las raíces son reales iguales, la solución es de la forma:
$
  y(x) = c_1 e^(-4 x) + c_2 x e^(-4x)
$

#horizontalrule(dashed: true)

(c) $3y'' + 2y'' + y = 0$

Se tiene la siguiente ecuación auxiliar:
$
  3m^2 + 2m + 1 = 0 &arrow.double.long m = (-2 plus.minus sqrt(2^2 - 4 (3) (1)))/(2(3)) = (-2 plus.minus sqrt(-8))/6 = (-2 plus.minus 2 sqrt(2)i)/6\
  & arrow.long.double m_1 = -1/3 + sqrt(2)/3i, m_2 = -1/3 - sqrt(2)/3i
$

Como las raíces son complejas, la solución es de la forma:
$
  y(x) = e^(-x/3) [c_1 cos(sqrt(2)/3 x) + c_2 sin(sqrt(2)/3 x)]
$

#horizontalrule(dashed: true)

5- Obtenga la solución general de las siguientes ED de orden superior:

(a) $(dif^3 u)/(dif t^3) + (dif^2 u)/(dif t^2) - 2u = 0$

Se tiene la siguiente ecuación auxiliar:
$
  m^3 + m^2 - 2 = 0
$

A simple vista sabemos que una raíz es $m_1 = 1$. Entonces, por factorización de polinomios, se tiene
$
  (m - 1) (m^2 + 2m + 2) = 0
$

Encontrando las raíces restantes:
$
  m^2 + 2m + 2 = 0 &arrow.double.long m = (-2 plus.minus sqrt(2^2 - 4 (2)(1)))/(2(1)) = (-2 plus.minus sqrt(-4))/2 = (-2 plus.minus 2i)/2\
  &arrow.double.long m_2 = -1 + i, m_3 = -1 - i
$

Entonces, la solución es de la forma
$
  u(t) = c_1 e^t + e^(-t)[c_2 cos t + c_3 sin t]
$

#horizontalrule(dashed: true)

(b) $(dif^3 x)/(dif t^3) - (dif^2 x)/(dif t^2) - 4x = 0$

Se tiene la siguiente ecuación auxiliar:
$
  m^3 - m^2 - 4 = 0
$

A simple vista sabemos que una raíz es $m_1 = 2$. Entonces, por factorización de polinomios, se tiene
$
  (m - 2)(m^2 + m + 2) = 0
$

Encontrando las raíces restantes:
$
  m^2 + m + 2 = 0 &arrow.double.long (-1 plus.minus sqrt(1^2 - 4(1)(2)))/(2(1)) = (-1 plus.minus sqrt(-7))/2 = (-1 plus.minus sqrt(7)i)/2\
  &arrow.double.long m_2 = -1/2 + sqrt(7)/2 i, m_3 = -1/2 - sqrt(7)/2 i
$

Entonces, la solución es de la forma
$
  x(t) = c_1 e^(2 t) + e^(-t/2)[c_2 cos(sqrt(7)/2 t) + c_3 sin(sqrt(7)/2 t)]
$

#horizontalrule(dashed: true)

(c) $y''' + 3y'' + 3y' + y = 0$

Se tiene la siguiente ecuación auxiliar:
$
  m^3 + 3m^2 + 3m + 1 = 0
$

Notemos que los coeficientes son los coeficientes del Triangulo de Pascal, así que
$
  m^3 + 3m^2 + 3m + 1 = 0 arrow.double.long (m + 1)^3 = 0 arrow.double.long m_1 = m_2 = m_3 = -1
$

Como las raíces son reales iguales, la solución es de la forma:
$
  y(x) = c_1 e^(-x) + c_2 x e^(-x) + c_3 x^2 e^(-x)
$

#horizontalrule(dashed: true)

6- Resuelva las siguientes ED usando el método de coeficientes indeterminados:

(a) $y'' + 3y' + 2y = 6$

Resolviendo la ED homogénea.

Si tiene la siguiente ecuación auxiliar:
$
  m^2 + 3m + 2 = 0 arrow.double.long (m + 2)(m + 1) = 0 arrow.double.long m_1 = -2, m_2 = -1
$

Entonces, la función complementaria es:
$
  y_c(x) = c_1e^(-2x) + c_2 e^(-x)
$

De la ED original, consideramos la función $g(x)$
$
  g(x) = 6
$
una constante.

Supongamos que $y_p$ también es de la forma de una constante:
$
  y_p = A
$

Buscamos el coeficiente $A$ para el cual $y_p$ es una solución de la ED.

$
  y_p' = 0,
  space.quad space.quad
  y_p'' = 0
$

Sustituyendo en la ED original:
$
  2A= 6 arrow.double.long A = 3
$

Entonces
$
  y_p(x) = 3
$

$
  therefore y(x) = c_1e^(-2x) + c_2 e^(-x) + 3
$
es la solución general de la ED es

#horizontalrule(dashed: true)

(b) $1/4 y'' + y' + y = x^2 - 2x$

Resolviendo la ED homogénea.

Primero tenemos que
$
  1/4 y'' + y' + y = x^2 - 2x arrow.double.long y'' + 4y' + 4y = 4x^2 - 8x
$

Se tiene la siguiente ecuación auxiliar:
$
  m^2 + 4m + 4 = 0 arrow.double.long (m + 2)^2 = 0 arrow.double.long m_1 = m_2 = -2
$

Entonces, la función complementaria es:
$
  y_c(x) = c_1e^(-2x) + c_2 x e^(-2x)
$

De la ED original, consideramos la función $g(x)$
$
  g(x) = x^2 - 2x
$
un polinomio cuadrático.

Supongamos que $y_p$ también es de la forma de un polinomio cuadrático:
$
  y_p = A x^2 + B x + C
$

Buscamos el coeficiente $A, B, C$ para los cuales $y_p$ es una solución de la ED.

$
  y_p' = 2A x + B,
  space.quad space.quad
  y_p'' = 2A
$

Sustituyendo en la ED original:
$
  & 2A + 4(2A x + B) + 4(A x^2 + B x + C)= 4x^2 - 8x \
  & arrow.double.long 2A + 8A x + 4B + 4A x^2 + 4B x + 4C= 4x^2 - 8x \
  & arrow.double.long (4A) x^2 + (8A + 4B) x + (2A + 4B + 4C) = 4x^2 - 8x
$

Entonces, los coeficiente son
$
  4A = 4 arrow.double.long A = 1\
  8A + 4B = -8 arrow.double.long 8 + 4B = -8 arrow.double.long B = -4\
  2A + 4B + 4C = 0 arrow.double.long -14 + 4C = 0 arrow.double.long C = 14/4 = 7/2
$

Entonces
$
  y_p(x) = x^2 -4x + 7/2
$

$
  therefore y(x) = c_1e^(-2x) + c_2 x e^(-2x) + x^2 -4x + 7/2
$
es la solución general de la ED es

#horizontalrule(dashed: true)

7- Resuelva las siguientes ED de segundo orden usando el método de variación de parámetros:

(a) $y'' + y' = sin x$

Resolviendo la ED homogénea.

Se tiene la siguiente ecuación auxiliar:
$
  m^2 + m = 0 arrow.double.long m(m + 1) arrow.double.long m_1 = 0, m_2 = -1
$

Entonces, la función complementaria es:
$
  y_c (x) = c_1 e^(0 dot.c x) + c_2 e^(-x) = c_1 + c_2 e^(-x)
$
con $y_1(x) = 1$ y $y_2 (x) = e^(-x)$

Buscamos
$
  y_p (x) = u_1 (x) y_1(x) + u_2 (x) y_2 (x)
$

Calculando el Wronskiano:
$
  W (1, e^(-x)) = mat(
    1, e^(-x);
    0, -e^(-x)
  ) = -e^(-x)
$

Calculando $u_1 '$:
$
  u_1 '(x) = - (e^(-x) dot.c sin x)/(-e^(-x)) = sin x
$

Calculando $u_2 '$:
$
  u_2 '(x) = (1 dot.c sin x)/(-e^(-x)) = -e^(x) sin x
$

Integrando $u_1 '$
$
  u_1(x) = -cos x\
$

Integrando $u_2 '$
$
  u_2 (x) = - integral e^x sin x dif x = 1/2 e^x (cos x - sin x)
$
#mathnote()[ La integral se resolvió con _Wolfram Alpha_]

Entonces se tiene
$
  y_p (x) & = - cos x + (1/2 e^x (cos x - sin x))(e^(-x)) \
          & = - cos x + 1/2 (cos x - sin x)
$

$
  therefore y(x) = c_1 + c_2 e^(-x) - cos x + 1/2 (cos x - sin x)
$
es la solución general.

#horizontalrule(dashed: true)

(b) $3y'' - 6y' + 6y = e^x sec x$

Escribimos la ED en su forma estándar:
$
  y'' - 2y' + 2y = 1/3 e^x sec x
$

Resolviendo la ED homogénea.

Se tiene la siguiente ecuación auxiliar:
$
  m^2 - 2m + 2 = 0 & arrow.double.long m = (-(-2) plus.minus sqrt((-2)^2 - 4(1) (2)))/(2 (1)) = (2 plus.minus 2i)/(2) \
                   & arrow.double.long m_1 = 1 + i, m_2 = 1 - i
$

Entonces, la función complementaria es:
$
  y_c (x) = e^(x) [c_1 cos x + c_2 sin x]
$
con $y_1 (x) = e^x cos x$ y $y_2 (x) = e^x sin x$


Buscamos
$
  y_p (x) = u_1 (x) y_1(x) + u_2 (x) y_2 (x)
$

Calculando el Wronskiano:
$
  W (e^x cos x, e^x sin x) & = mat(
                               e^x cos x, e^x sin x;
                               -e^x sin x + e^x cos x, e^x cos x + e^x sin x
                             ) \
                           & = (e^x cos x [e^x cos x + e^x sin x]) - (e^x sin x [-e^x sin x + e^x cos x]) \
                           & = e^(2x) cos^2 x + e^(2x) cos x dot.c sin x - (-e^(2x) sin^2 x + e^(2x) sin x dot.c cos x) \
                           & = e^(2x) (cos^2 x + cos x dot.c sin x) +e^(2x) (sin^2 x - sin x dot.c cos x) \
                           & = e^(2x) (cos^2 x + cos x dot.c sin x + sin^2 x - sin x dot.c cos x) \
                           & = e^(2x)
$

Calculando $u_1 '$:
$
  u_1 ' (x) = - (e^x sin x dot.c 1/3 e^x sec x)/e^(2x) = - sin x dot.c 1/3 sec x = -1/3 tan x
$

Calculando $u_2 '$
$
  u_2 ' (x) = (e^x cos x dot.c 1/3 e^x sec x)/e^(2x) = 1/3
$

Integrando $u_1 '$
$
  u_1 (x) = 1/3 ln |cos x|
$

#mathnote()[ La integral de $tan$ es muy bien conocida]

Integrando $u_2 '$
$
  u_2 (x) = 1/3 x
$

Entonces se tiene
$
  y_p (x) = e^x cos x dot.c (1/3 ln |cos x|) + e^x sin x dot.c (1/3 x)
$

$
  therefore y(x) = e^x [c_1 cos x + c_2 sin x] + e^x cos x dot.c (1/3 ln |cos x|) + e^x sin x dot.c (1/3 x)
$
es la solución general.

#horizontalrule(dashed: true)

(c) $y'' - 2y' + y = e^x / (1 + x^2)$

Resolviendo la ED homogénea.

Se tiene la siguiente ecuación auxiliar:
$
  m^2 - 2m + m = 0 arrow.double.long (m - 1)^2 arrow.double.long m_1 = m_2 = 1
$

Entonces, la función complementaria es:
$
  y_c (x) = c_1 e^x + c_2 x e^x
$
con $y_1 (x) = e^x$ y $y_2 (x) = x e^x$

Buscamos
$
  y_p (x) = u_1 (x) y_1(x) + u_2 (x) y_2 (x)
$

Calculando el Wronskiano:
$
  W (e^x, x e^x) = mat(
    e^x, x e^x;
    e^x, x e^x + e^x
  ) = e^x (x e^x + e^x) - e^x x e^x = x e^(2x) + e^(2x) - x e^(2x) = e^(2x)
$

Calculando $u_1 '$
$
  u_1 ' (x) = -(x e^x (e^x/(1 + x^2)))/e^(2x) = - x e^(-x)(e^x/(1 + x^2)) = - x/(1 + x^2)
$

Calculando $u_2 '$
$
  u_2 ' (x) = (e^x (e^x/(1 + x^2)))/e^(2x) = e^(-x) (e^x/(1 + x^2)) = 1/(1 + x^2)
$

Integrando $u_1 '$
$
  u_1 (x) = - integral x/(1 + x^2) = -1/2 integral 1/z dif z = -1/2 ln (1 + x^2)
$

#mathnote()[
  con $z = 1 + x^2, dif z = 2x dif x$
]

Integrando $u_2 '$
$
  u_2 (x) = arctan x
$

#mathnote()[Integral conocida]

Entonces se tiene
$
  y_p (x) = -1/2 e^x ln(1 + x^2) + x e^x arctan x
$

$
  therefore y(x) = c_1 e^x + c_2 x e^x - 1/2 e^x ln(1 + x^2) + x e^2 arctan x
$
es las solución general.

#horizontalrule(dashed: true)

8- Resuelva las siguientes ED de orden superior usando el método de variación de parámetros:

(a) $y''' + y' = tan x$

Resolviendo la ED homogénea.

Se tiene la siguiente ecuación auxiliar
$
  m^3 + m = 0 arrow.double.long m (m^2 + 1) = 0 arrow.double.long m_1 = 0, m_2 = i, m_3 = -i
$

Entonces la función complementaria es:
$
  y_c (x) = c_1 + c_2 cos x + c_3 sin x
$
con $y_1 (x) = 1, y_2 (x) = cos x$ y $y_3 (x) = sin x$

Buscamos
$
  y_p (x) = u_1 (x) y_1(x) + u_2 (x) y_2 (x) + u_3 (x) y_3 (x)
$

Calculando el Wronskiano:
$
  W (1, cos x, sin x) = mat(
    1, cos x, sin x;
    0, -sin x, cos x;
    0, -cos x, -sin x
  ) = sin^2 x + cos^2 x = 1
$

Calculando $u_1 '$. Calculamos su respectivo Wronskiano:
$
  W_1 & = mat(
          0, cos x, sin x;
          0, -sin x, cos x;
          tan x, -cos x, -sin x
        ) \
      & = 0 dot.c (sin^2 x + cos^2 x) - cos x dot.c (-tan x dot.c cos x) + sin x(sin x dot.c tan x) \
      & = sin x dot.c cos x + sin^2 x dot.c tan x = sin x (cos x + sin x dot.c tan x) = tan x
$

Entonces
$
  u_1 ' = (tan x)/ 1 = tan x
$

Calculando $u_2 '$. Calculamos su respectivo Wronskiano:
$
  W_2 & = mat(
          1, 0, sin x;
          0, 0, cos x;
          0, tan x, -sin x
        )
        = - tan x dot.c cos x = - sin x
$

Entonces
$
  u_2 ' = -(sin x)/ 1 = -sin x
$

Calculando $u_3 '$. Calculamos su respectivo Wronskiano:
$
  W_3 & = mat(
          1, cos x, 0;
          0, -sin x, 0;
          0, - cos x, tan x
        ) = - sin x dot.c tan x
$


Entonces
$
  u_3 ' = -(sin x dot.c tan x)/ 1 = -sin x dot tan x
$

Integrando $u_1 '$
$
  u_1 (x) = -ln |cos x|
$

Integrando $u_2 '$
$
  u_2 (x) = cos x
$

Integrando $u_3 '$
$
  u_3 (x) = 1/2 ln abs((sin(x) - 1)/(sin(x) + 1)) + sin x
$

#mathnote()[ La última integral se resolvió con _photomath_. Las anteriores son inmediatas]

Entonces se tiene
$
  y_p (x) & = -ln |cos x| + cos^2 x + sin x(1/2 ln abs((sin(x) - 1)/(sin(x) + 1)) + sin x) \
          & = -ln |cos x| + 1 + sin x (1/2 ln abs((sin(x) - 1)/(sin(x) + 1)))
$

$
  therefore y(x) = c_1 + c_2 cos x + c_3 sin x -ln |cos x| + 1 + sin x (1/2 ln abs((sin(x) - 1)/(sin(x) + 1)))
$
es la solución general.

#horizontalrule(dashed: true)

(c) $y''' + 4y' = sec 2x$

Resolviendo la ED homogénea.

Se tiene la siguiente ecuación auxiliar:
$
  m^3 + 4m = 0 arrow.double.long m(m^2 + 4) = 0 arrow.double.long m_1 = 0, m_2 = 2i, m_3 = -2i
$

Entonces la función complementaria es:
$
  y_c (x) = c_1 + c_2 cos 2x + c_3 sin 2x
$
con $y_1 (x) = 1, y_2 (x) = cos 2x$ y $y_3 (x) = sin 2x$

Buscamos
$
  y_p (x) = u_1 (x) y_1(x) + u_2 (x) y_2 (x) + u_3 (x) y_3 (x)
$

Calculando el Wronskiano:
$
  W (1, cos 2x, sin 2x) = mat(
    1, cos 2x, sin 2x;
    0, -2sin 2x, 2cos 2x;
    0, -4cos 2x, -4sin 2x
  ) = 8 sin^2 2x + 8 cos^2 2x = 8
$

Calculando $u_1 '$. Calculamos su respectivo Wronskiano:
$
  W_1 & = mat(
          0, cos 2x, sin 2x;
          0, -2sin 2x, 2cos 2x;
          sec 2x, -4cos 2x, -4sin 2x
        ) \
      & = cos 2x (2 sec 2x dot.c cos 2x) + sin 2x(2 sec 2x dot.c sin 2x) \
      & = 2cos 2x + 2 sin^2 2x dot.c sec 2x \
      & = 2(cos 2x + sin^2 2x dot.c sec 2x) \
      & = 2 sec 2x
$

#mathnote()[ La última simplificación se hizo con _photomath_.]


Entonces
$
  u_1 ' = (2 sec 2x)/8 = 1/4 sec 2x
$


Calculando $u_2 '$. Calculamos su respectivo Wronskiano:
$
  W_2 & = mat(
          1, 0, sin 2x;
          0, 0, 2cos 2x;
          0, sec 2x, -4sin 2x
        )
        = -2 sec 2x dot.c cos 2x = -2
$

Entonces
$
  u_2 ' = -2/8 = -1/4
$

Calculando $u_3 '$. Calculamos su respectivo Wronskiano:
$
  W_3 & = mat(
          1, cos 2x, 0;
          0, -2sin 2x, 0;
          0, - 4cos 2x, sec 2x
        ) = -2sec 2x dot.c sin 2x = -2 tan 2x
$

Entonces
$
  u_3 ' = -(2 tan 2x)/8 = -1/4 tan 2x
$

Integrando $u_1 '$
$
  u_1 (x) = 1/8 ln abs((1 + sin 2x)/(cos 2x))
$

#mathnote()[ La integral se resolvió con _photomath_.]


Integrando $u_2 '$
$
  u_2 (x) = -1/4 x
$

Integrando $u_3 '$
$
  u_3 (x) = 1/8 ln abs(cos 2x)
$

#mathnote()[ La integral se resolvió con _photomath_.]

Entonces se tiene
$
  y_p (x) = 1/8 ln abs((1 + sin 2x)/(cos 2x)) -1/4 x cos 2x + 1/8 sin 2x dot.c ln abs(cos 2x)
$

$
  therefore y(x) = c_1 + c_2 cos 2x + c_3 sin 2x + 1/8 ln abs((1 + sin 2x)/(cos 2x)) -1/4 x cos 2x + 1/8 sin 2x dot.c ln abs(cos 2x)
$
es la solución general.

#horizontalrule(dashed: true)

9- Resuelva las siguientes ED de segundo orden (Cauchy-Euler):

(a) $x^2 y'' + 8x y' + 6y = 0$

Tenemos que $a = 1, b = 8, c =6$

Se tiene la siguiente ecuación auxiliar:
$
  m^2 + 7m + 6 = 0 arrow.double.long (m + 1)(m + 6) arrow.double.long m_1 = -1 , m_2 = -6
$

Como las raíces son reales distintas, la solución general es de la forma:
$
  y(x) = c_1 x^(-1) + c_2 x^(-6)
$

#horizontalrule(dashed: true)

(b) $3x^2y'' + 6x y + y = 0$

Tenemos que $a = 3, b = 6, c =1$

Se tiene la siguiente ecuación auxiliar:
$
  3m^2 + 3m + 1 = 0 & arrow.double.long m = (-3 plus.minus sqrt(3^2 - 4(3)(1)))/(2(3)) = (-3 plus.minus sqrt(-3))/6 \
                    & arrow.double.long m_1 = -1/2 + sqrt(3)/6i, m_2 = -1/2 - sqrt(3)/6i
$

Como las raíces son complejas, la solución general es de la forma:
$
  y(x) = x^(-1/2) [c_1 cos (sqrt(3)/6) ln x + c_2 sin(sqrt(3)/6) ln x]
$

#horizontalrule(dashed: true)

(c) $x^3y''' - 6y = 0$

Consideremos
$
  y = x^m,
  space.quad
  y' = m x^(m-1),\
  y'' = m(m-1) x^(m-2),
  space.quad
  y''' = m(m-1)(m-2) x^(m-3)
$

Sustituyendo en la ED:
$
  x^3(m(m-1)(m-2) x^(m-3)) - 6x^m = 0 & arrow.double.long
                                        x^m (m^3 - 3m^2 + 2m) - 6x^m = 0 \
                                      & arrow.double.long
                                        x^m (m^3 - 3m^2 + 2m - 6) = 0 \
                                      & arrow.double.long
                                        m^3 - 3m^2 + 2m - 6 = 0 \
                                      & arrow.double.long
                                        m^2(m - 3) + 2(m - 3) = 0 \
                                      & arrow.double.long
                                        (m^2 + 2)(m - 3) = 0 \
                                      & arrow.double.long
                                        m_1 = 3, m_2 = sqrt(2)i, m_3 = -sqrt(2)i
$

Entonces, la solución general tiene la forma:
$
  y(x) = c_1 x^(3) + c_2 cos(sqrt(2) ln x) + c_3 sin(sqrt(2) ln x)
$

#horizontalrule(dashed: true)

(d) $x^3 y''' + x y' - y = 0$

Consideremos
$
  y = x^m,
  space.quad
  y' = m x^(m-1),\
  y'' = m(m-1) x^(m-2),
  space.quad
  y''' = m(m-1)(m-2) x^(m-3)
$

Sustituyendo en la ED:
$
  & x^3 (m(m-1)(m-2) x^(m-3)) + x(m x^(m-1)) - x^m = 0 \
  & arrow.double.long x^m (m^3 - 3m^2 + 2m) + m x^m - x^m = 0 \
  & arrow.double.long x^m (m^3 - 3m^2 + 3m - 1) = 0 \
  & arrow.double.long m^3 - 3m^2 + 3m - 1 = 0 \
  & arrow.double.long (m -1)^3 = 0 \
  & arrow.double.long m_1 = m_2 = m_3 = 1
$

Entonces, la solución tiene la forma:
$
  y(x) = c_1 x + c_2 x ln x + c_3 x (ln x)^2
$
