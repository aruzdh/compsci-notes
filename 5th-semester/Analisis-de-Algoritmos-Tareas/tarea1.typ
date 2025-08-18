#import "./utils.typ":*

#align(center)[
  #text(18pt)[
    = Tarea 1. Inducción
  ]
  #text(13pt)[
    Análisis de Algoritmos 2026-1

    Hernández Vázquez Carlos Arturo
  ]
]

== Instrucciones
Resuelve cada problema utilizando inducción matemática o inducción estructural, según corresponda. Justifica claramente el caso base y el paso inductivo.

*Problema 1* (Suma de enteros consecutivos). _Demuestra que para todo_ $n >= 1$:
$
1 + 2 + 3 + dots.c + n = (n(n + 1))/2
$

*Caso Base:* Sea $n = 1$. 

Por demostrar: 
$
1= (1(1 + 1))/2
$

#dem[
  Resolviendo el lado derecho de la ecuación:
  $
  1 = (1(1 + 1))/2 = 2/2
  $
]

*Hipotesis de Inducción:* Supongamos que para $k >= 1$, se cumple
$
1 + 2 + 3 + dots.c + k = (k(k + 1))/2
$

*Paso Inductivo:* Sea $n = k + 1$.

Por demostrar:
$
1 + 2 + 3 + dots.c + (k+1) = ((k+1)((k+1) + 1))/2
$

#dem[

  Se considera el lado izquierdo de la ecuación:
  $
  1 + 2 + 3 + dots.c + k + (k+1)
  $
  Usando la Hipotesis de Inducción en los primeros $k$ números:
  $
  1 + 2 + 3 + dots.c + k + (k+1) = (k(k+1))/2 + (k+1)
  $

  Factorizando $(k+1)$:
  $
  (k(k+1))/2 + (k+1) = (k+1) (k/2 +1)
  $

  Reescribiendo $1$ como $2/2$ y resolviendo:
  $
  (k+1)(k/2 + 1) = (k+1) (k/2 + 2/2) = (k+1) ((k+2)/2) = ((k+1)(k+2))/2
  $
]

$
therefore forall n >=1, space.med 
1 + 2 + 3 + dots.c + n = (n(n + 1))/2
$

*Problema 2* (Suma de potencias de 2). _Demuestra que para todo_ $n >= 0$:
$
1 + 2 + 4 + dots.c + 2^n = 2^(n+1) - 1
$

*Caso Base:* Sea $n = 0$.

Por demostrar:

$
2^0 = 2^(0+1) - 1
$

#dem[

  Resolviendo: $1= 2^0 = 2^(0+1) - 1 = 2^1 - 1 = 1 space.quad$ 
]

*Hipotesis Inductiva:* Supongamos que para $k >= 0$, se cumple
$
1 + 2 + 4 + dots.c + 2^k = 2^(k+1) - 1
$

*Paso Inductivo:* Sea $n = k + 1$.

Por demostrar:
$
1 + 2 + 4 + dots.c + 2^(k+1) = 2^((k+1)+1) - 1
$

#dem[

  Se toma el lado izquierdo de la ecuación:
  $
  1 + 2 + 4 + dots.c + 2^k + 2^(k+1)
  $

  Usando la Hipotesis de Inducción en los primeros números hasta $2^k$:
  $
  1 + 2 + 4 + dots.c + 2^k + 2^(k+1) &= 2^(k+1) -1 + 2^(k+1) \
  &= 2^(k+1) + 2^(k+1) - 1\
  &= 2 dot.c 2^(k+1) - 1
  $

  Usando $a^n dot.c a^m = a^(n+m)$:
  $
  2 dot.c 2^(k+1) - 1 &= 2^(1 +(k+1)) - 1 \
  &= 2^((k+1)+1) - 1
  $
]
$
therefore forall n >= 0, space.med
1 + 2 + 4 + dots.c + 2^n = 2^(n+1) - 1
$

*Problema 3*  (Divisibilidad por 3). _Demuestra que para todo $n >= 0$, el número $4^n - 1$ es divisible por 3_.
*Caso Base:* Sea $n = 0$

Por demostrar:
$
4^0 - 1 "es divisible por 3". "Es decir," 4^0 - 1 = 3m, "con" m in ZZ
$
#dem[

Resolviendo:
$4^0 - 1 = 0 = 0 dot.c 3$, por tanto es divisible por 3 $space.quad$.
]

*Hipotesis de Inducción:* Supongamos que para $k >= 0$, se cumple que $4^k - 1$ es divisible por 3, es decir, $4^k - 1 = 3m$ o, equivalentemente, $4^k = 3m + 1$, con $m in ZZ$

*Paso Inductivo:* Sea $n = k + 1$

Por demostrar:
$
4^(k+1) - 1 "es divisible por 3". "Es decir," 4^(k+1) - 1 = 3m, "con" m in ZZ
$

