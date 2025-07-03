#import "../../lib.typ": *

== Permutaciones

Las permutaciones son las distintas formas de ordenar un conjunto de objetos. Existen distintos tipos de ordenamientos dependiendo de las condiciones dadas o requeridas.

=== Permutaciones lineales

No se establece ninguna restricción sobre la manera en que los objetos deben ser ordenados, por lo que buscamos *todas* los posibilidades. Para lograrlo usamos el factorial de $n$, donde $n$ es el total de objetos a ordenar.

$ n! = n dot (n - 1) dot (n - 2) dot dots.c dot 2 dot 1 $

Existen situaciones donde debemos ordenar $n$ objetos en $r$ distintas posiciones, con $r < n$. Para estos casos usamos la siguiente formula.
$ (n!)/((n-r)!) $

#note-box[
  Si $n = r$, $(n-r)! = 0! = 1$. Por tanto se obtiene la primera formula.
]

#example[
  ¿De cuántas maneras se pueden ordenar las letras _a, b, c_?
  #parbreak()
  Considemos 3 etapas. En la primera, tenemos 3 posibilidades (todas las  letras disponibles); en la segunda tenemos solo 2 posibilidades; y en la última solo 1 posibilidad. Es decir, $3 dot 2 dot 1 = 3! = 6$
]

#example[
  Si un equipo de baseball tiene 9 jugadores, ¿Cuántos alineamientos son posible?
  #parbreak()
  Usando el mismo procedimiento que en el ejemplo pasado tenemos $9 dot 8 dot dots 2 dot 1 = 9!$ alineamientos.
]

#example[
  En una clase de probabilidad hay 6 mujeres y 4 hombres. Se les asigma un examen y son rakeados sugún su desempeño en el examen. Supongamos que no hay 2 personas con la misma calificación. 
  - ¿Cuántos rakings son posible?

    Dado que hay $6 + 4 = 10$ personas en total, se tienen $10!$ rakings.
  - ¿Cuántos rankings son posibles si los hombres son rankeados entre ellos y lo mismo sucede para las mujeres?

    Para los hombres hay $6!$ rakings, y para las mujeres $4!$. Por tanto, hay $6! dot 4!$ rakings totales.
]

#example[
  De entre los 24 miembros de un club se sacan 4 nombres para los puestos de presidente, vicepresidente, tesorero, y secretario. ¿De cuántas maneras diferentes se puede hacer esto?
  #parbreak()
  Se tienen $24 dot 23 dot 22 dot 21 = (24!)/(20!)$
]

#note-box[
  En este último ejemplo se usa la formula donde $n != r$.
]

#note-box[
  Sean _A, B, C_ elementos. Los ordenamientos _ABC_ y _CBA_ son distintos y ambos deben considerse.
  Esta observación toma más sentido en el subsección de _combinaciones_.
]

=== Permutaciones Circulares

A diferencia de las permutaciones lineales (donde hay un "principio" y un "fin"), en las permutaciones circulares los elementos se disponen alrededor de un círculo. La característica clave que las distingue es que las rotaciones de un mismo arreglo se consideran idénticas.

Para calcular el número de permutaciones circulares de n objetos distintos, se utiliza la siguiente fórmula
$ (n - 1)! $

#note-box[
  La lógica detrás de esta fórmula es que, para evitar contar los arreglos rotados como distintos, se "fija" la posición de uno de los elementos. Una vez que un elemento está fijo, los n−1 elementos restantes se pueden ordenar de (n−1)! maneras diferentes, como si estuvieran en una línea recta.
]

=== Permutaciones Indistinguibles
En este caso, deseamos contar el número de ordenamientos cuando existen elementos repetidos indistinguibles.\
Si tenemos _n_ objetos en total, y de los _n_ objetos, $n_1, n_2, dots, n_r$ son indistinguibles con $n_1 + n_2 + dots.c + n_r <= n$, entonces las permutaciones son
$ (n!)/(n_1! n_2! dots n_r!) $

#example[
  Sea _PEPPER_ una palabra. ¿De cuántas formas se puede ordenar las letras de la palabra?
  #parbreak()
  Dada la información que precede al ejemplo, se tiene que
  $ (6!)/(3! dot 2! dot 1!) = (6 dot 5 dot 4)/2 = 60 $ es el número de ordenamientos, donde $3!$ representa las 3 _P's_, $2!$ las 2 _E's_, y $1!$ la _R_.

  Notemos que los factores $1!$ carecen de importancia ya que no aportan nada.
]

