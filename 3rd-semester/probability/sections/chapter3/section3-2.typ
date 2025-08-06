#import "../../lib.typ":*

== Proposiciones

Dados $A, B$ eventos.
- $P(A^c) = 1 - P(A)$

#proof()[
  Sabemos que $Omega = A union A^c$ y $A inter A^c = emptyset$.

  Usando los _axiomas de probabilidad_ se tiene que $P(Omega) = P(A) + P(A^c)$.

  De lo anterior se sigue que $1 = P(A) + P(A^c)$
  $ therefore P(A^c) = 1 - P(A) $
]

- Si $A subset.eq B$, entonces $P(A) <= P(B)$

#proof()[
  Notemos que $B = (B - A) union A$.

  Por los _axiomas_ se tiene que $P(B) = P(B-A) + P(A)$ con $P(B - A) >= 0$.
  $ therefore P(A) <= P(B) $
]

- $P(A union B) = P(A) + P(B) - P(A inter B)$

#proof()[
  Se tiene que $A union B = (A - B) union (A inter B) union (B - A)$ donde cada uniendo es ajeno.

  Entonces
  $
  P(A union B) &= P((A - B) union (A inter B) union (B - A))\
          &= P(A-B) + P(A inter B) + P(B-A)\
          &= P(A) + P(B-A)\
          &= P(A)  + P(B) - P(B inter A)\
  $
]

#example()[
  Se sacan 3 pelotas de una urna que contiene 5 pelotas azules, 4 verdes, y 3 rojas. ¿Cuál es la probabilidad de no obtener ni verdes ni rojas?

  Se tienen 12 pelotas en total. Sea _A = "obtener 3 pelotas azules"_ un evento.
  Entonces 
  $
  P(A) = abs(A)/abs(Omega) = binom(5,3)/binom(12,3)
       = ((5!)/(3! 2!)) / ((12!)/(3!9!)) = ((5 dot.c 4 dot.c 3)/(3! dot.c 2 dot.c 1))((12 dot.c 11 dot.c 10 dot.c 9!)/(3 dot.c 2 dot.c 1 dot.c 9!))
       = (20 slash 2)/(1320 slash 6) = 10/220 = 1/22
  $
]

#example()[
  Tres pelotas son tomadas aleatoriamente de una caja que contiene 6 pelotas blancas y 5 negras. ¿Cuál es la probabilidad de que una de las pelotas sea blanca y las otras negras?

  Se tienen 11 pelotas en total. Sean _A = "sacar 1 pelota blanca"_ y _B = "sacar 2 pelotas negras"_ eventos.

  Entonces 
  $
  P(A) = (abs(A) abs(B))/abs(Omega) = (binom(6,1) binom(5,2))/binom(11,3) = ((6!)/(6!) (5!)/(2!3!))/((11!)/(3!8!)) = 60/165 = 4/11
  $
]
