#import "../../lib.typ":*

== Independencia

#definition("Independencia")[
  Sean $A, B in cal(F)$. Decimos que $A$ y $B$ son *independientes* si
  $
  P(A bar.v B) = P(A) space.quad "ó" space.quad P(B bar.v A) = P(B)
  $
]

#note()[
  De la definición anterior se tiene que 
  $
  P(A inter B) = P(A) space.med P(B)
  $
  por definicón de probabilidad condicional.
]

#note()[
  Dado $P(A bar.v B) = P(A)$, se puede decir que *la occurrencia de $B$ no afecta en la probabilidad de $A$*.
]

#important()[
  La independencia *no* implica que $A inter B = emptyset$
]
