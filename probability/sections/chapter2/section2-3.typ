#import "../../lib.typ": *

== Combinaciones

=== Coeficiente Binomial

Supongamos que estamos interesados en contar cuantos subconjuntos de $r$ elementos podemos tomar de $n$ objetos totales ($r <= n$). Este número es el *coeficiente binomial*.
$ binom(n, r) = (n!) / (r! (n - r)!) $

#note-box[
  Cuando hablamos de combinaciones, el orden de la selección *no* importa. Es decir, si eliges un grupo de objetos, y ese mismo grupo de objetos es reordenado, sigue siendo la misma combinación.
]

#example[
  ¿Cuántos subconjuntos de 3 letras se pueden formar de las letras _A,B,C,D,E"_?
  #parbreak()
  Podemos observar las siguientes etapas del experimento.
  + Tenemos cinco posibilidades (todas las letras disponibles).
  + Tenemos cuatro posibilidades.
  + Tenemos tres posibilidades.
  Dado que dentro de estas tres etapas existen repeticiones (el conjunto _ABC_ es igual que _BCA_), tenemos lo siguiente.
  $ (5 * 4 * 3) / (3 * 2 * 1) * (2 * 1) / (2 * 1) = (5!) / (3! * 2!) = binom(5, 3) $
]

#example[
  Si tenemos 5 mujeres y 7 hombres. ¿Cuántos comités de 2 mujeres y 3 hombres se pueden formar?
  #parbreak()
  Por un lado tenemos $binom(5, 2)$ combinaciones de 2 mujeres. Por otro, $binom(7, 3)$ de hombres.\ #parbreak() Por tanto tenemos $ binom(5, 2) * binom(7, 3) $ comités totales.
]

#example[
  ¿Cuántos subconjuntos tiene un conjunto de 5 elementos?
  #parbreak()
  Dado que buscamos *cada* posible subconjunto, tenemos
    $ sum_(i=0)^5 binom(5, i) &= binom(5, 0) + binom(5, 1) + binom(5, 2) + binom(5, 3) + binom(5, 4) + binom(5, 5)\
    &= (5!) / (0! 5!) + (5!) / (1! 4!) + (5!) / (2! 3!) + (5!) / (3! 2!) + (5!) / (4! 1!) + (5!) / (5! 0!) \
    &= 1 + 5 + 10 + 10 + 5 + 1 = 32 $
]

=== Coeficiente Multinomial

Un conjunto de $n$ distintos objetos va a ser dividido en $r$ distintos subgrupos de tamaño $n_1, n_2, dots, n_r$ donde $n_1 + n_2 + dots + n_r = n$. ¿De cuántas formas podemos hacer esto?
$ binom(n, n_1, n_2, dots, n_r) = (n!) / (n_1! n_2! dots n_r!) $

#example[
  Tenemos el conjunto de letras _A,B,C,D,E_ y queremos dos grupos con 3 y 2 elementos cada uno.
  #parbreak()
  Entonces, tenemos lo siguiente para el primer grupo.
  $ (5 * 4 * 3) / (3!) $
  Para el segundo grupo se tiene lo siguiente.
  $ (2 * 1) / (2!) $
  Por tanto, el total es 
  $ (5!) / (3! * 2!) $
]

#theorem[
  $ (x_1 + x_2 + dots + x_r)^n = sum_(n_1, dots, n_r) binom(n, n_1, dots, n_r) x_1^(n_1) x_2^(n_2) dots x_r^(n_r) $
  Es decir, sumamos sobre todos los vectores cuyas entradas son enteras no negativas tales que $n_1 + dots + n_r = n$
]
