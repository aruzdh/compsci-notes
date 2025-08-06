#import "../../lib.typ":*

== Probabilidad Total
=== Partición del Espacio Muestral

#definition("Partición del Espacio Muestral")[
  Sean $B_1, B_2, dots, B_n in cal(F)$. Decimos que ${B_i}_i$ es una *partición de $Omega$* si se satisface lo siguiente.
  - $forall i,j; space.med B_i inter B_j = emptyset$
  - $Omega = union.big_i B_i$
]

=== Probabilidad Total

#definition("Probabilidad Total")[
  Si ${B_i}_i$ es una partición de $Omega$, y $A in cal(F)$ un evento, entonces
  $
  P(A) = sum_(i = 1)^n P(A inter B_i) = sum_(i = 1)^n P(A bar.v B_i) space.med P(B_i)
  $
]

#note()[
  A lo anterior también se le llama *Ley de probabilidad total*.
]

#note()[
  De la definicón anterior se tiene que _$A$ está distribuido sobre diferentes partes *disjuntas* de la partición_
]

#example()[
  Se tienen dos cajas con pelotas. La caja _I_ tiene 2 pelotas azules y 3 rojas. La caja _II_ tiene 8 pelotas azules y 2 rojas. Se lanza una moneda justa. Si obtenemos _sol_ sacamos una pelota de la caja _I_, y si se obtiene _águila_ se saca de la caja _II_. ¿ Cuál es la probabilidad de sacar una pelota roja?

  Sean _A = "se saca una pelota roja"_, _$B_1$ = "se saca la pelota de la caja I"_, _$B_2$= "se saca la pelota de la caja II"_ eventos.  Entonces
  $
  P(A) &= P(A inter B_1) + P(A inter B_2)
       = P(A bar.v B_1) space.med P(B_1) + P(A bar.v B_2) space.med P(B_2)
       = 3/5 dot.c 1/2 + 2/10 dot.c 1/2 = 3/10 + 2/20 = 2/5
  $
]
