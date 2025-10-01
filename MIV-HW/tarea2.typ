#import "./utils.typ":*

#align(center)[
  #text(18pt)[
    = Tarea 2
  ]
  #text(13pt)[
    Hernández Vázquez Carlos Arturo
  ]
]

1. Determine la solución general de las siguientes ecuaciones diferenciales. Indique el intervalo $I$ en el que está definida la solución general.

(a) $ (dif P)/(dif t) + 2t P = P + 4t - 2 $

Primero tenemos que:

$
(dif P)/(dif t) + 2t P = P + 4t - 2 & arrow.double.long 
(dif P)/(dif t)  = P(1 - 2t ) - 2(-2t + 1) \ 
& arrow.double.long (dif P)/(dif t)  = (P - 2)(1 - 2t) \
& arrow.double.long 1/(P - 2) dif P  = 1 - 2t dif t
$

Integrando ambos lados:
$
integral 1/(P - 2) dif P  = integral 1 - 2t dif t
$

Por un lado:
$
integral 1/(P - 2) dif P =
integral 1/u dif u = ln (P - 2) + C space.quad forall P > 2
$
#align(center)[ con la substitución: $u = P - 2, dif u = dif P$ ]

Por otro lado:
$
integral 1 - 2t dif t = integral 1 dif t - 2integral t dif t = t - t^2 + C
$

Por tanto, la solución es:
$
ln (P - 2) = t + t^2 + C space.quad space.quad forall P > 2
$

//TODO: Revisar el intervalo

y su Intervalo es $I = RR$

#line(length: 100%,stroke: (paint: gray, thickness: 1pt, dash: ("dot", 2pt, 4pt, 2pt)))


(b) $ cos^2 x dot.c sin x (dif y)/(dif x) + (cos^3 x) y = 1 $

Escribimos la ecuación en su forma estándar:
$
(cos^2 x dot.c sin x)/(cos^2 x dot.c sin x ) (dif y)/(dif x) + (cos^3 x) /( cos^2 x dot.c sin x) y = 1/(cos^2 x dot.c sin x)
arrow.long.double
(dif y)/(dif x) + (cot x) y = sec^2 (x) csc (x)
$
Identificamos $p(x)$ y $f(x)$:
$
p(x) = cot x space.quad space.quad f(x) = sec^2(x) csc(x)
$

Calculando el factor integrante:
$
mu(x) = e^(integral cot x dif x) = e^(ln sin x) = sin x space.quad forall sin x > 0
$

Multiplicando el factor integrante por la ED:
$
sin x[
(dif y)/(dif x) + cot(x)y] = sec^2 (x)csc (x) sin(x) & arrow.long.double
sin x (dif y)/(dif x) + sin(x) cot(x)y] = sec^2\
&arrow.long.double
(dif y)/(dif x) [sin x dot.c y] = sec^2(x)
$

Intagrando ambos lados:
$
integral (dif y)/(dif x) [sin x dot.c y] dif x = integral sec^2(x) dif x arrow.double.long
y sin x = tan x + C
$

Por tanto, la solución es:

$
y = (tan x + C) / (sin x) = sec (x) + C csc (x)
$

y su Intervalo es el conjunto de todos los $RR$ excepto los valores de $x$ para los cuales $sin x = 0$ o $cos x = 0$.

#line(length: 100%,stroke: (paint: gray, thickness: 1pt, dash: ("dot", 2pt, 4pt, 2pt)))

(c) $ (1 + x^2) y' + 4x y = (1 + x^2)^(-2) $

Escribimos la ecuación en su forma estándar:
$
(1 + x^2)/(1 + x^2) y' + (4x y)/(1 + x^2) = (1 + x^2)^(-2)/(1 + x^2)
arrow.double.long
y' + (4x)/(1 + x^2)y = (1 + x^2)^(-3)
$

