#import "./utils.typ":*
#set text(size: 12pt)
#show math.equation: set text(size: 13pt)

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

Entonces tenemos:
$
ln (P - 2) = t + t^2 + C space.quad space.quad forall P > 2
$

Por tanto, la solución es:
$
P - 2 = e^(t + t^2 + C)
arrow.double.long
P = e^t e^t^2e^C+2

space.quad space.quad forall P > 2
$

y su Intervalo es $I = RR$

#line(length: 100%,stroke: (paint: gray, thickness: 1pt, dash: ("dot", 2pt, 4pt, 2pt)))


(b) $ cos^2 x dot.c sin x (dif y)/(dif x) + cos^3(x) y = 1 $

Escribimos la ecuación en su forma estándar:
$
(cos^2 x dot.c sin x)/(cos^2 x dot.c sin x ) (dif y)/(dif x) + (cos^3 x) /( cos^2 x dot.c sin x) y = 1/(cos^2 x dot.c sin x)
arrow.long.double
(dif y)/(dif x) + cot (x) y = sec^2 (x) csc (x)
$
Identificamos $p(x)$ y $f(x)$:
$
p(x) = cot x space.quad space.quad f(x) = sec^2(x) csc(x)
$

Calculando el factor integrante:
$
mu(x) = e^(integral cot(x) dif x) = e^(ln (sin x)) = sin x space.quad forall sin x > 0
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
y(1+x^2)^2 = arctan (x) + C
$

Por tanto, la solución es:
$
y = (arctan(x) + C)/(1+x^2)^2
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
mu(x) = e^(integral (t/(1+t^2) + t^3/(1+t^4)) dif t)
&= e^(integral t/(1+t^2) dif t + integral t^3/(1+t^4) dif t) \
&= e^(1/2ln(1+t^2)+ 1/4 ln(1+t^4)) \
&= e^(ln((1+t^2)^(1/2)(1+t^4)^(1/4))) \
&=(1+t^2)^(1/2)(1+t^4)^(1/4)
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
p(x) = 1/x space.quad space.quad f(x) = 3 cos(2x)
$

Calculando el factor integrante:
$
mu(x) = e^(integral 1/x dif x) = e^(ln x) = x space.quad forall x > 0
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

#align(center)[
  (la integral $integral x cos(2x) dif x$ fue resuelta con el software _WolframAlpha_)
]

Por tanto, la solución es:
$
y  = (3/2 x sin(2x) + 3/4 cos(2x) + C)/x
$

y su intervalo de definición es $I = RR \\ {0} $


#line(length: 100%,stroke: (paint: gray, thickness: 1pt, dash: ("dot", 2pt, 4pt, 2pt)))

(f) $ x y' + (1 + x)y = e^(-x) sin(2x) $

Escribimos la ecuación en su forma estándar:
$
x y' + (1 + x)y = e^(-x) sin(2x) arrow.double.long
y' + (1 + x)/x y = e^(-x) sin(2x)/x 
$

Calculando el factor integrante:
$
mu(x) = e^(integral (1+x)/x dif x) = e^(integral 1/x dif + integral 1 dif x) = e^(ln(x) + x) = e^(ln x) e^x = x e^x space.quad forall x > 0
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

Escribimos la ecuación en su forma estándar:
$
L (dif i)/(dif t) + R i = E arrow.double.long (dif i)/(dif t) + R/L i = E/L
$

Calculando el factor integrante:
$
e^(R/L integral dif t) = e^(R/L t)
$

Multiplicando el factor integrante por la ED:
$
e^(R/L t) [(dif i)/(dif t) + R/L i] = e^(R/L t) E/L arrow.double.long 
e^(R/L t) (dif i)/(dif t) + e^(R/L t) R/L i = e^(R/L t) E/L arrow.double.long 
(dif i)/(dif t) [e^(R/L t) i] = e^(R/L t) E/L
$

Integrando ambos lados:
$
integral (dif i)/(dif t) [e^(R/L t) i] dif t = E/L integral e^(R/L t) dif t
arrow.double.long
e^(R/L t) i = E/L L/R integral e^u dif u arrow.double.long e^(R/L i) = E/R e^(R/L t) + C
$

#align(center)[ con la substitución $u = R/L t, dif u = R/L dif t$ ]

Entonces tenemos:
$
i = (E/R e^(R/L t) + C)/e^(R/L t) = E/R  + C/e^(R/L t)
$

