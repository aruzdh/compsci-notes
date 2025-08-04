#import "../../lib.typ": *

== Operaciones de Conjuntos en Probabilidad

Dados $A, B, C subset.eq Omega$ eventos.
- Unión

  Dado $A union B$. Decimos que el evento $A$ _ocurrió_ *ó* el evento $B$ _ocurrió_.
- Intersección

  Dado $A inter B$. Decimos que el evento $A$ _ocurrió_ *y* el evento $B$ _ocurrió_ (*ambos eventos ocurrieron*).
- Complemento

  Dado $B^c$. Decimos que $B$ *no* _ocurrió_.
- Diferencia

  Dado $C - B$. Decimos que $C$ _ocurrió_ pero *no* ocurrió $B$.

#example[
  Considerando el ejemplo anterior, se tiene lo siguiente.
    - $A - B = "En ambos dados se obtuvo el mismo número pero no 3" = {(1,1), (2,2), (4,4), (5,5), (6,6)}$
    - $B^c = "No se obtuvo ningún 3"$
    - $A union C = "En ambos dados se obtuvo el mismo número y la suma es 5" = emptyset$
]

