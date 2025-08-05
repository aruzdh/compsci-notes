#import "../../lib.typ":*

== Función de Probabilidad
=== Definición

#definition("Función de Probabilidad o Función de Probabilidad de Masa")[
  Sea $cal(X)$ una _variable aleatoria discreta_. Definimos su *función de probabilidad* como sigue a continuación.
  $
  f_cal(X) (a) = P(cal(X) = a),
  $
  con $a$ en la imagen de $cal(X)$
]

#note()[
  Notemos que si $cal(X)$ es una variable aleatoria _continua_, su función de distribución es continua, y por la tanto 
  $
  P(cal(X) = a) = F(a) - F(a^-) = F(a) - F(a) = 0
  $
  para cualquier $a in RR$. Es decir, no tiene utilidad en el caso continuo.
]

#example()[
  Consideremos el ejemplo anterior donde lanzamos 3 monedas justas. Dada la $cal(Y)$ definida anteriormente, se tiene lo siguiente.
  - $f_cal(Y) (a) = P(cal(Y) = a)$
  - $f_cal(Y) (0) = P(cal(Y) = 0) = 1 slash 8$
  - $f_cal(Y) (1) = P(cal(Y) = 1) = 3 slash 8$
  - $f_cal(Y) (2) = P(cal(Y) = 2) = 3 slash 8$
  - $f_cal(Y) (3) = P(cal(Y) = 3) = 3 slash 8$
  $$
]

#note()[
  Notese que esta función *no es acumulativa*.
]

=== Propiedades

Las siguientes son propiedades de las funciones de probabilidad.
- $ f_cal(X)(k) >= 0 $
- $ sum_k f_cal(X)(k) = 1, $ donde _k_ representa todos los valores que toma la variable aleatoria.

#example()[
  Sea $f_cal(X) (0) = 1/2 >= 0$ y $f_cal(X) (1) = 1/2 >= 0$. Se tiene que 
  $
  sum_(i = 0)^1 f_cal(X)(i) = P(cal(X) = 0) + P(cal(X) = 1) = 1/2 + 1/2 = 1
  $
  Por tanto cumple las propiedades listadas anteriormente.
]