De la condición inicial $i(0) = i_0$:
$
i(0) = E/R  + C/e^(R/L dot.c 0) = i_0 arrow.double.long i_0 - E/R = C
$

Por tanto, la solución del PVI es:
$
i(t)  = E/R  + (i_0 - E/R)/e^(R/L t) = E/R  + (i_0 - E/R)e^(-R/L t)
$

y su intervalo de definición $I = RR$, solo es necesario que $R != 0$ y$L != 0$.

#line(length: 100%,stroke: (paint: gray, thickness: 1pt, dash: ("dot", 2pt, 4pt, 2pt)))

(b) $ (1 + t^2) (dif y)/(dif t) + 4t y = t; quad y(1) = 1/4 $

Primero tenemos que:
$
(1 + t^2) (dif y)/(dif t) + 4t y = t arrow.double.long (dif y)/(1-4y) = t/(1+t^2) dif t
$

Integrando ambos lados:
$
integral (dif y)/(1-4y) = integral t/(1+t^2) dif t
arrow.double.long
-1/4 ln(1-4y) = 1/2 ln(1+t^2) + C
$
#align(center)[ con $1/4 > y$]

Entonces tenemos:
$
-1/4 ln(1-4y) = 1/2 ln(1+t^2) + C
& arrow.double.long
ln(1-4y) = -2 ln(1+t^2) + C \
& arrow.double.long
y = -(e^(-2 ln(1+t^2) + C) - 1)/4\
& arrow.double.long
y = -(e^(ln((1+t^2)^(-2)))e^C - 1)/4\
& arrow.double.long
y = -((1+t^2)^(-2)e^C - 1)/4\
& arrow.double.long
y = 1/4 - (e^C)/(4(1+t^2)^2)
$

Para simplificar los cálculos se agrupan la constante $-e^C/4$ en una sola llamada $K$, quedando:
$
y = 1/4 + K/(1+t^2)^2
$

De la condición inicial $y(1) = 1/4$:
$
y(1) = 1/4 + K/(1+1^2)^2 = 1/4 arrow.double.long
K/4= 0 arrow.double.long K = 0
$

Por lo tanto, la solución del PVI es:
$
y = 1/4 + 0/(1+t^2)^2
arrow.double.long
y(t) = 1/4
$

y su intervalo de definición es $I = RR$.

#line(length: 100%,stroke: (paint: gray, thickness: 1pt, dash: ("dot", 2pt, 4pt, 2pt)))

(c) $ x^3 y' + 4x^2 y = e^(-x); quad y(-1) = 0 $

Escribimos la ecuación en su forma estándar:
$
x^3 y' + 4x^2 y = e^(-x)
arrow.double.long
y' + (4x^2)/x^3 y = e^(-x)/x^3
$

Calculando el factor integrante:
$
e^(4 integral x^2/x^3 dif x) = e^(4/3 ln(x^3)) = e^(4ln(x)) = x^4
$

