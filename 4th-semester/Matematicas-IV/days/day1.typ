#import "../lib.typ": *
#import "../utils.typ":*

= Ecuaciones Diferenciales

Son muy utilizadas en
+ Ciencias físicas
+ Ciencias Sociales (economía)
+ Ciencias Biológicas

== Definición

Recordando que la derivada de una función $f$ se define como
$
y' = (dif f) / (dif x).
$

Teniendo las diferentes notaciones para las derivadas:
 $
 overbrace(
 (dif y) / (dif x),
 smash("Leibniz")
 ),
 space.quad space.quad
overbrace(
  y',
  smash("Lagrange")
),
space.quad space.quad
overbrace(
  accent(f,dot)(x),
  smash("Newton")
)
$
 
*En este curso se usará la notación Leibniz.*

Así, podemos definir a una ecuación diferencial de la siguiente manera.

#definition("Ecuación Diferencial")[
  Se dice que una *ecuación diferencial* (*ED*) es una ecuación que contiene derivadas de una o más variables independientes. 
]

#example()[
  Algunas ED.

  $
  (dif overbrace(y, smash("variable dependiente"))) / 
  (dif underbrace(x, #smash("variable independiente"))) = 5 x y,
  space.quad space.quad space.quad space.quad
  (dif y) / (dif x) + 7y = x^2,
  space.quad space.quad space.quad space.quad
  (dif x) / (dif underbrace(t, smash("variable independiente"))) + (dif y) / (dif t) = 2x + y
  $
]

#tip()[
  La variable respecto con la cual se deriva es la *variable independiente*. La *variable dependiente* es la que se deriva.
]

== Clasificación de ED

Las ED se pueden clasificar por _tipo_, _orden_, y _linealidad_.

=== Clasificación por Tipo

#definition("Ecuación Diferencial Ordinaria")[
  Sí una ED tiene *solo* derivadas de una o más variables dependientes respecto a *una* sola variable independiente, se dice que es una *ecuación diferencial ordinaria* (*EDO*).
]

#example()[
  $
  (dif y) / (dif x) + 5y = e^x,
  space.quad space.quad space.quad space.quad
  (dif^2 y) / (dif x^2) - (dif y) / (dif x) + 6y = 0
  $
]

#definition("Ecuación Diferencial Parcial")[
  Una ecuación que involucra derivadas parciales de una o más variables dependiente de dos o más variables independientes se le llama *ecuación diferencial parcial* (*EDP*)
]

#example()[
  $
  (diff^2 u) / (diff x^2) + (diff^2 u) / (diff y^2) = 0,
  space.quad space.quad
  (diff^2 u) / (diff x^2) = (diff^2 u) / (diff t^2) - 2 (diff u) / (diff t),
  space.quad space.quad
  (diff u) / (diff y) = - (diff v) / (diff x)
  $
]

=== Clasificación por Orden

#definition("Orden de una Ecuación Diferencial")[
  El *orden* de una ED, ya sea EDO o EDP, es el orden de la mayor derivada en la ED.
]

#example()[
  La siguiente es una una EDO de 2do. orden.
  $
  underbrace(
    (dif^2 y) / (dif x^2),
    "2do. orden"
  ) + 5 ((dif y) / (dif x))^3 - 4y = e^x
  $

]

=== Clasificación por linealidad

Una ED de $n$-ésimo orden se dice que es *lineal* en $y,y',dots,y^n$ presentes en $F$,es decir que es de la forma siguiente:
$
a_n (x) y^n + a_(n-1) (x) y^(n-1) + dots.c + a_1 (x) y' + a_0 (x) y - g(x) = 0
$

Con la notación de Leibniz:
$
a_n (x) (dif^n y) / (dif x^n) + a_(n-1) (x) (dif^(n-1) y) / (dif x^(n-1)) + dots.c + a_1 (x) (dif y) / (dif x) + a_0 (x) y - g(x) = 0
$
donde $a_n (x)$ son coeficientes.

=== ED Lineales de 1er y 2do Orden 

EDL de 1er orden:
$
a_1 (x) (dif y) / (dif x) + a_0 (x) y = g(x) 
$

