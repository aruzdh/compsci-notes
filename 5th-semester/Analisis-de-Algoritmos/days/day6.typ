#import "../lib.typ":*

= 18 de Agosto de 2025

== Definición de lProblema

Dados dos naturales $a,b$ (no los dos simultaneamente cero) determinar $"MCD"(a,b)$, donde MCD es el _máxico común divisor_.

#note()[
  Un entero $d$ es divisor de un entero $q$, si $q = d dot.c c$, con $c in ZZ$
]

== Ejemplos de Instancias

$"MCD"(8,6) = 2$

$"MCD"(5,9) = 1$

$"MCD"(0, 17) = 17$

== Soluciones

=== Iterativo

Exponencial en el número de bits de entrada
```python
def MCDexahustivo(a,b):
  acc = 1
  for i in range(1, min(a,b) + 1):
    if a % i == 0 and b % i == 0:
      acc = i
  return acc
```

=== Algoritmo de Euclides - Recursivo

#lemma()[
  Sean $a,b in ZZ$, con $a >= b$. Para todo divisor común $d$ de $a$ y $b$ se tiene que $d$ es multiplo de $a-b$.
]

#proof()[
  Por definición de multiplo, $a = d dot.c e_(a c)$ y $b = d dot.c e_(b d)$, con $e_(a d), e_(b,d) in ZZ$. Restando las dos igualdades:
  $a - b = d dot.c underbrace((e_(a d) - e_(b d)),[>= 0 in NN])$
]

#corollary()[
  Para todo $a>=b$, el $"MCD"(a,b)$ es divisor de $a-b$. Además, el $"MCD"(a,b) = "MCD"(b, a-b)$.
]

//TODO: suma de a + b, por induccion fuerte
Dados dos naturales $a>=b$ (no los dos simultaneamente cero y $b != 0$) determinar $"MCD"(a,b)$, donde MCD es el _máxico común divisor_.

```python
def MCD(a,b):
  if a < b:
    MCD(b,a)
  if b == 0:
    return a
  
  return MCD(b, a-b)
```

