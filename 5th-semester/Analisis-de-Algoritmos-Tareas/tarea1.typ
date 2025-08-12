

#align(center)[
  = Tarea 1. Inducción
  Análisis de Algoritmos 2026-1

  Fecha: 17 de agosto de 2026

]

== Instrucciones
Resuelve cada problema utilizando inducción matemática o inducción estructural, según corresponda. Justifica claramente el caso base y el paso induictivo.

*Problema 1* (Suma de enteros consecutivos). _Demuestra que para todo_ $n >= 1$:
$
1 + 2 + 3 + dots.c + n = (n(n + 1))/2
$

*Caso Base*, $n = 1$.
$
1 = 1(1 + 1)/2 = 2/2
$

*Hipotesis Inductiva*, para $k$ > 1, se cumple que
$
1 + 2 + 3 + dots.c + k = (k(k + 1))/2
$

*Paso Inductivo*, $n = k + 1$.

Sustitiyendo,
$
1 + 2 + 3 + dots.c + k + (k+1) = ((k+1)((k+1) + 1))/2 = ((k+1)(k+2))/2
$

Usando la Hipotesis de Inducción en los primeros $k$ números del lado izquierdo de la ecuación:
$
(k(k+1))/2 + (k+1) = ((k+1)(k+2))/2
$

Factorizando $(k+1)$:
$
(k+1) (k/2 +1)  = ((k+1)(k+2))/2
$

Reescribiendo $k/2 + 1$:
$
(k+1) (k/2 + 2/2) = (k+1) ((k+2)/2) = ((k+1)(k+2))/2
$

$
therefore forall n >=1, space.med 
1 + 2 + 3 + dots.c + n = (n(n + 1))/2
$

*Problema 2* (Suma de potencias de 2). _Demuestra que para todo_ $n >= 0$:
$
1 + 2 + 4 + dots.c + 2^n = 2^(n+1) - 1
$

*Caso Base*, $n = 0$.
$
1= 2^0 = 2^(0+1) - 1 = 2^1 - 1 = 1
$

*Hipotesis Inductiva*, para $k$ > 0, se cumple que
$
1 + 2 + 4 + dots.c + 2^k = 2^(k+1) - 1
$

*Paso Inductivo*, $n = k + 1$.
Sustitiyendo,
$
1 + 2 + 4 + dots.c + 2^k + 2^(k+1)  = 2^((k+1)+1) - 1 = 2^(k+2) - 1
$

Usando la Hipotesis de Inducción en los primeros los números $2^0$ y $2^k$ números del lado izquierdo de la ecuación:
$
2^(k+1) -1 + 2^(k+1) = (2 dot.c 2^(k+1)) - 1 = 2^(k+2) - 1
$

Usando $a^n dot.c a^m = a^(n+m)$:
$
2^(1 +(k+1)) - 1 = 2^(k+2) - 1
$

$
therefore forall n >= 0, space.med
1 + 2 + 4 + dots.c + 2^n = 2^(n+1) - 1
$

*Problema 3*  (Divisibilidad por 3). _Demuestra que para todo $n >= 0$, el número $4^n - 1$ es divisible por 3_.
*Caso Base*, $n = 0$

Sustitiyendo y resolviendo:
$4^0 - 1 = 0 = 0 dot.c 3$, por tanto es divisible por 3.

*Hipotesis Inductiva*, para $k$ > 1, se cumple que $4^k - 1$ es divisible por 3. Es decir, $4^k - 1 = 3m$ o $4^k = 3m + 1$, con $m in ZZ$

*Paso Inductivo*, $n = k + 1$
Sustitiyendo y Usando $a^n dot.c a^m = a^(n+m)$:

$4^(k+1) - 1 = 4 dot.c 4^k - 1 $

Usando la Hipotesis de Inducción sobre $4^k$:

$4 dot.c 4^k - 1 = 4 dot.c (3m + 1) - 1$

$4 dot.c (3m + 1) - 1 = 12m + 4 - 1 = 12m + 3 = (4m + 1)3$, con $4m + 1 in ZZ$. Así, es divisible por 3.

$
therefore forall n >= 0, space.med "el número" 4^n - 1 "es divisible por 3."
$

*Problema 4* (Cota inferior de factorial). _Demuestra que para todo_ $n >= 1$:
$
n! >= 2^(n-1)
$

*Caso Base*, $n = 1$
Sustitiyendo:
$
1! >= 2^(1-1) arrow.r.l.double.long 1 >= 1
$

*Hipotesis Inductiva*, para $k$ > 1, se cumple que
$
k! >= 2^(k-1)
$

*Paso Inductivo*, $n = k + 1$
Sustitiyendo:

$
(k+1)! = k! dot.c (k+1)
$

Usando la Hipotesis de Inducción sobre $k!$:
$
k! >= 2^(k-1) 
arrow.long.double 
k! dot.c (k+1) >= 2^(k-1) dot.c (k+1)
arrow.long.double 
(k+1)! >= 2^(k-1) dot.c (k+1)
$
Se busca mostrar que 
$
(k+1)! >= 2^(k-1) dot.c (k+1) >= 2^k = 2^(k-1) dot.c 2
$