Multiplicando el factor integrante por la ED:
$
x^4[y' + (4x^2)/x^3 y] = x^4 e^(-x)/x^3
arrow.double.long
x^4 y' + 4x^3 y = x e^(-x)
arrow.double.long
(dif y)/(dif x) [x^4 y] = x e^(-x)
$

Integrando ambos lados:
$
integral (dif y)/(dif x) [x^4 y] dif x = integral x e^(-x) dif x
& arrow.double.long
x^4 y = -x e^(-x) + integral e^(-x) dif x \
& arrow.double.long
x^4 y = -x e^(-x) - e^(-x) + C\
& arrow.double.long
x^4 y = -e^(-x)(x + 1) + C
$

#align(center)[ con la integración por partes usando:  $u = x, dif u = dif x, dif v = e^(-x), v = -e^(-x) $ ]

Entonces tenemos:
$
y = (-e^(-x)(x + 1) + C)/x^4
$

De la condición inicial $y(-1) = 0$:
$
y(-1) = (-e^(-(-1))(-1 + 1) + C)/(-1)^4 = 0
arrow.double.long
C/1 = 0
arrow.double.long
C = 0
$

Por la tanto, la solución del PVI es:
$
y = -(e^(-x)(x + 1))/x^4
$

//TODO: Revisar el (y los demas intervalos)
y el intervalo de definición es $I = RR \\ {0}$

#line(length: 100%,stroke: (paint: gray, thickness: 1pt, dash: ("dot", 2pt, 4pt, 2pt)))

(d) $ y' + (2/x) y = (cos x)/x^2; quad y(π) = 0 $

Calculando el factor integrante:
$
e^(2 integral 1/x dif x) = e^(ln(x^2)) = x^2
$

Multiplicando el factor integrante por la ED:
$
x^2 [y' + (2/x) y] = x^2 (cos x)/x^2 
arrow.double.long
x^2 y' + 2x y = cos x
arrow.double.long
(dif y)/(dif x)[x^2 y] = cos x
$

Integrando ambos lados:
$
integral (dif y)/(dif x)[x^2 y] dif x = integral cos x dif x
arrow.double.long
x^2 y = sin x + C
$

Entonces tenemos:
$
y = (sin(x) + C)/ x^2
$

De la condición inicial $y(pi) = 0$:
$
y(pi) = (sin(pi) + C)/ pi^2 = 0
arrow.double.long
C/ pi^2 = 0
arrow.double.long
C = 0
$

Por tanto, la solución del PVI es:
$
y(x) = (sin x)/x^2
$

//TODO: Revisar el intervalo

y su intervalo de definición es $I = RR \\ {0}$.

#line(length: 100%,stroke: (paint: gray, thickness: 1pt, dash: ("dot", 2pt, 4pt, 2pt)))

3. Resuelva los siguientes problemas con valores iniciales (PVI). Use un programa para graficar sus soluciones.

(a) $
  (dif y)/(dif x) + 2x y = f(x); quad y(0) = 2 quad 
   "con" quad f(x) = cases(x space.quad 0 <= x <= 1, 0space.quad x >= 1)
$

Resolviendo el problema 2 partes correspondientes a los intervalos en los que $f$ está definida.

- 
  Para el intervalo $0 <= x <= 1$ tenemos la ED:
  $
    (dif y)/(dif x) + 2x y = x
  $

  que ya se encuentra en su forma estándar.

  Calculando el factor integrante:
  $
  mu(x) = e^(2integral x dif x) = e^x^2
  $

  Multiplicando el factor integrante por la ED:
  $
  e^x^2[(dif y)/(dif x) + 2x y] = e^x^2 dot.c x
  arrow.double.long
  e^x^2(dif y)/(dif x) + 2e^x^2 x y = e^x^2 x
  arrow.double.long
  (dif y)/(dif x)[e^x^2 y] = e^x^2 x
  $

  Integrando ambos lados:
  $
  integral (dif y)/(dif x)[e^x^2 y] dif x = integral e^x^2 x dif x
  arrow.double.long
  e^x^2 y = 1/2 e^x^2 + C
  $
  #align(center)[ (la integral del lado derecho se resolvió examinando los factores) ]

  Entonces tenemos:
  $
  y = (1/2 e^x^2 + C)/e^x^2 
  = 1/2  + C/e^x^2 
  $

  De la condición inicial $y(0) = 2$:
  $
  y(0) = 1/2  + C/e^0^2 = 2
  arrow.double.long
  C = 3/2
  $

  Así tenemos que:
  $
  y = 1/2  + 3/2e^(-x^2) space.quad space.quad forall 0 <= x <= 1
  $
-
  Para el intervalo $x >= 1$ tenemos la ED:
  $
    (dif y)/(dif x) + 2x y = 0
  $
  que ya se encuentra en su forma estándar.

  Calculando el factor integrante:
  $
  mu(x) = e^(2 integral x dif x) = e^x^2 space.quad ("es el mismo que antes")
  $

  Multiplicando el factor integrante por la ED:
  $
  e^x^2[(dif y)/(dif x) + 2x y] = e^x^2 dot.c 0
  arrow.double.long
  e^x^2(dif y)/(dif x) + 2e^x^2 x y = 0
  arrow.double.long
  (dif y)/(dif x)[e^x^2 y] = 0
  $

  Integrando ambos lados:
  $
  integral (dif y)/(dif x)[e^x^2 y] dif x = integral 0 dif x 
  arrow.double.long
  e^x^2 y = K space.quad (K " constante")
  $

  Entonces tenemos:
  $
  y = K e^(-x^2)
  $

  Usando la definición de continuidad de una función determinamos el valor de $K$ suponiendo que $y(x)$ es continua en $x = 1$. Entonces tenemos:
  $
  lim_(x arrow a^-) f(x) = lim_(x arrow a^+) f(x)
  & arrow.double.long
  lim_(x arrow 1^-) y(x) = lim_(x arrow 1^+) y(x)\
  & arrow.double.long
  1/2 + 3/2 e^(-x^2) = K e^(-x^2) \
  & arrow.double.long
  1/2 + 3/2 e^(-1) = K e^(-1)\
  $

  Despejando $K$:
  $
  (1/2 + 3/2 e^(-1)) / e^(-1) = K 
   arrow.double.long
  e^1/2 + 3/2 = K 
   arrow.double.long
  K = (e + 3)/2
  $

  Así tenemos que:
  $
  y(x) = (e + 3)/2 e^(-x^2) space.quad space.quad forall x >= 1
  $

Por tanto:
$
y(x) = cases(
  1/2  + 3/2e^(-x^2) space.quad space.quad 0 <= x <= 1,
  (e+3)/2 e^(-x^2) space.quad space.quad space.quad space.quad x >= 1
)
$

Para graficar la solución se usó GeoGebra:

#figure(
  image("graficas/a.png", width: 66%),
)

#line(length: 100%,stroke: (paint: gray, thickness: 1pt, dash: ("dot", 2pt, 4pt, 2pt)))

(b) $
  (dif y)/(dif x) + 2y = f(x); quad y(0) = 0 quad
  "con" quad f(x) = cases(1 space.quad  0 <= x <= 3, 0 space.quad  x > 3)
$

Resolviendo el problema 2 partes correspondientes a los intervalos en los que $f$ está definida.

- 
  Para el intervalo $0 <= x <= 3$ tenemos la ED:
  $
    (dif y)/(dif x) + 2 y = 1
  $

  que ya se encuentra en su forma estándar.

  Calculando el factor integrante:
  $
  mu(x) = e^(2integral dif x) = e^(2x)
  $

  Multiplicando el factor integrante por la ED:
  $
  e^(2x)[(dif y)/(dif x) + 2y] = e^(2x) dot.c 1
  arrow.double.long
  e^(2x) (dif y)/(dif x) + 2 e^(2x)y = e^(2x)
  arrow.double.long
  (dif y)/(dif x) [e^(2x) y] = e^(2x)
  $

  Integrando ambos lados:
  $
  integral (dif y)/(dif x) [e^(2x) y] dif x = integral e^(2x) dif x
  arrow.double.long
  e^(2x) y = 1/2 e^(2x) + C
  $

  #align(center)[ (la integral del lado derecho se resolvió examinando los factores) ]

  Entonces tenemos:
  $
  y = (1/2 e^(2x) + C)/e^(2x)
  arrow.double.long
  y = 1/2 + C/e^(2x)
  $

  De la condición inicial $y(0) = 0$:
  $
  y(0) = 1/2 + C/e^(2(0)) = 0
  arrow.double.long
  C = -1/2
  $

  Así tenemos que:
  $
  y(x) = 1/2 + (-1/2)/e^(2x) = (1 - e^(-2x))/2 space.quad space.quad forall 0 <= x <= 3
  $

- 
  Para el intervalo $x > 3$ tenemos la ED:
  $
    (dif y)/(dif x) + 2 y = 0
  $

  que ya se encuentra en su forma estándar.

  Calculando el factor integrante:
  $
  mu(x) = e^(2integral dif x) = e^(2x)
  $

  Multiplicando el factor integrante por la ED:
  $
  e^(2x)[(dif y)/(dif x) + 2y] = e^(2x) dot.c 0
  arrow.double.long
  e^(2x) (dif y)/(dif x) + 2 e^(2x)y = 0
  arrow.double.long
  (dif y)/(dif x) [e^(2x) y] = 0
  $

  Integrando ambos lados:
  $
  integral (dif y)/(dif x) [e^(2x) y] dif x = integral 0 dif x
  arrow.double.long
  e^(2x) y = K space.quad (K " constante")
  $

  Entonces tenemos:
  $
  y = K e^(-2x)
  $

  Usando la definición de continuidad una función determinamos el valor de $K$ suponiendo que $y(x)$ es continua en $x = 3$. Entonces tenemos:
  $
  lim_(x arrow a^-) f(x) = lim_(x arrow a^+) f(x)
  & arrow.double.long
  lim_(x arrow 3^-) y(x) = lim_(x arrow 3^+) y(x)\
  & arrow.double.long
  (1 - e^(-2x))/2 = K e^(-2x)\
  & arrow.double.long
  (1 - e^(-2 dot.c 3))/2 = K e^(-2 dot.c 3)
  $

  Despejando $K$:
  $
  ((1 - e^(-2 dot.c 3))/2)/e^(-2 dot.c 3) = K
  arrow.double.long
  ((1 - e^(-6))/2)e^6 = K
  arrow.double.long
  K = (e^6 - 1)/2
  $

  Así tenemos que:
  $
  y(x) = (e^6 - 1)/2 e^(-2x) space.quad space.quad forall x > 3
  $

  Por tanto:
  $
  y(x) = cases(
  (1 - e^(-2x))/2 space.quad space.quad&0 <= x <= 3,
  (e^6 - 1)/2 e^(-2x) &x > 3
  )
  $

Para graficar la solución se usó GeoGebra:

#figure(
  image("graficas/b.png", width: 100%),
)

