#import "../lib.typ":*

= 16 de Octubre 2025 

== Algoritmo de Edmonds/Dlossom (Emparejamiento máximo)

//TODO: foto

+ Tomamos un emparejamiento inicial (dado o no) $M_0$, si no está dado, $M_0 = emptyset$
  - $M_0 = emptyset arrow.double$ todos los vértices están libres.
+ A partir de un vértice libre consideramos una arista que forme parte de un refinamiento de $M_0$ para obtener $M_1$
  - Considero el vértice 5 como la "raíz". Tomamos la arista $(5,6) in.not M_0$ y obtenemos $M_1 = {(5,6)}$. Tenemos los vértices 1,2,3,4,7 libres. 
  - A partir  del vértice 7, considero la arista $(7,4) in.not M_1$, y obtenemos $M_2 = {(5,6),(7,4)}$. Tenemos los vértices 1,2,3 libres.
  - Definimos un pseudo "vértice" $B = {4,6,7}$
  - A partir  del vértice 3, considero la arista $(3,2) in.not M_2$, y obtenemos $M* = {(3,2)} union {B}$. Tenemos los vértices 1,2,3 libres.
  - Abriendo $B$, obtenemos el emparejamiento $M = {(5,6),(7,4),(3,2)}$

//TODO: foto
