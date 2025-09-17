#import "../lib.typ":*
//TODO:
= 12 de Septiembre de 2025

== 
Ecuación

$
a_1(x) (dif y) / (dif x ) + a_0 (x) y = g(x) (1)
$

Se dice que la ecuación anterior es homogénea cuando $g(x) = 0$, si $g(x) != 0$ se dice que no es homogénea

Al dividir ambos lados de la ecuación (1) entre el coeficiente $a_1(x)$ se obtiene una forma más útil llamada forma estandar

$
(dif y) / (dif x) + (a_0 (x)) / (a_1(x)) y(x) = (g(x))/(a_1(x))
$

Forma estandar de una ED lineal de 1er orden:

$
(dif y) / (dif x) + p(x)y = f(x) (2)
$

== Método de solución

La ED (2) tiene la siguiente propiedad:

La solución general va a estar dada como la suma de dos soluciones, es decir,
$
y = y_c + y_p
$

$y_c arrow$ es una solución de la ED homogénea asociada.
$
(dif y)/(dif x) + p(x)y = 0
$

$y_p arrow$ es una solución particular de la ED no homogénea asociada.
$
(dif y) / (dif x) + p(x)y = f(x)
$

Observemos lo siguiente:
$
(dif) /(dif x)[y_c + y_p] + p(x)[y_c + y_p] = f(x) arrow.long.double
$

/////////////////////
//

Partiendo de la ED homogénea

$
(dif y)/(dif x) + p(x)y = 0
$

Supongamos que es separable:
$
(dif y)/(dif x) = - p(x)y arrow.long.double (dif y)/y = - p(x) (dif x) arrow.long.double (dif y)/y + p(x) (dif x) = 0
$

Integrando ambos lados:
$
integral (dif y)/y = integral - p(x) (dif x) 
arrow.long.double ln(y) = - integral p(x) dif x + c 
arrow.long.double e^ln(y) = e^(- integral p(x) dif x + c)
arrow.long.double y_c = e^(- integral p(x) dif x) e^c = C  e^(- integral p(x) dif x)\
therefore y_c = C e^(- integral p(x) dif x) 
$

//TODO: foto - y_c = y_1(x)

$
(dif y_0) / (dif x) + p(x) y_0 = 0 arrow.long.double dif / (dif x) y_1(x) + p(x) y_1(x) = 0
$

== Variación de Parámetros

Usando lo anterior para determinar $y_p$. Para ello usamos el método conocido como variación de parámetros.

Consiste en encontrar una función $u$ tal que

$
y_p = u(x) y_1(x)
$

y que satisfaga la ED no homogénea
$
(dif y) / (dif x) + p(x)y = f(x)
$

Suponiendo que $y_p = u(x) y_1(x)$

$
arrow.double.long (dif y_p) / (dif x) + p(x)y_p = f(x)
$
