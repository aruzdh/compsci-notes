#import "../../lib.typ":*

== Función de Distribución
=== Definición

#definition("Función de Distribución")[
  Dada $cal(X)$ una variable aleatoria _discreta o continua_, su *función de distribución* se define como
  $
  F_(cal(X))(a) = P(cal(X) <= a) = P({w in Omega bar.v cal(X)(w) <= a}) space.quad "con" space.quad a in RR
  $
]

#note()[
  Cuando se tiene una sola variable aleatoria o cuando es evidente sobre que variable aleatoria se habla, es normal omitir el subíndice de la función $F$.
]

#note()[
  Notemos que $F : RR arrow.long [0,1]$
]

#example()[
  Consideremos el ejemplo anterior donde lanzamos 3 monedas justas. Dada $cal(Y)$ definida anteriormente, se tiene lo siguiente.
  - $F_cal(Y) (x) = P(cal(Y) <= x)$
  - $F_cal(Y) (-1) = P( cal(Y) <= -1) = 0$
  - $F_cal(Y) (0) = P(cal(Y) <= 0) = 1/8$
  - $F_cal(Y) (0.3) = P(cal(Y) <= 0.3) = 1/8$
  - $F_cal(Y) (2.1) = P(cal(Y) <= 2.1) = 1/8 + 3/8 + 3/8 = 7\8$
  - $F_cal(Y) (87080685230) = P(cal(Y) <= 87080685230) = 1$
]

#note()[
  Notese que esta función es *acumulativa*.
]

=== Propiedades 

Las siguientes son propiedades de las funciones de distribución.

-
$ "Es una función no-decreciente." $

#proof()[
  Sea $x_1 <= x_2$. Queremos probar que $F_cal(X)(x_1) <= F_cal(X)(x_2)$.

  Tenemos que $F_cal(X)(x_1) = P(cal(X) <= x_1)$ y $F_cal(X)(x_2) = P(cal(X) <= x_2)$. 

  Notemos que si $w_0 in {w in Omega bar.v cal(X)(w) <= x_1}$, entonces $cal(X)(w_0) <= overbrace(x_1 <= x_2, "hipótesis")$.

  Así, se tiene que $w_0 in {w in Omega bar.v cal(X)(w) <= x_2}$, implicando que ${cal(X)(w) <= x_1} subset.eq {cal(X)(w) <= x_2}$, y por tanto, por los axiomas de probabilidad, se concluye
  $
  F_cal(X)(x_1) = P(cal(X) <= x_1) <= P(cal(X) <= x_2) = F_cal(X)(x_2)
  $
  $
  therefore F " es no-decreciente"
  $
]

- 
$
lim_(x arrow infinity) F_cal(X)(x) = 1
$

#proof()[
  Sea ${a_n}$ una sucesión de números reales tales que $a_n <= a_(n+1)$ y $lim_(n arrow infinity) a_n = infinity$

  Tenemos que
  $
  lim_(x arrow infinity) F_cal(X)(x) = lim_(n arrow infinity) F_cal(X)(a_n) = lim_(n arrow infinity) P(cal(X) <= a_n)
  $
  Observemos que ${cal(X) <= a_n} subset.eq {cal(X) <= a_(n+1)}$ es una sucesión de conjuntos monótona creciente. Entonces
  $
  lim_(n arrow infinity) P(cal(X) <= a_n) = P(lim_(n arrow infinity){cal(X) <= a_n}) = P(union.big_(n=1)^infinity {cal(X) <= a_n}) = P(Omega) = 1
  $
  $
  therefore lim_(n arrow infinity) F_cal(X)(x) = 1
  $
]

-
$ lim_(x arrow -infinity} F_cal(X)(x) = 0 $
#proof()[ Ejercicio $qed$]
-
$ "Es una función continua por la derecha." $
#proof()[ Ejercicio $qed$]
-
$ P(cal(X) < a) = F_cal(X)(a^-) " limite por la izquierda" $
#proof()[ Ejercicio $qed$]
- 
$ P(cal(X) = a) = P( cal(X) <= a) - P(cal(X) < a) = F_cal(X)(a) - F_cal(X)(a^-) $
#proof()[ Ejercicio $qed$]
-
$ P(a < cal(X) <= b) = P(cal(X) <= b) - P(cal(X) <= a) = F_cal(X)(b) - F_cal(X)(a) $
#proof()[ Ejercicio $qed$]
-
$ P(a <= cal(X) <= b) = P(cal(X) <= b) - P(cal(X) < a) = F_cal(X)(b) - F_cal(X)(a^-) $
#proof()[ Ejercicio $qed$]
-
$ P(a < cal(X) < b) = P(cal(X) < b) - P(cal(X) <= a) = F_cal(X)(b^-) - F_cal(X)(a) $
#proof()[ Ejercicio $qed$]
- 
$ P(a <= cal(X) < b) = P(cal(X) < b) - P(cal(X) < a) = F_cal(X)(b^-) - F_cal(X)(a^-) $
#proof()[ Ejercicio $qed$]
