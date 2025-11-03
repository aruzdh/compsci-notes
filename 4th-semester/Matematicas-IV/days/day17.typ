#import "../lib.typ":*

= 03 de Noviembre de 2025

== Ejemplo Anterior

Ejemplo anterior
#example()[
  b) $x(0)$ y $x(pi/8) = 0$
  Del inciso anterior si $x(0) = 0$, entonces $c_1 = 0$

  Quedando
  $
  x(t) = c_2 sin(4t)
  $

  Si $x(pi/8) = 0$
  $
  x(pi/8) = c_2 sin(4pi/8) = 0 arrow.double.long c_2 = 0
  $

  $
  therefore x(t) = 0 <- "Solución trivial"
  $

  c) $x(0) = 0$ y $x(pi/2) = 1$

  Si $x(0) = 0$, $c_1 = 0 arrow.double.long x(t) = c_2 sin(4t) arrow.long.double x(pi/2) = c_2 sin(pi/2) = 1 arrow.double.long 0 = 1$
  $
  therefore "El PVF no tiene solución"
  $
]

== Ecuaciones Homogéneas

Una ED lineal de $n-$ésimo orden de las forma
$
a_n (x) (dif^n y)/(dif x^n) + a_(n-1)(x) (dif^(n-1) y)/(dif x^(n-1)) + dots.c + a_1 (x) (dif y)/(dif x) + a_0 (x) y = 0
$

se dice que es homogénea, mientras que 
$
a_n (x) (dif^n y)/(dif x^n) + a_(n-1)(x) (dif^(n-1) y)/(dif x^(n-1)) + dots.c + a_1 (x) (dif y)/(dif x) + a_0 (x) y = g(x)
$
con $g(x) != 0$, se dice que es no homogénea.

#example()[
  - $2y'' + 3y' - 5y = 0$ es una ED lineal, de segundo orden, y homogénea.
  - $x y''' + 6y' + 10y = e^x$ es una ED lineal de 3er orden no homogénea.
]

== Principio de Superposición

La suma o superposición de dos o más soluciones de una ED homogénea también es solución.

#theorem("Principio de Superposición")[
  Sean $y_1, y_2, y_3, dots, y_k$ son soluciones de la ED homogénea de $n-$ésimo orden
  $
  a_n (x) (dif^n y)/(dif x^n) + a_(n-1)(x) (dif^(n-1) y)/(dif x^(n-1)) + dots.c + a_1 (x) (dif y)/(dif x) + a_0 (x) y = 0
  $
  Entonces la combinación lineal
  $
  y(x) = c_1 y_1(x) + c_2 y_2 (x) + c_3 y_3 (x) + dots.c + c_n y_n (x)
  $

  donde $c_i, " con " i = 1,2,3, dots, n$, son constantes arbitrarias, también es una solución.
]

#corollary()[
  Un múltiplo constante $y = c_1 y_1 (x)$ de una solución $y_1 (x)$ de una ED homogénea también es solución.
]

#corollary()[
  Una ED lineal homogénea siempre tiene solución trivial.
]

#example()[
  Sean las funciones
  $
  y_1 (x) = x^2
  space.quad space.quad
  y_2 (x) = x^2 ln(x)
  $
  soluciones de la siguiente ED homogénea.
  $
  x^3 y'' - 2x y' + 4y = 0
  $

  Por el Principio de Superposición, la combinación lineal
  $
  y(x) = c_1 y_1 (x) + c_2 y_2 (x) = c_1 x^2 + c_2 x^2 ln(x)
  $
]

== Wronskiano

Supongamos que cada una de las funciones $f_1 (x), f_2 (x), dots, f_n (x)$ tiene al menos $n-1$ derivadas. El siguiente determinante
// TODO: determinante
#set math.mat(delim: "|", gap: 1em)
$
mat(
  f_1 (x), f_2 (x), dots, f_n (x);
  f'_1 (x), f'_2 (x), dots, f'_n (x);
  dots.v, dots.v, dots.down, dots.v;
  f^n_1 (x), f^n_2 (x), dots, f^n_n (x);
  )
$
se le llama Wronskiano de las funciones.

// TODO:
// #let spaces(times) = {
//   for i in range(times) {
//     [$
//     $
//       space.quad
//   ]
//   }
// }
//
// a
// #spaces(8)
// a

#theorem("Criterio para Soluciones Linealmente Independientes (li)")[
  Sean $y_1, y_2, y_3, dots, y_n$ $n$ soluciones de la ED lineal homogénea de $n-$ésimo orden

  $
  a_n (x) (dif^n y)/(dif x^n) + a_(n-1)(x) (dif^(n-1) y)/(dif x^(n-1)) + dots.c + a_1 (x) (dif y)/(dif x) + a_0 (x) y = 0
  $

  El conjunto de soluciones es linealmente independiente si y solo si $W(y_1, y_2, dots, y_n) != 0$, en otro caso (=0), las soluciones son linealmente dependientes.

]

#definition("Conjunto Fundamenta de Soluciones")[
  Al conjunto de $n$ soluciones li de una ED lineal homogénea de $n-$ésimo orden se le conoce como conjunto fundamental de soluciones
]

#example()[
  Las funciones
  $
  y_1 (x) = e^(3x)
  space.quad space.quad space.quad
  y_2 = e^(-3x)
  $
  son soluciones li de la ED lineal homogénea
  $
  y'' - a y = 0
  $

  Entonces

  $ 
  W(e^(3x), e^(-3x)) = 
  mat(
    e^(3x), e^(-3x);
    3e^(3x), -3e^(-3x)
    )
  -6
  $

  Como el Wronskiano $!= 0$, $e^(3x)$ y $e^(-3x)$ son li.

  $therefore y_1 (x) = e^(3x)$ y $y^2 (x) = e^(-3x)$ forman un conjunto fundamental de soluciones.

  Por el Principio de Superposición, la combinación lineal
  $
  y(x) = c_1 e^(3x) + c_2 e^(-3x)
  $ es solución a la ED
]