Identificamos $p(x)$ y $f(x)$:
$
p(x) = (4x)/(1+x^2) space.quad space.quad f(x) = (1 + x^2)^(-3)
$

Calculando el factor integrante:
$
mu(x) = e^(4integral (x)/(1+x^2) dif x) = e^(2ln(1+x^2)) = e^(ln((1+x^2)^2)) = (1+x^2)^2
$

Multiplicando el factor integrante por la ED:
$
(1+x^2)^2 [y' + (4x)/(1 + x^2)y] = (1+x^2)^2 (1 + x^2)^(-3)
& arrow.double.long
(1+x^2)^2 y' + ((1+x^2)^2 4x)/(1 + x^2)y = (1 + x^2)^(-1)\
& arrow.double.long
(dif y)/(dif x)[y(1+x^2)^2]= (1+x^2)^(-1)
$

Integrando ambos lados:
$
integral (dif y)/(dif x)[y(1+x^2)^2] dif x = integral (1+x^2)^(-1) dif x
arrow.double.long
y(1+x^2)^2 = arctan x + C
$

Por tanto, la solución es:
$
y = (arctan x + C)/(1+x^2)^2
$

y su intervalo de definición es $I = RR$.

#line(length: 100%,stroke: (paint: gray, thickness: 1pt, dash: ("dot", 2pt, 4pt, 2pt)))

(d) $ (dif y)/(dif t) + (t/(1+t^2)) y = 1 - (t^3/(1+t^4)) y $

//TODO: Preguntar sobre la solución

Tenemos que:
$
(dif y)/(dif t) + (t/(1+t^2)) y = 1 - (t^3/(1+t^4)) y arrow.double.long
(dif y)/(dif t) + (t/(1+t^2) + t^3/(1+t^4)) y = 1
$

Identificamos $p(t)$ y $f(t)$:
$
p(t) =t/(1+t^2) + t^3/(1+t^4) space.quad space.quad f(t) = 1
$

Calculando el factor integrante:
$
e^(integral (t/(1+t^2) + t^3/(1+t^4)) dif t) = 
e^(integral t/(1+t^2) dif t + integral t^3/(1+t^4) dif t) = e^(1/2ln(1+t^2)+ 1/4 ln(1+t^4)) = e^(ln((1+t^2)^(1/2)(1+t^4)^(1/4))) =(1+t^2)^(1/2)(1+t^4)^(1/4)
$

Multiplicando el factor integrante por la ED:
$
(1+t^2)^(1/2)(1+t^4)^(1/4) [(dif y)/(dif t) + (t/(1+t^2) + t^3/(1+t^4)) y] = (1+t^2)^(1/2)(1+t^4)^(1/4)
\ arrow.double.long \
(1+t^2)^(1/2)(1+t^4)^(1/4) (dif y)/(dif t) + (1+t^2)^(1/2)(1+t^4)^(1/4)(t/(1+t^2) + t^3/(1+t^4)) y = (1+t^2)^(1/2)(1+t^4)^(1/4)
\ arrow.double.long \
(dif y)/(dif t)[y(1+t^2)^(1/2)(1+t^4)^(1/4)] = (1+t^2)^(1/2)(1+t^4)^(1/4)
$

Integrando ambos lados:
$
integral  (dif y)/(dif t)[y(1+t^2)^(1/2)(1+t^4)^(1/4)] dif t = integral (1+t^2)^(1/2)(1+t^4)^(1/4) dif t
\ arrow.double.long \
y(1+t^2)^(1/2)(1+t^4)^(1/4)] = integral (1+t^2)^(1/2)(1+t^4)^(1/4) dif t
$

#line(length: 100%,stroke: (paint: gray, thickness: 1pt, dash: ("dot", 2pt, 4pt, 2pt)))

(e) $ y' + (1/x) y = 3 cos(2x) $

Identificamos $p(x)$ y $f(x)$:
$
p(x) = 1/x space.quad space.quad 3 cos(2x)
$