#line(length: 100%,stroke: (paint: gray, thickness: 1pt, dash: ("dot", 2pt, 4pt, 2pt)))

(c) $
  (dif y)/(dif x) + y = f(x); quad y(0) = 1 quad
   "con" quad f(x) = cases(1 space.quad  0 <= x <= 1, -1 space.quad x > 1)
$

Resolviendo el problema 2 partes correspondientes a los intervalos en los que $f$ está definida.

- 
  Para el intervalo $0 <= x <= 1$ tenemos la ED:
  $
    (dif y)/(dif x) + y = 1
  $

  que ya se encuentra en su forma estándar.

  Calculando el factor integrante:
  $
  mu(x) = e^(integral dif x) = e^x
  $

  Multiplicando el factor integrante por la ED:
  $
  e^x [(dif y)/(dif x) + y] = e^x dot.c 1
  arrow.double.long
  e^x (dif y)/(dif x) + e^x y = e^x
  arrow.double.long
  (dif y)/(dif x) [e^x y] = e^x
  $

  Integrando ambos lados:
  $
  integral (dif y)/(dif x) [e^x y] dif x = integral e^x dif x
  arrow.double.long
  e^x y = e^x + C
  $

  Entonces tenemos:
  $
  e^x y = e^x + C
  arrow.double.long
  y = 1 + C e^(-x)
  $

  De la condición inicial $y(0) = 1$:
  $
  y(0) = 1 + C e^(-0) = 1
  arrow.double.long
  C = 0
  $

  Así tenemos que:
  $
  y(x) = 1 space.quad space.quad forall 0 <= x <= 1
  $

