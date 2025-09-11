#import "../lib.typ":*

= 11 de Septiembre 2025

== Algoritmo de Fleury (encontrar un paseo Euleriano)

*Condiciones:* La gráfica $G$ debe ser conexa, $forall v_i in V(G), "d"(v_i) = 2k$ (o dos vértices de grado impar), y "no debe haber puentes".

//TODO: gráfica

+ Elegimos un vértice de inicio
  - Cualquiera de los vértices *sí* todos son de grado par
  - Si hay vértices de grado impar comienzo por uno de ellos.
    - $E = {e, dots.}$
+ Del vértice elegido atravesamos por una arista que no sea puente:
    - $E = {e,d, dots.}$
+ Repetir el paso dos hasta recorrer todas los aristas:
    - $E = {e,d,b, dots.}$
    - $E = {e,d,b,c dots.}$
    - $E = {e,d,b,c,f dots.}$
    - $E = {e,d,b,c,f,a dots.}$
    - $E = {e,d,b,c,f,a,b dots.}$
    - $E = {e,d,b,c,f,a,b,f dots.}$
    - $E = {e,d,b,c,f,a,b,f,d dots.}$
    - $E = {e,d,b,c,f,a,b,f,d,c dots.}$
    - $E = {e,d,b,c,f,a,b,f,d,c,a dots.}$
    - $E = {e,d,b,c,f,a,b,f,d,c,a,e}$


//TODO: gráfica

$E = {a,c,e,b,d,e,f}$

//TODO: gráfica
// $E = {a, b, c,d,b,g,f,e,g,h,d,a}$
$E = {a, b, c,d,b,g,f,e,h,g,e,d,a}$

== Algoritmo de Heirholzer


//TODO: gráfica

+ Podemos comenzar desde cualquier vértice.
+ Cruzamos al siguiente vértice ocupando una arista que *no* haya sido usada anteriormente.
+ Repetir el paso 2.

$E = {b,a,e,b,c,d,e,f,a,i,j,k,i,h,g,a}$

Iniciando en $h$:

$E = {h,dots, a}$

#note()[
  Cuando tenemos un ciclo que no nos permite continuar, cambiamos el inicio del paseo al vértice "problemático"
]

==

Con las fichas de domino (sin contar las _dobles_) consideramos la gráfica $G$ tal que los $V(G) = {0,1,dots, 6}$, $A(G) = {"relación que forma una ficha"}$
//TODO: gráfica

$K_7$ es Euleriana. Encontrar $E$ un paseo Euleriano