#dem[

  Usando $a^n dot.c a^m = a^(n+m)$:

  $
  4^(k+1) - 1 = 4 dot.c 4^k - 1
  $

  Usando la Hipotesis de Inducción sobre $4^k$:

  $
  4 dot.c 4^k - 1 = 4 dot.c (3m + 1) - 1
  $

  Resolviendo lo anterior:

  $
  4 dot.c (3m + 1) - 1 &= 12m + 4 - 1 \
  &= 12m + 3 \
  &= (4m + 1)3$, con $4m + 1 in ZZ
  $. 

  Así, es divisible por 3.
]

$
therefore forall n >= 0, space.med "el número" 4^n - 1 "es divisible por 3."
$

*Problema 4* (Cota inferior de factorial). _Demuestra que para todo_ $n >= 1$:
$
n! >= 2^(n-1)
$

*Caso Base:* Sea $n = 1$

Por demostrar:
$
1! >= 2^(1-1)
$

#dem[
Resolviendo:
$1! >= 2^(1-1) arrow.r.l.double.long 1 >= 1 space.quad$
]

*Hipotesis de Inducción:* Supongamos que para $k >= 1$, se cumple
$
k! >= 2^(k-1)
$

*Paso Inductivo*, Sea $n = k + 1$

Por demostrar:
$
(k+1)! >= 2^((k+1)-1)
$

#dem[

  Se considera el lado izquierdo de la desigualdal y se usa la definición del factorial:
  $
  (k+1)! = k! dot.c (k+1)
  $

  Usando la Hipotesis de Inducción sobre $k!$ y las propiedades de las desigualdades:
  $
  k! >= 2^(k-1)
  arrow.long.double.r.l
  k! dot.c (k+1) >= 2^(k-1) dot.c (k+1)
  arrow.long.double.r.l
  (k+1)! >= 2^(k-1) dot.c (k+1)
  $

  Se busca mostrar que 
  $
  (k+1)! >= 2^(k-1) dot.c (k+1) >= 2^k = 2^(k-1) dot.c 2
  $

  Dado que $k > 1, space.med 2^(k-1) > 1$. Así, dividiendo por $2^(k-1)$ en la desigualdal derecha:
  $
   2^(k-1) dot.c (k+1) >= 2^(k-1) dot.c 2
  arrow.long.double.r.l
  k+1 >=  2
  $
  como $k >= 1$, la desigualdal es correcta.

  Por la transitividad de la desigualdal se tiene:

  $
  (k+1)! >= 2^k = 2^(k-1) dot.c 2 = 2^((k+1)-1)
  $
]

$
therefore forall n>=1, space.med
n! >= 2^(n-1)
$

*Problema 5* (Número de unos en un patrón binario). _Sea $S_n$ la cadena formada repitiendo "10" $n$ veces (por ejemplo, $S_3 = "\"101010\""$). Demuestra que la canditad de caracteres '1' en $S_n$ es exactamente $n$_.

*Caso Base:* Sea $n = 0$

Por demostrar
$
"La cadena" S_0 "contiene exactamente" 0 "veces el caracter '1'"
$

#dem[

Sea $S_0$ la cadena formada por 0 veces la cadena "10". Dicha cadena es la cadena vacia, y por tanto contiene exactamente 0 veces el caracteres '1'.

]

*Hipotesis Inductiva:* Supongamos que para $k >= 0$, se cumple que $S_k$, la cadena formada repitiendo "10" $k$ veces, tiene exactamente $k$ caracteres '1'.

*Paso Inductivo:* Sea $n = k+1$

Por demostrar
$
"La cadena" S_(k+1) "contiene exactamente" k+1 "veces el caracter '1'"
$

#dem[

  Sea $S_(k+1) = $ "$underbrace(101010 dots, "k veces") $ 10", es decir, $S_(K+1) = S_K + "\"10\""$ (con + la operación de concatenación)

  Por Hipotesis de Inducción se tiene que $S_(k+1)$ tiene al menos $k$ caracteres '1'.

  Dado que la unica diferencia entre $S_k$ y $S_(k+1)$ es "10", y es evidente que "10" contiene un solo '1', se concluye que $S_(k+1)$ tiene exactamente $k+1$ caracteres '1'.
]

$
therefore space.med S_n, "la cadena formada conforme a la definición, tiene exactamente" n "caracteres '1'"
$

*Problema 6* (Longitud de cadena inevertida). _Sea $"rev"(w)$ la cadena invertida de $w$. Demuestra que para cualquier cadena $w$:_
$
abs("rev"(w)) = abs(w)
$

*Caso Base:* Sea w = $epsilon$ (la cadena vacia)

Por demostrar:
$
abs("rev"(epsilon)) = abs(epsilon)
$

#dem[

  Sabemos que la cadena vacia no tiene caracteres, y que su reversa es ella misma:

  $
  abs("rev"(epsilon)) = abs(epsilon) = 0
  $
]


*Hipotesis de Inducción:* Supongamos que para alguna cadena $x$ se cumple que
$
abs("rev"(x)) = abs(x)
$

*Paso Inductivo:* Sea $y = x a$, donde $x$ es una cadena, y $a$ es un caracter concatenado arbitrario.

