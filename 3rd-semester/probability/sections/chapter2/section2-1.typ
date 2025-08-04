#import "../../lib.typ":*

== Principios de Conteo
Si tenemos _m_ objetos de tipo $A$, y _n_ objetos de tipo $B$ ($A$ y $B$ tipos arbitrarios y distintos), entonces tenemos $m + n$ objetos en total.

Si tenemos _m_ objetos diferentes de tipo $A$, y _n_ objetos diferentes de tipo $B$ ($A$ y $B$ tipos arbitrarios y distintos), entonces tenemos $m n$ distintas maneras de tener un objeto de tipo $A$ y uno de tipo $B$.

#example[
  Supongamos que tenemos 4 dados. ¿De cuantas maneras se pueden obtener _4_ números diferentes al lanzar los 4 dados?

  Notemos que en el primer lanzamiento tenemos 6 números diferentes ($1,2, dots, 6$), en el segundo tendremos 5 opciones, y así sucesivamente.
  Por tanto, tenemos $6 dot 5 dot 4 dot 3 = 360$ diferentes formas.
]

Dado un problema como el anterior, podemos analizarlo de la siguiente manera.

Supongamos que 2 etapas de un experimento se van a desarrollar. Entonces, si la etapa 1 puede resultar en cualquiera de $m$ posibilidades, y para cada salida de la etapa 1 hay $n$ posibles salidas de la etapa 2, entonces hay $m n$ posibles salidas de las dos etapas.

#example[
  Una familia se acaba de cambiar a una ciudad nueva y requiere los servicios tanto de un obstetra como de un pediatra. Existen dos clínicas médicas fácilmente accesibles y cada una tiene 2 obstetras y 3 pediatras. La familia obtendrá los máximos beneficios del seguro de salud si se une a una clínica y selecciona a ambos especialistas de dicha clínica. ¿De cuántas maneras se puede hacer lo anterior?

  El experimento consta de seleccionar 1 obstetra y 1 pediatra de una clínica. Entonces podemos considerar las siguientes etapas del experimento.
  - Elegir una clínica: 2 posibilidades.
  - Elegir el obstetra: 2 posibilidades.
  - Elegir el pediatra 3 posibilidades.

  Por tanto, hay $2 dot 2 dot 3 = 12$ maneras.

  Ahora, si suponemos que no importa la clínica elegida, tenemos $4 dot 6$ formas.
]

#example[
  ¿Cuántas placas son posibles formar si las primeras 3 posiciones deben estar ocupadas por letras y las últimas 4 por dígitos?

  Se tienen las siguientes etapas.
  - Primera posición: 27 posibilidades.
  - Segunda posición: 27 posibilidades.
  - Tercera posición: 27 posibilidades.
  - Cuarta posición: 10 posibilidades.
  - Quinta posición: 10 posibilidades.
  - Sexta posición: 10 posibilidades.
  - Séptima posición: 10 posibilidades.

  Así, son posibles $27 dot 27 dot 27 dot 10 dot 10 dot 10 dot 10 = 27^3 dot 10^4$ placas.
]

#example[
  Se lanza un dado y una moneda. ¿Cuántos elementos tiene $Omega$?

  Tenemos 6 posibilidades para el dado, y 2 para la moneda. Por tanto $abs(Omega) = 12$
]

