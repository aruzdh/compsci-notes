#import "../lib.typ":*

= 29 de Agosto de 2025

== Teorema

#theorem("Teorema de Existencia y Unicidad")[
//TODO: grafica
  Sea $R$ una región rectangular en el plano $x y$ definida por $a <= x <= b$ y $c <= y <= d$ y que contiene al punto $(x_0, y_0)$ en su interior. Si $f(x,y)$ y $(diff f) / (diff y)$ son continuas en $R$, entonces existe algún intervalo $I : (x_0 - h, x_0 + h), forall h >0$ contenido en el intervalo $[a,b]$ y una función única $y(x)$, definida en $I$, es una solución del PVI de primer orden dado por
  $
  (dif y) / (dif x) = f(x,y); y(x_0) = y_0
  $
]

#note()[
  Las condiciones 
  $
  f(x,y)
  space.quad
  "y"
  space.quad
  (diff f) / (diff y)
  $
  del teorema de existencia y unicidad son suficientes pero no necesarias.
]

#exercise()[
  Determine la región del plano $x y$ para que la siguiente ED tenga una solución única, cuyas curvas solución pasen por un punto $(x_0, y_0)$.
  $
  (y-x)y' = y +x
  $

  Usando el Teorema de Existencia y Unicidad se tiene:

  Escribiendo la ED en su forma normal:
  $
  y' = (y + x)/(y-x)
  $
  donde
  $
  f(x,y) = (y + x)/(y-x)
  $, además $f(x,y)$ no es continua cuando $y-x = 0$, es decir, $y = x$.
  //TODO: grafica

  Encontrando $(diff f) / (diff y)$:
  $
  (diff f) / (diff y) = ((1)(y+x) - (1)(y-x))/(y-x)^2 = (2x) / (y-x)^2
  $, además $(diff f) / (diff y)$ no es continua cuando $(y-x)^2= 0$

  Por el Teorema de Existencia y Unicidad la región para que la ED tenga una única solución es:
  $
  x < y
  space.quad
  "ó"
  space.quad
  x > y
  $
]

#exercise()[
  Determine si el Teorema de Existencia y Unicidad garantiza que la ED
  $
  y' sqrt(y^2 - 9)
  $

  tiene solución única que pasa por los puntos $(1,4)$ y $(-1,1)$.

  Como la ED ya está escrita en su forma normal, entonces $f(x,y) = sqrt(y^2 - 9)$

  Para que la ED tenga solución única, por el Teorema de Existencia y Unicidad $f(x,y) "y" (diff f) / (diff y)$ sean continuas

  Para que $f(x,y)$ sea continua $y^2 - 9 >= 0 arrow.double (y+3)(y-3) >= 0$. Resolviendo tenemos que $y <= 3$ o $y >= 3$

  //TODO: grafica

  $
  (diff y) / (diff y) = (y^2 -a)^(1/2) = 1/2 (y^2 - 9)^(-1/2) dot.c 2y = y / sqrt(y^2 - 9)
  $

  $(diff f)/(diff y)$ no es continua en $sqrt(y^2 - 0) > 0 arrow.double y^2 - 9 > 0$
  $y-3$ o $y > 3$

  Para el punto $(1,4)$ donde $y = 4$ este se encuentra en la región donde está $f(x,y)$ y $(diff f) / (diff y)$ son continuas.

  Por el teorema de Existencia y Unicidad, garantiza que la ED $y' = sqrt(y^2 - 9)$ tiene una única solución que pasa por el punto $(1,4)$

  Para el punto $(-1,1)$. Dicho punto se encuentra en la región donde $f(x,y)$ y $(diff f) / (diff y)$ no son continuas.

  Por lo tanto, el teorema no garantiza una única solución a la ED.
]

== Ecuaciones Diferenciales como Modelos Matemáticos

- Estudiar el crecimiento de la población en un ecosistema.
- Datar fósiles.
- Analizar el decaimiento de una sustancia radioactiva.

Para formular un modelo matemático se considera lo siguiente:

+ Identificar las variables involucradas dadas en el problema
+ Establecer un conjunto de hipótesis.
+ Una vez propuesto el modelo y resuelto, este debe ser consistente con datos o hechos relacionados con el problema a resolver.

== Ecuaciones Diferenciales de 1er Orden

=== Interpretación Geométrica y de sus Soluciones

Consideremos la siguiente ED de 1er orden
$
(dif y) / (dif x) = f(x,y) arrow.l "forma normal"
$

Imaginemos que no podemos encontrar un método para resolverla analíticamente:

La ED en sí misma a veces nos puede decir concretamente como se *comportan* sus soluciones

=== Campos Direccionales o Isoclinas

Nos permiten estudiar las ED de 1er orden de manera cualitativa, sin resolver propiamente la ED.

"Una derivada $(dif y) / (dif x)$ de una función derivable $y = y(x)$ da la *pendiente* de la recta tangente en algún punto de su gráfica"
//TODO: gráfica

La derivada en el punto $(x_0, y_0)$ da la pendiente de la recta tangente en dicho punto.

Debido a que una solución de la forma $y = y(x)$ de una ED de 1er orden
$
(dif y) / (dif x) = f(x,y)
$
es una función derivable en un intervalo $I$ de definición, y continua.

Entonces, la curva solución correspondiente en $I$ debe tener una recta tangente en cada punto $(x,y(x))$
//TODO: gráfica

La función $f$ en la forma normal de la ED
$
(dif y) / (dif x) = f(x,y)
$

se le llama función pendiente o función razón.
