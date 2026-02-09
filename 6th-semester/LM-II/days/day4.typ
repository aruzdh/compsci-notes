#import "../lib.typ": *

= 06 - Febrero - 2026

== Lenguaje Formal (De 1er Orden)

=== Símbolos
Símbolos lógicos:
- Conectivos lógicos (primitivas): $not, arrow.r.long, forall,$ (igualdad"")
- Variables: $"Var" = {x_n | n in NN}$
- Símbolos técnicos (de agrupación): $(,),','$

#note()[
  $"SL" = {"todo lo anterior"}$
]

Símbolos no-lógicas (Tipo de Semejanza)
$PP = {P_i | i in I}$ símbolos predicados y $o p_i = n$ el grado de $P_i$
$FF = {f_j | j in J}$ símbolos funcionales y $$ el grado de $f_j$
$CC = {c_k | k in K}$ símbolos constantes

$rho = PP union FF union CC$, donde son ajenos dos a dos.

$I,J,K$ pueden ser o no vacíos

$rho$ es el Tipo de Semejanza

El Lenguaje formal de tipo $rho$ $LL_rho = S L union rho$ donde $S L union rho = emptyset$

A los elementos de $LL_rho$ se le llaman *Símbolos*

// cardinalidad (foto)
$|LL_rho| = |S L| + |rho| = dots = "max"()$

=== Expresiones: Sucesiones finitas de símbolos de $LL_rho$

$"Ex"_rho = {lambda,_1, not x, arrow. not, dots }$

#note()[
  $LL_rho subset.eq "Ex"_rho$
]

#note()[
  $|A| <= |B| arrow.double.r.l exists f: A arrow B$ inyectiva

  $A subset.eq B arrow.double i_A : A arrow B$ es inyectiva, elementos $|A| <= |B|$
]

Longitud
$L: "Ex"_rho arrow NN, L(s_1, dots, s_n) = n$

$u, w$ expresiones

$u = w arrow.double.l.r n = m and s_i = s'_i, i = 1, dots, n$

== $rho$-Términos

Sea $LL_rho$ un Lenguaje formal. TERM es el menor conjunto de expresiones talque
1. $"Var" union CC subset.eq "TERM"$
2. $$


=== Inducción en Términos
'el menor'

=== Ejemplos

$forall t in "TERM", L(t) > 0$

$forall t in "TERM", L(t)$ es finita

#definition()[
  Sea $LL_rho$. Una ecuación es $s = t$, donde $s, t$ son términos
]