- 
  Para el intervalo $x > 1$ tenemos la ED:
  $
    (dif y)/(dif x) + y = -1
  $

  que ya se encuentra en su forma estándar.

  Calculando el factor integrante:
  $
  mu(x) = e^(integral dif x) = e^x
  $

  Multiplicando el factor integrante por la ED:
  $
  e^x [(dif y)/(dif x) + y] = e^x dot.c -1
  arrow.double.long
  e^x (dif y)/(dif x) + e^x y = -e^x
  arrow.double.long
  (dif y)/(dif x) [e^x y] = -e^x
  $

  Integrando ambos lados:
  $
  integral (dif y)/(dif x) [e^x y] dif x = - integral e^x dif x
  arrow.double.long
  e^x y = -e^x + K
  $

  Entonces tenemos:
  $
  y = (-e^x + K)/e^x = K e^(-x) - 1
  $

  Usando la definición de continuidad una función determinamos el valor de $K$ suponiendo que $y(x)$ es continua en $x = 1$. Entonces tenemos:
  $
  lim_(x arrow a^-) f(x) = lim_(x arrow a^+) f(x)
  & arrow.double.long
  lim_(x arrow 1^-) y(x) = lim_(x arrow 1^+) y(x)\
  & arrow.double.long
  1 = K e^(-x) - 1\
  & arrow.double.long
  1 = K e^(-1) - 1
  $

  Despejando $K$:
  $
  1 = K e^(-1) - 1
  arrow.double.long
  2/e^(-1)= K
  arrow.double.long
  K = 2e
  $

  Así tenemos que:
  $

  y = 2e e^(-x) - 1 = 2e^(1-x) - 1 space.quad space.quad forall x > 1
  $

Por tanto:
$
y(x) = cases(
1 & 0 <= x <= 1,
2e^(1-x) - 1 space.quad space.quad &x > 1
)
$

Para graficar la solución se usó GeoGebra:

#figure(
  image("graficas/c.png", width: 100%),
)