EDL de 2do orden:
$
a_2 (x) (dif^2 y) / (dif x^2) + a_1 (x) (dif y) / (dif x) + a_0 (x) y = g(x) 
$

*_En resumen:_*
+ La variable dependiente $y$ y todas sus derivadas, $y, y'', dots, y^n$son de primer grado:
  $
  a_n (x) ((dif^n y) / (dif x^n))^1 + a_(n-1) (x) ((dif^(n-1) y) / (dif x^(n-1)))^1 + dots.c + a_1 (x) ((dif y) / (dif x))^1 + a_0 (x) (y)^1 = g(x)
  $
  es decir, la potencia de cada término que contiene a $y$ es igual a *1*.
+ Los coeficientes $a_0, a_1, a_2, dots, a_n$ de $y, y', y'', dots, y^n$ dependen de a lo más de la variable independiente $x$.

==== Ecuación Diferencial no Lineal

#definition("Ecuación Diferencial No Lineal")[
  Una ED no lineal es simplemente "no lineal".
]

#exercise()[
  Diga si las siguientes EDO son lineales, y diga de que orden son:

  + $(1 -y) y' + 2y = e^x$

    Tenemos

    $
    a_1 (x) = 1-y,
    space.quad
    a_0 (x) = 2,
    space.quad
    g(x) = e^x
    $

    *No es lineal* ya que $a_1$ no depende de la variable independient $x$. Su orden es 1.

  + $(dif^2 y) / (dif x^2) + sin(y) = 0$

    *No es lineal* debido a que $sin(y)$ no depende de $x$. Su orden es 2.

  + $(dif^4 y) / (dif x^4) + y^2 = 0$

    *No es lineal* ya que se tiene $y^2$ (debería estar elevado a 1). Su orden es 4.

  + $(dif^2 u) / (dif r^2) + (dif u) / (dif r) + u  = cos(r + u)$

    *No es lineal* ya que la variable dependiente $u$ se encuentra en el argumento de $cos$. Su orden es 2.

  + $(dif^2 y) / (dif x^2) = sqrt(1 + ((dif y) / (dif x))^2)$

    *No es lineal* debido a el diferencial de dentro de la raíz está elevado al cuadrado. Su orden es 2.
]

== Ecuación Diferencial Escrita de Forma Normal

Algunas veces las EDO se escriben como:

$
M(x,y) dif x + N(x,y) dif y = 0
$

#example()[
  $
  (x-y) dif x + 4x dif y = 0
  $

  Como $y' = (dif y) / (dif x)$, y si dividimos la ecuación anterior entre $dif x$:
  $
  (x-y) (dif x) / (dif x) + 4x (dif y) / (dif x) = 0
  arrow.double.long
  (x-y) + 4x (dif y) / (dif x) = 0
  arrow.double.long
  4x (dif y) / (dif x) + (x-y)= 0
  $
]

#note()[
  Recordemos que la derivada de orden cero da como resultado la misma función:
  $
  (dif^0 f) / (dif x^0) = f.
  $
]

De lo anterior, podemos expresar una EDO de $n$-ésimo orden con una variable dependiente de la siguiente forma:

$
F(x, y, (dif^n y) / (dif x^n), (dif^(n-1)) / (dif x^(n-1)), dots, (dif y) / (dif x)) = 0,
$

$
F(x, y, y^n, y^(n-1), dots, y^1) = 0
$

Así, la ED de $n$-ésimo orden:
$
y^n = f (x, y, y', dots, y^(n-1))
$

Esta última forma es llamada *ecuación diferencial escrita de forma normal*.

#exercise()[
  Escribir las siguientes EC en su forma normal.
  $
  4x y' + y = x
  arrow.long.double
  y' = (x - y)/ (4x)
  $

  $
  y'' - y' + 6y = 0
  arrow.long.double
  y'' = y' - 6y
  $
]

#note()[
  Cuando nos convenga o sea adecuado a nuestros propósitos usaremos las formas normales:
  $
  (dif y) / (dif x) = f(x,y)
  space.quad space.quad space.quad
  (dif^2 y) / (dif x^2) = f(x,y, (dif y) / (dif x))
  $
]
