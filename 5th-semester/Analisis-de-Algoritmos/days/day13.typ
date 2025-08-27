#import "../lib.typ":*
#show: codly-init.with()

= 27 de Agosto de 2025

== Divide y Vencerás

+ Construcción de las subinstancias
+ Resuelve esas subinstancias
+ Combina las soluciones para resolver la instancia original

== Problema de Ordenamiento

=== Entrada y Salida

*Entrada:* Arreglo $I$ de $n$ elementos comparables entre sí.

//TODO:
// #set par(first-line-indent: 0em,)


*Salida:* Arreglo $O$ de $n$ elementos con las siguientes propiedades:
  + Los elementos de $O$ son los mismos que los de $I$
  + En la salida $O$, para cada par de indices $i!=j$, si $i < j arrow.double O[i] <= O[j]$

=== Ejemplos de Instancia

$
[3,1,5] arrow.long [1,3,5];
space.quad space.quad
[2,6,7] arrow.long [2,6,7]
$

#important()[
  Estabilidad: Es importante mantener el orden relativo de los elementos.
]

=== Algoritmo Trivial

En cierta parte, este algoritmo es similar a _Bubble Sort_, además de ser recursivo.

```python
def f(list):
    if len(list) == 0:
        return []
    max_elem = max(list)
    list.remove(max_elem)
    return f(list) + [max_elem]
```

