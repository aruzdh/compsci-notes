#import "../../lib.typ": *

== Eventos

#definition("Eventos")[
  Se le denomina *evento* a _cualquier subconjunto_ de $Omega$.
]

#note[
  Los _eventos_ suelen denotarse con letras mayúsculas.
]

#example[
  Supongamos que se lanza un par de dados de 6 caras. Encuentra los elementos del evento:

    - _A = "En ambos dados se obtuvo el mismo número"_
    - _B = "Se obtuvo al menos un 3"_
    - _C = "La suma de los números obtenidos es 5"_

  Dado lo anterior, se tienen los siguientes eventos con sus respectivos elementos.
    - $A = \{(1,1), (2,2), (3,3), (4,4), (5,5), (6,6)\}$
    - $B = \{(1,3), (2,3), (3,3), (4,3), (5,3), (6,3)\}$
    - $C = \{(1, 4), (2, 3), (3, 2), (4, 1)\}$
]

Decimos que un _evento ocurrió_ si al realizar el experimento aleatorio, el elemento $w in Omega$ ocurre y $w in A$. Entonces decimos que _A ocurrió_.

#note[
  $Omega$ es el evento seguro (dado que todo elemento pertecene a $Omega$).
]

