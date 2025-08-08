#import "../../lib.typ":*

== Independencia y Distribuciones Marginales
=== Variables Aleatorias Independientes

Recordemos que si dos eventos $A, B in cal(F)$ son independientes, entonces
$ P(A inter B) = P(A)P(B) $

#definition("Variables Aleatorias Independientes")[
  Decimos que las variables aleatorias $cal(X)$ y $cal(Y)$ son *variables aleatorias independientes* si 
  $
  forall B, C subset.eq RR, space.med P(cal(X) in B, space.med cal(Y) in C) = P(cal(X) in B) space.med P(cal(Y) in C)
  $
]

Ademas, podemos extenderlo de la siguiente manera.
$
f_(cal(X), cal(Y))(x,y) = P(cal(X) = x, space.med cal(Y) = y) = P(cal(X) = x)P(cal(Y) = y) = f_cal(X)(x) f_cal(Y)(y)
$

#note()[
  Si $cal(X)$ y $cal(Y)$ son variables aleatorias _discretas_, entonces $f_cal(X)$ y $f_cal(Y)$ son funciones de probabilidad y $f_(cal(X), cal(Y))$ es la función de probabilidad conjunta.

  Si $cal(X)$ y $cal(Y)$ son variables aleatorias _continuas_, entonces $f_cal(X)$ y $f_cal(Y)$ son funciones de densidad y $f_(cal(X), cal(Y))$ es la función de densidad conjunta.
]

=== Distribuciones Marginales

#definition("Distribuciones Marginales (caso discreto)")[
  Sea ($cal(X), cal(Y)$) un vector aleatorio _discreto_. Definimos la *función de probabilidad marginal* de $cal(X)$ y $cal(Y)$ de la siguiente forma.

  $
  f_cal(X)(x) = P(cal(X) = x) = sum_j f(x,j) = sum_j P(cal(X) = x, space.med cal(Y) = j)
  $
  $
  f_cal(Y)(y) = P(cal(Y) = y) = sum_i f(i,y) = sum_i P(cal(X) = i, space.med cal(Y) = y)
  $

  Donde $j$ son todos los valores que toma $cal(Y)$, mientras que $i$ son todos los valores que toma $cal(X)$.
]

#definition("Distribuciones marginales (caso continuo)")[
  Sea ($cal(X), cal(Y)$) un vector aleatorio _continuo_. Definimos la *función de probabilidad marginal* de $cal(X)$ y $cal(Y)$ de la siguiente forma.
  $
  f_cal(X)(x) = integral_(- infinity)^infinity f_(cal(X), cal(Y))(x,y) dif y
  $
  $
  f_cal(Y)(y) = integral_(- infinity)^infinity f_(cal(X), cal(Y))(x,y) dif x
  $
]

#example()[
  Consideremos el mismo experimento del ejemplo anterior (lanzar 3 monedas justas) y las mismas variables aleatorias.

  Las probabilidades marginales se calculan como sigue.
  $
  f_cal(X)(0) &= sum_(i=0)^2 f_cal(X)(0,i) 
               = sum_(i=0)^2 P(cal(X) = 0, space.med cal(Y) = i)\
              &= P(cal(X) = 0, space.med cal(Y) = 0) + P(cal(X) = 0, space.med cal(Y) = 1) + P(cal(X) = 0, space.med cal(Y) = 2)\
              &= 1/8 + 1/8 + 0 = 1/4
  $
  El resultado anterior nos dice que la probabilidad de obtener 0 soles en los últimos dos lanzamientos es de $1/4$.

  Usando el mismo método se obtiene lo siguiente.
  $
  P(cal(X) = 0) = P(cal(X) = 0, space.med cal(Y) = 0) + P(cal(X) = 0, space.med cal(Y) = 1) + P(cal(X) = 0, space.med cal(Y) = 2) = 1/8 + 1/8 + 0 = 1/4
  $
  $
  P(cal(X) = 1) = P(cal(X) = 1, space.med cal(Y) = 0) + P(cal(X) = 1, space.med cal(Y) = 1) + P(cal(X) = 1, space.med cal(Y) = 2) = 1/8 + 1/4 + 1/8 = 1/2
  $
  $
  P(cal(X) = 2) = P(cal(X) = 2, space.med cal(Y) = 0) + P(cal(X) = 2, space.med cal(Y) = 1) + P(cal(X) = 2, space.med cal(Y) = 2) = 0 + 1/8 + 1/8 = 1/4
  $
  El caso para la variables aleatorias $cal(Y)$ es análogo.
]

Así, podemos afirmar que, dadas dos variables aleatorias independientes $cal(X)$ y $cal(Y)$, se tiene que
- Caso discreto: $P(cal(X) = x, space.med cal(Y) = y) = P(cal(X) = x)P(cal(Y) = y)$
- Caso continuo: $f_(cal(X), cal(Y))(x,y) = f_cal(X)(x) f_cal(Y)(y)$
