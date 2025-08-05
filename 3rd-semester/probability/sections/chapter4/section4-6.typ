#import "../../lib.typ":*

== Ejercicios

#exercise()[
  3 pelotas se eligen aleatoriamente de una caja donde 5 son azules, 3 son rojas, y 3 son amarillas. Supongamos que ganamos \$1 por cada pelota amarilla que seleccionamos y perdemos \$1 por cada pelota roja. Sea $cal(X) =$ "Dinero obtenido en este experimento". Calcula la función de probabilidad de $cal(X)$.
]

#exercise()[
  Demuestra que $F_cal(X)(x^-) = P(cal(X) < x) space.med forall x in RR$, donde $F$ es la función de distribución.
]

#exercise()[
  La función de distribución de la variable aleatoria $cal(X)$ es la siguientes.
  $
  F_cal(X)(x) = 
  cases(
    0  & "Si" x <0,
    x slash 4  & "si" 0 <= x < 1,
    1 slash 2 + (x-1)/4  & "si" 1 <= x < 2,
    11 slash 12  & "si" 2 <= x < 3,
    1 & "si" 3 <= x
  )
  $
  Grafica esta función y encuentra $ P(1/2 < cal(X) < 3/2)$

  $$
]

#exercise()[
  Supongamos que se lanzan dos dados de 6 caras y que la variable aleatoria $cal(X)$ representa la suma de los números obtenidos. encuentra la función de distribución de la variable aleatoria $cal(X)$ y graficala.
]

#exercise()[
  Determina la $c$ tal que la función pueda servir como la distribución de probabilidad de una variable aleatoria con el intervalo dado.
  - $f(x) = c x, space.med  x = 1, dots 5$
  - $f(x) = c binom(5,x), space.med x = 0,1, dots, 5$
  - $f(x) = c x^2, space.med x = 1, 2, dots, k$
]

#exercise()[
  La función de distribución de la variable aleatoria $cal(X)$ es la siguientes.
  $
  F_cal(X) = cases(
    0 & "si" x < -2,
    (x+2)/2 & "si" -2 <= x < -1,
    1 slash 2 & "si" -1 <= x < 1,
    x slash 2 & "si" 1 <= x < 2,
    1 & "si" 2 <= x
  )
  $
  Encuentra $P(-2 < cal(X) < 2)$
]

#exercise()[
  La compañía de seguros Acme tiene dos tipos de clientes: cuidadosos(as) e imprudentes. Un cliente cuidadoso(a) tiene un accidente durante el año con probabilidad 0.01. Un(a) cliente imprudente tiene un accidente durante el año con probabilidad 0.04. El 80\% de los (as) clientes son cuidadosos(as) y el 20\% de los(as) clientes son imprudentes. Supongamos que un(a) cliente elegido(a) al azar tiene un accidente este año. ¿Cuál es la probabilidad de que este(a) cliente(a) sea uno(a) de los(as) clientes cuidadosos(as)?
]

#exercise()[
  Para cualesquiera A, $B in cal(F)$ demuestra que si $P(B bar.v A) > P(B)$ entonces $P(B^c bar.v A) < P(B^c)$.
]

#exercise()[
  Demostrar las propiedades restantes de las funciones de distribución.
]
