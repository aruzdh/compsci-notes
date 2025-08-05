#import "../../lib.typ":*

== Teorema de Bayes
=== Motivación

Siguiendo con el ejemplo anterior. Supongamos que durante el experimento se sacó una pelota azul. ¿Cuál es la probabilidad de que la pelota se haya sacado de la caja _II_? Se tiene que
$
P(B_2 bar.v A^c) = (B_2 inter A^c)/(P(A^c)) = (P(A^c bar.v B_2) space.med P(B_2))/(sum_(i=1)^2 P(A^c bar.v B_i) space.med P(B_i))
$

Donde

$
P(A^c) = P(A^c inter B_i) + P(A^c inter B_2) = P(A^c bar.v B_1) space.med P(B_1) + P(A^c bar.v B_2) space.med P(B_2)
$

=== Definición

#definition("Teorema de Bayes")[
  Sea ${B_i}_i$ es una partición de $Omega$ y $A in cal(F)$ un evento. Entonces
  $
  P(B_j bar.v A) = (P(B_j inter A))/(P(A)) = (P(A bar.v B_j) space.med P(B_j))/(sum_(i=1)^n P(A bar.v B_i) space.med P(B_i))
  $
]

#note()[
  En la definicón anterior se observa que $P(A)$ es la probabilidad total.
]

#example()[
  Una prueba de sagre es 95\% efectiva en detectar cierta enfermedad cuando esta enfermedad está presente. Sin embargo, la prueba también puede dar falsos positivos para el 1\% de quienes se hacen la prueba y están sanos. Si el 0.5\% de la población tiene la enfermedad, ¿Cuál es la probabilidad de que una persona que dió positivo a la prueba tenga esta enfermedad?

  Sea _A = "la persona dió positivo"_, _B = "la persona tiene la enfermedad"_ eventos.

  Además, $Omega = B union B^c$ donde $P(B) = 0.5\% = 0.005$. $P(A bar.v B) = 0.95$. $P(A bar.v B^c) = 0.1$.

  Entonces
  $
  P(B bar.v A) &= (P(B inter A))/(P(A)) = (P(A bar.v B) space.med P(B))/(P(A))\
               &= (P(A bar.v B) space.med P(B))/(P(A bar.v B) space.med P(B) + P(A bar.v B^c) space.med P(B^c))\
               &= (0.95 dot.c 0.005)/(0.95 dot.c (0.0005) + 0.1 dot.c (1-0.005)) = 19/417
  $
]

#example()[
  Tengo una bolsa con 3 dados, donde uno es de 4 caras, uno de 6 caras, y una de 12 caras. Tomo aleatoriamente un de ellos y lo lanzo. Dado que se obtuvo un 4, ¿Cuál es la probabilidad de que haya lanzado el dado de 6 caras?

  Sean _A = "lanzar el dado de 4 caras"_, _B = "lanzar el dado de 6 caras"_, _C = "lanzar el dado de 12 caras."_, _D = "obtener un 4"_ eventos.

  De lo anterior tenemos que $P(A) = P(B) = P(C) = 1/3$. $P(D bar.v A) = 1/4 space.med P(D bar.v B) = 1/6 space.med P(D bar.v C) = 1/12$

  Entonces
  $
  P(B bar.v D) &= (P(B inter D))/(P(D)) = (P(D bar.v B) space.med P(B))/(P(D))\
               &= (P(D bar.v B) space.med P(B))/(P(D bar.v A) space.med P(A) + P(D bar.v B) space.med P(B) + P(D bar.v C) space.med P(D))\
               &= (1 slash 6)/(1 slash 6 + 1 slash 4 + 1 slash 12) = (1 slash 6)/(1 slash 2) = 1/3
  $
]

#example()[
  Una bolsa contiene 4 pelotas blancas y 2 negras. Otra bolsa contiene 3 blancas y 5 negras. Si se lanza un dado y si sale _1, 2, 3 ó 4_ se toma la pelota de la bolsa 1, de lo contrario se toma de la bolsa 2. Encuentra la probabilidad de que la pelota extraida sea negra.

  Sean _A = "la pelota es negra"_, _B = "se extrae de I"_, _C = "se extrae de II"_ eventos.
  Con lo anterior tenemos que $P(B) = 4/6 space.med P(C) = 2/6$

  Entonces
  $
  P(A) &= P(A bar.v B) space.med P(B) + P(A bar.v C) space.med P(C)\
       &= 2/6 dot.c 4/7 + 5/8 dot.c 2/6 + 2/6 dot.c (4/6 + 5/8) = 62/48 dot.c 1/3 = 63/144 = 31/72
  $ 
]
