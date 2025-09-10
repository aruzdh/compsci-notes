#import "../lib.typ":*

= 10 de Septiembre 2025

== Demostración del Teorema Anterior

#proof()[
  $arrow.l.double$
  Supongamos que hay 2 vértices de grado impar

  Caso $(u,v) in.not A(G)$: Consideramos $G' = G union {(u,v)}$, y entonces $"d"_G'(u), "d"_G'(v)$ son pares. Por tanto $G'$ tiene un paseo euleriano cerrado $T$ y $T' = T - {(u,v)}$ euleriano.

  Caso $(u,v) in A(G)$: Consideramos $G'' = G - {(u,v)}$, y entonces $"d"_G'' = "d"_G(u) - 1$, $"d"_G''(v) = "d"_G(v) - 1$ y son pares. Entonces todo vértice en $G''$ tiene grado par, y así $G''$ tiene un paseo euleriano cerrado:
  $
  T = {u = u_0, u_1, u_2, dots, u_k = u}
  $

  Sea $T'' = T union {(u,v)}$ la única diferencia de aristas entre $G$ y $G''$ es $(u,v)$, y entonces $T$ pasa por todas las aristas de $G$ a excepción de $(u,v)$. Por tanto $T''$ es un paseo euleriano pero no cerrado.
]

== Gráficas Hamiltonianas

=== Trayectoria y Ciclo Hamiltoniano

#definition("Trayectoria Hamiltoniana y Ciclo Hamiltoniano")[
  Una trayectoria (camino que no repite vértices) se llama *hamiltoniana* si recorre todos los vértices de la gráfica. Si es cerrada se llama *ciclo hamiltoniano*
]

=== Gráfica Hamiltoniana

#definition("Gráfica Hamiltonian")[
  Si $G$ una gráfica tiene un ciclo hamiltoniano, entonces $G$ es hamiltoniana.
]

#note()[
  Si $G$ tiene un ciclo hamiltoniano, no necesariamente "ocupa" todas las aristas.
]

#example()[
  Sea $K_4$ la siguiente gráfica:
  //TODO: gráfica
  //
  $C_1 = {a -> b -> d -> c -> a}$

  $C_2 = {a -> d -> c -> b -> a}$

  Entonces $K_4$ es hamiltoniana.
]

#example()[
  Sea la gráfica de Petersen:

  $T = {1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 9 -> 7 -> 10 -> 8}$ en Petersen es trayectoria hamiltoniana, pero la gráfica no es hamiltoniana.
]

#exercise()[
  Probar que las gráficas $K_n$ son Hamiltonianas.
]

=== Teorema

#theorem()[
  Si $G$ es gráfica simple, $abs(V(G)) >= 3$, y $delta >= abs(V(G)) / 2$, entonces $G$ es Hamiltoniana.
]

El regreso no se cumple:

Sea $G$ la siguiente gráfica:

//TODO: gráfica
con 
$abs(V(G)) = 6$ y $abs(V(G)) / 2 = 3 > delta = 2$

#proof()[
  Por contradicción:

  Sea $G$ la gráfica simple tal que $abs(V(G)) >= 3$ ,$delta >= abs(V(G)) / 2$, que $G$ no sea Hamiltoniana, y que $G$ sea máxima con las dos condiciones anteriores (si le agrego una arista a $G$, $G$ se vuelve Hamiltoniana)

  #remark()[
    Por tarea
    $G$ no puede ser completa ($G tilde.nequiv K_n$). Entonces existen $u,v in V(G)$ tal que $(u,v) in.not A(G)$. Como $G$ es máxima, $G' = G union {(u,v)}$ es hamiltoniana.

    En $G'$ cualquier ciclo hamiltoniano contiene la arista $(u,v)$. En otro caso, donde $C$ es hamiltoniano y $(u,v) in.not C$, entonces $C$ recorre todos los vértices de $G'$ que son los mismos que $G$ y pasa por aristas que ya estaban en $G$, y $C$ sería ciclo hamiltoniano en $G$ 

    Si $C$ es un ciclo hamiltoniano en $G'$, entonces $T = G - {(u,v)}$ es trayectoria hamiltoniana en $G$, con $T = {u_0 = u, u_1, dots, u_k = v}$

    Sean $R = {u_i bar.v (u,u_i) in A(G)}$ ($N(u)$), $S = {u_j bar.v (u_j,v) in A(G)}$ ($N(v)$)

    Notemos que $u_k = v in.not R$ y $v in.not S$, entonces $abs(R union S) < abs(V(G))$. Además, $R inter S = emptyset$
  ]

]