Por demostrar:
$
abs("rev"(y)) = abs(y)
$

#dem[

  Usando la definición de $y$ y por la definición de la reversa de una cadena:
  $
  "rev"(x a) = a "rev"(x)
  $

  Donde, por la definición recursiva de la longitud, se tiene:
  $
  abs(a "rev"(x)) = "# caracteres de" \"a\" + "# caracteres de rev"(x)
  $

  Por la Hipotesis de Inducción:

  $
  abs(a "rev"(x)) = "# caracteres de" \"a\" + "# caracteres de" x
  $
  Dicho de otra formada, y dado que "a" contiene un solo caracter:
  $
  abs(a "rev"(x)) = abs(x) + 1= abs(x) + abs(a) =abs(x a)\
  arrow.long.double\
  abs(a "rev"(x)) = abs("rev"(x a))  = abs(x a)\
  $
  con $y=x a$
]
$
therefore space.med forall w "cadena", abs("rev"(w)) = abs(w)
$

*Problema 7* (Concatenación preserva la longitud). _Sea $A++B$ la concatenación de listas. Demuestra que para cualesquiera listas $A$ y $B$:_
$
"len"(A++B) = "len"(A) + "len"(B)
$

*Caso Base:* Sin perdida de generalidad, sean $A = []$ una lista vacia y $B$ una lista cualquiera.

Por demostrar:

$
"len"([]++B) = "len"([]) + "len"(B)
$

#dem[

  Por la definición de longitud para listas, sabemos que
  $
  "len"(A) = 0
  $

  Concatenar una lista vacia a otra lista nos da la lista original:
  $
  A++B = B
  $

  Entonces se tiene, aplicando la función len:
  $
  "len"(A++B) = "len"(B) = "len"(A) + "len"(B)
  $
  debido a que la longitud de $A$ es 0 por ser una lista vacía.
]

*Hipotesis de Inducción:* Supongamos que para una lista $A'$ y para cualquier lista $B$ se cumple
$
"len"(A'++B) = "len"(A') + "len"(B)
$

*Paso inductivo:* Sean $A = [a] ++ A'$ una lista, $a$ en elemento arbitrario, y $B$ cualquier lista.

Por demostrar:
$
"len"(A++B) = "len"(A) + "len"(B)
$

#dem[

  Concatenando $A$ y $B$:
  $
  A++B = ([a] ++ A')++B
  $

  Dada la asociatividad de la concatenación:
  $
  A++B = [a] ++ (A'++B)
  $

  Aplicando la función len:
  $
  "len"(A++B) = "len"([a]++(A'++B))
  $

  Por definición de len:
  $
  "len"(A++B) = 1 + "len"(A'++B)
  $

  Usando la Hipotesis de Inducción sobre $A'++B$:
  $
  "len"(A++B) = 1 + "len"(A'++B) = 1 + "len"(A') + "len"(B)
  $

  Usando la definición de len:
  $
  "len"(A++B) &= 1 + "len"(A') + "len"(B)\
  &= "len"([a]++A') + "len"(B) \
  &= "len"(A) + "len"(B)
  $
]

$
therefore "para cualesquiera" A,B "listas, se cumple que"
"len"(A++B) = "len"(A) + "len"(B)
$

*Problema 8* (Doble reversa). _Sea $"reverse"(L)$ la lista invertida. Demuestra que para cualesquier lista $L$:_
$
"reverse"("reverse"(L)) = L
$

*Caso Base:* Sea $A = []$ una lista vacia.

Por demostrar:
$
"reverse"("reverse"([])) = []
$

#dem[

  Por la definición recursiva de la reversa ([] es la reversa de si misma):
  $
  "reverse"(A) = "reverse"([]) = [] = A
  $
]

*Hipotesis de Inducción:* Supongamos que para $A'$ una lista, se cumple
$
"reverse"("reverse"(A')) = A'
$

*Paso Inductivo:* Sea $A = A' ++ [a]$, con $A'$ una lista arbitraria y $a$ un elemento cualquiera.

Por demostrar:
$
"reverse"("reverse"(A)) = A
$

#dem[

  Aplicando reverse a $A$ y usando su definición:
  $
  "reverse"(A) = "reverse"(A'++[a]) = [a] ++ "reverse"(A')
  $

  Aplicando reverse por segunda vez y usando su definición:
  $
  "reverse"("reverse"(A)) = "reverse"("reverse"(A'++[a])) = "reverse"([a] ++ "reverse"(A'))
  $

  Usando la definición de reverse:
  $
  "reverse"([a] ++ "reverse"(A')) ="reverse"("reverse"(A')) ++ "reverse"([a])
  $

  Usando la Hipotesis de Inducción sobre $A'$:
  $
  "reverse"("reverse"(A')) ++ "reverse"([a]) = A' ++ "reverse"([a])
  $

  Dado que la reversa de una lista unitaria es la misma lista:
  $
  A' ++ "reverse"([a]) = A' ++ [a] = A
  $
]

$
therefore "para cualquier list" L, space.med
"reverse"("reverse"(L)) = L
$

