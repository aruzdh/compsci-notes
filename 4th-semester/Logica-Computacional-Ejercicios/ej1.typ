#import "./utils.typ":*

= Ejercicios, Notas 01

+ En cierta ocasión la preguntaron a una joven cuántos años tenía. Ella respondió así: antier tenía 22 años, pero el año próximo cumpliré 25. Esto es lógicamente posible. ¿Cómo se explicaría esta situación?

  #sol()[
    La joven cumple años el día 31 de diciembre.
  ]

+ En una isla viven dos tipos de hombres: los caballeros, que siempre dicen la verdad, y los bribones, que siempre mienten. Julia fue a visitar la isla y encontró a dos hombres. Le preguntó a uno de ellos si los dos eran caballeros. Con la repuesta que le dio este hombre no pude deducir qué eran. Entonces le preguntó al otro hombre si el primero al que le había preguntado era caballero. Con la respuesta que obtuvo ya dedujo qué eran. ¿Cuál fue su conclusión?
  
  #sol()[
    Dadas las condiciones anteriores tenemos las siguientes posibilidades:
    + Ambos son caballeros - (C,C): Ambos responden "si".
    + Ambos son bribones - (B,B): Ambos responden "si".
    + El primero es caballero y el segundo bribón - (C,B): Ambos responden "no".
    + El primero es bribón y el segundo caballero - (B,C): El primero responde "si", y el segundo "no". 


    Obtenemos dos "si" en 1 y 2, implicando que no podamos dedicir una respuesta correcta con solo dos preguntas.

    Cuando obtenemos dos "no", en particular obtenemos un "no" a la primera pregunta, y dado el hecho de que Julia no pudo deducir su respuenta a partir de la primer pregunta, este caso se descarta (en otro caso, hubiera deducido una respuesta sin hacer una segunda pregunta).

    Finalmente, tenemos "si" y "no" como respuesta. Siendo este el unico caso cuando podemos saber quien es caballero y quien bribón.

    Por tanto, *el primero es bribón y el segundo caballero*.
      
  ]

+ Das una vuelta a la pista a 20 km \/ hr. ¿A qué velocidad debes dar la segunda vuelta para que la velocidad promedio de las 2 vueltas sea el doble: 40 km \/ hr?
  
  #sol()[
    // ------------     --------------
    //    20km               20km



  ]

#pagebreak()

+ Dadas las siguientes definiciones.
  $
  "con"(p) = 0, space.quad
  "con"(not phi) = "con"(phi) + 1, space.quad
  "con"(phi_1 join phi_2) = "con"(phi_1) + "con"(phi_2)
  $
  $
  "depth"(p) = 0, space.quad
  "depth"(not phi)  ="depth"(phi) + 1, space.quad
  "depth"(phi_1 join phi_2) = "max"("depth"(phi_1), "depth"(phi_2)) + 1
  $
  Demuestra que 
  $
  "con"(phi) < 2^("depth"(phi) + 1)
  $

  *Caso Base:* $ phi = p$.

  Por demostrar:  $"con"(p) < 2^("depth"(p) + 1)$

  #dem()[

    Por definición tenemos que $"con"(p) =0$.
    Por definición tenemos que $2^("depth"(p)+1) = 2^(0+1) = 2$. Así, $0 < 2$
  ]

  *Hipótesis de Inducción:* Supongamos que para $phi_1, phi_2$ se cumple que
  $
  "con"(phi_i) < 2^("depth"(phi_i) + 1)
  $

  *Paso Inductivo (1):* Sea $phi = phi_1$

  Por demostrar:  $"con"(not phi_1) < 2^("depth"(not phi_1) + 1)$

  #dem()[

    Tenemos, por definición, que $"con"(not phi_1) = "con"(phi_1) + 1$.

    Además, $2^("depth"(not phi_1) + 1) = 2^("depth"(phi_1) + 1 + 1) = 2^2 dot.c 2^"depth"(phi_1)$, por definición.

    Por Hipótesis de Inducción tenemos que
    $
    "con"(phi_1) + 1 < 2^("depth"(phi_1)+1) + 1 = 2 dot.c 2^("depth"(phi_1)) + 1
    $

    Buscamos que 
    $
    2 dot.c 2^("depth"(phi_1)) + 1 < 2^2 dot.c 2^"depth"(phi_1)
    $

    Dividimos por 2:
    $
    2^("depth"(phi_1)) + 1 < 2 dot.c 2^"depth"(phi_1)
    $

    Dado que $a < b arrow.long.double a + 1 < b dot.c 2$ es cierto para $a,b >= 0$, la desigualdad anterior es correcta.

    Por la transitividad de la desigualdad se tiene que
    $
    "con"(not phi_1) < 2^2 dot.c 2^"depth"(phi_1) = dot.c 2^("depth"(not phi_1) + 1)
    $
  ]

  *Paso Inductivo (2):* Sea $phi = phi_1 join phi_2$

  Por demostrar:  $"con"(phi_1 join phi_2) < 2^("depth"(phi_1 join phi_2) + 1)$

  #dem()[

    Tenemos que $"con"(phi_1 join phi_2) = "con"(phi_1) + "con"(phi_2)$, 

    Además, $2^("depth"(phi_1 join phi_2) + 1) = 2^("max"("depth"(phi_1), "depth"(phi_2)) + 1 + 1) = 2^2 dot.c 2^("max"("depth"(phi_1), "depth"(phi_2)))$

    Por Hipótesis de Inducción tenemos lo siguiente:
    $
    "con"(phi_1) + "con"(phi_2) < 2^("depth"(phi_1) + 1) + 2^("depth"(phi_2) + 1)
    space.quad\
    arrow.r.l.double.long
    space.quad\
    "con"(phi_1) + "con"(phi_2) < 2 dot.c (2^("depth"(phi_1)) + 2^("depth"(phi_2)))
    $

    Buscamos que
    $
    2 dot.c (2^("depth"(phi_1)) + 2^("depth"(phi_2))) <
    2^2 dot.c 2^("max"("depth"(phi_1), "depth"(phi_2)))
    $

    Dividimos por 2:
    $
     2^("depth"(phi_1)) + 2^("depth"(phi_2)) <
    2 dot.c 2^("max"("depth"(phi_1), "depth"(phi_2)))
    $

    SPG, supongamos que $"depth"(phi_1) > "depth"(phi_2)$. Entonces //TODO: > (=?)
    $
    2^("depth"(phi_1)) + 2^("depth"(phi_2)) <
    2 dot.c 2^("depth"(phi_1)) = 2^("depth"(phi_1)) + 2^("depth"(phi_1))
    $

    Restamos $2^("depth"(phi_1))$:
    $
    2^("depth"(phi_2)) < 2^("depth"(phi_1))
    $

    Dado que $"depth"(phi_1) > "depth"(phi_2)$, la igualdad es válida.

    Por la transitividad de < se tiene:
    $
    "con"(phi_1 join phi_2) < 2^2 dot.c 2^("max"("depth"(phi_1), "depth"(phi_2))) = 2^("depth"(phi_1 join phi_2)+1)
    $

    $$
  ]