Calculando el factor integrante:
$
e^(integral 1/x dif x) = e^(ln x) = x space.quad forall x > 0
$

Multiplicando el factor integrante por la ED:
$
x [y' + (1/x) y] = 3x cos(2x) arrow.double.long 
x y' + y = 3x cos(2x) arrow.double.long (dif y)/(dif x) [x y] = 3x cos(2x)
$

Integrando ambos lados:
$
integral (dif y)/(dif x) [x y] dif x = 3 integral x cos(2x) dif x arrow.double.long
x y = 3 ((x sin(2x))/2 + (cos(2x))/4) + C
$

Por tanto, la solución es:
$
y  = (3/2 x sin(2x) + 3/4 cos(2x) + C)/x
$

y su intervalo de definición es $I = RR \\ {0} $

*NOTA*: la integral $integral x cos(2x) dif x$ fue resuelta con el software _WolframAlpha_.

#line(length: 100%,stroke: (paint: gray, thickness: 1pt, dash: ("dot", 2pt, 4pt, 2pt)))

(f) $ x y' + (1 + x)y = e^(-x) sin(2x) $

Escribimos la ecuación en su forma estándar:
$
x y' + (1 + x)y = e^(-x) sin(2x) arrow.double.long
y' + (1 + x)/x y = e^(-x) sin(2x)/x 
$

Calculande el factor integrante:
$
e^(integral (1+x)/x dif x) = e^(integral 1/x dif + integral 1 dif x) = e^(ln(x) + x) = e^(ln x) e^x = x e^x space.quad forall x > 0
$

Multiplicando el factor integrante por la ED:
$
x e^x [ y' + (1 + x)/x y] = x e^x e^(-x) sin(2x)/x arrow.double.long
x e^x y' + e^x (1 + x) y = sin(2x) arrow.double.long
(dif y)/(dif x)[x e^x y] = sin(2x)
$

Integrando ambos lados:
$
integral (dif y)/(dif x)[x e^x y] dif x = integral sin(2x) dif x arrow.double.long
x e^x y = 2 integral sin(x)cos(x) dif x arrow.double.long
x e^x y = sin^2(x) + C
$

Por tanto, la solución es:
$
y = (sin^2(x) + C)/(x e^x)
$

y su intervalo de definición es $I = RR \\ {0} $

#line(length: 100%,stroke: (paint: gray, thickness: 1pt, dash: ("dot", 2pt, 4pt, 2pt)))

2. Resuelva los siguientes problemas con valores iniciales (PVI). Indique el intervalo $I$ en el que está definida la solución.

(a) $ L (dif i)/(dif t) + R i = E; quad i(0) = i_0; $ con $L, R, E, " e " i_0$ constantes

Primero tenemos que:

$
L (dif i)/(dif t) + R i = E arrow.long.double (dif i) / (dif t) = (E - R i)/L
$

(b) $ (1 + t^2) (dif y)/(dif t) + 4t y = t; quad y(1) = 1/4 $

(c) $ x^3 y' + 4x^2 y = e^(-x); quad y(-1) = 0 $

(d) $ y' + (2/x) y = (cos x)/x^2; quad y(π) = 0 $

3. Resuelva los siguientes problemas con valores iniciales (PVI). Use un programa para graficar sus soluciones.

(a) $
  (dif y)/(dif x) + 2x y = f(x); quad y(0) = 2 quad 
   "con" quad f(x) = cases(x space.quad 0 <= x <= 1, 0space.quad x >= 1)
$

(b) $
  (dif y)/(dif x) + 2y = f(x); quad y(0) = 0 quad
  "con" quad f(x) = cases(1 space.quad  0 <= x <= 3, 0 space.quad  x > 3)
$

(c) $
  (dif y)/(dif x) + y = f(x); quad y(0) = 1 quad
   "con" quad f(x) = cases(1 space.quad  0 <= x <= 1, -1 space.quad x > 1)
$