Dado que $k > 1, space.med 2^(k-1) > 1$. Así, dividiendo por $2^(k-1)$ en la desigualdal derecha:
$
k+1 >=  2
$
como $k>1$, la desigualdal es correcta.

Por la transitividad de la desigualdal se tiene:

$
(k+1)! >= 2^k = 2^((k+1)-1)
$

$
therefore forall n>=1, space.med
n! >= 2^(n-1)
$

*Problema 5* (Número de unos en un patrón binario). _Sea $S_n$ la cadena formada repitiendo "10" $n$ veces (por ejemplo, $S_3 = "'101010'"$). Demuestra que la canditad de caracteres '1' en $S_n$ es exactamente $n$_.

*Caso Base*, $n = 0$

Sea $S_0$ la cadena formada por 0 veces la cadena "10". Dicha cadena es la cadena vacia, y por tanto contiene exactamente 0 veces el caracteres '1'.

*Hipotesis Inductiva*, para $k > 0$, se cumple que $S_k$, la cadena formada repitiendo "10" $k$ veces, tiene exactamente $k$ caracteres '1'.

*Paso Inductivo*, $n = k+1$

Sea $S_(k+1) = $ "$underbrace(101010 dots, "k veces") $ 10". Por Hipotesis de Inducción se tiene que $S_(k+1)$ tiene al menos $k$ caracteres '1'.

Dado que la unica diferencia entre $S_k$ y $S_(k+1)$ es "10", y es evidente que "10" contiene un solo '1', implica que $S_(k+1)$ tiene exactamente $k+1$ caracteres '1'

$
therefore space.med S_n, "la cadena formada conforme a la definición, tiene exactamente" n "caracteres '1'"
$


*Problema 6* (Longitud de cadena inevertida). _Sea $"rev"(w)$ la cadena invertida de $w$. Demuestra que para cualquier cadena $w$:_
$
abs("rev"(w)) = abs(w)
$

*Caso Base*, w = $epsilon$ = la cadena vacia. Sabemos que la cadena vacia no tiene caracteres, y que su reversa es ella misma:

$
abs("rev"(w)) = abs("rev"(epsilon)) = abs(epsilon) = 0
$

*Hipotesis de Inducción*, para alguna cadena $x$ diferente a $epsilon$ (cadena vacia), se tiene que:
$
abs("rev"(x)) = abs(x)
$

*Paso Inductivo*, $y = x a$, donde $a$ es un caractere concanetado extra y arbitrario.

Por la definición de la reversa de una cadena:
$
"rev"(x a) = a "rev"(x)
$

Donde, por la definición recursiva de la longitud, se tiene:
$
abs(a "rev"(x)) = "# caracteres de" a + "# caracteres de rev"(x)
$

Por la Hipotesis de Inducción:
$
abs(a "rev"(x)) = "# caracteres de" a + "# caracteres de" x
$
Dicho de otra formada, y dado que $a$ contiene un solo caracter:
$
abs(a "rev"(x)) = 1 + abs(x) = abs(a) + abs(x) =abs(a x)
$

$
therefore space.med forall w "cadena", abs("rev"(w)) = abs(w)
$

*Problema 7* (Concatenación preserva la longitud). _Sea $A++B$ la concatenación de listas. Demuestra que para cualesquiera listas $A$ y $B$:_
$
"len"(A++B) = "len"(A) + "len"(B)
$

*Caso Base*, $A$ y $B$ son listas vacias.

Por la definición de longitud para listas, sabemos que
$
"len"(A) = 0 = "len"(B)
$

La concatenación de listas vacias genera una lista vacia:
$
A++B = []
$

Usando el primer argumento de nuevo:
$
"len"(A++B) = "len"([]) = 0
$

De manera inmediata se tiene:
$
"len"(A++B) = 0 = 0 + 0 = "len"(A) + "len"(B)
$

*Hipotesis de Inducción*, para dos listas $C$ y $D$ distintas de la lista vacia se cumple
$
"len"(C++D) = "len"(C) + "len"(D)
$

*Paso inductivo*, sean $E = C ++ [a]$ y $F = D ++ [b]$, donde $C$ y $D$ son listas no vacias, $[a]$ y $[b]$ son lista unitarias.
Concatenando $E$ y $F$:
$
E++F = C++[a]++D++[b]
$

Por la definición recursiva de la longitud de listas:
$
"len"(C++[a]) = "len"(C) + 1
space.quad "y"
"len"(D++[b]) = "len"(D) + 1
$

Con lo anterior se tiene:
$
"len"(E++F) = "len"(C++[a]++D++[b])
$
BUSCO
$
"len"(E++F) = "len"(E) + "len"(F)
$

// *Problema 8* (Doble reversa). _Sea $"reverse"(L)$ la lista invertida. Demuestra que para cualesquier lista $L$:_
// $
// "reverse"("reverse"(L)) = L
// $

