#import "../../lib.typ":*

== Variables Aleatorias Absolutamente Continuas
=== Definición

#definition("Variables Aleatorias Absolutamente Continuas")[
  Sea $cal(X)$ una _variable aleatoria continua_ con función de distribución $F_cal(X)$, se le llama *absolutamente continua* _si existe_ una función $f$ tal que
  $
  F_cal(X)(a) = integral_(- infinity)^a f_cal(X)(x) dif x = P(cal(X) <= a)
  $
]

=== Función de Densidad y sus Propiedades

A la función $f_cal(X)$ se le conoce como *función de densidad* de la variable aleatoria $cal(X)$, y cumple las siguientes propiedades.

- $ f_cal(X)(x) >= 0, space.med forall x in RR $
- $ integral_(- infinity)^infinity f_cal(X)(x) dif x = 1 $

#note()[
  Si la función de densidad $f_cal(X)$ es continua, el _Teorema Fundamental del Cálculo_ nos dice que
  $
  (dif)/(dif x) F_cal(X)(x) = f_cal(X)(x)
  $
]
