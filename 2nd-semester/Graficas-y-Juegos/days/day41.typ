#import "../lib.typ": *

= 21 de Octubre 2025 

== Caracterizar Gráficas con un $chi(G)$ (Número Cromático) Fijo

#note()[
  Donde
  $
  chi(G) = "el # minimo de colores para una gráfica"
  $

  $!=$ colores, entonces $!=$ clases de equivalencia, que son conjuntos independientes
]

- Cuando $chi(G) = 1$: El conjunto independiente es uno solo, y entonces tenemos una gráfica trivial ó vértices aislados.

- Para gráficas que son complemento de ciclos impares $C$:
  - Si $C_3$, $chi(C_3^c) = 1$
  - Si $C_5$, $chi(C_5^c) = 3$
  - Si $C_7$, $chi(C_7^c) = 4$

¿Cuántos vértices tiene el conjunto independiente de una $G = C_(2n + 1)^c$?
  - Si $C_5$, entonces tiene dos y uno.
  - Si $C_7$, entonces tiene dos y uno.

  Cada conjunto independiente tiene a lo más 2 vértices.

  Entonces
  $
  abs(V(C_(2n+1)^c)) = 2n+1
  $
  , luego, el número de conjuntos independientes es mayor o igual a $n+1$, y también el número minimo de estos conjuntos es menor o igual a $n + 1$, que es justamente el número cromático, por lo cual
  $
  chi(C^c_(2n+1)) <= n + 1
  $

  Veremos que no es posible encontrar una 3-coloración para $C_7$. Si consideramos $C_5^c$ con su minima coloración, y podemos extender la gráfica a $C_7^c$, mostrando que no puede existir una 3-coloración, sino una 4-coloración

  #exercise()[
    Demuestre por inducción que
    $chi(C^c_(2n + 1)) = n + 1$
  ]

