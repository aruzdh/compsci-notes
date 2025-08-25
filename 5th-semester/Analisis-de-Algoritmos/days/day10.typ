#import "../lib.typ":*
#show: codly-init.with()

= 22 de Agosto de 2025

== Exponenciación por Cuadrados

=== Problema

$
"Entrada:" $a,b$
space.quad space.quad
"Salida:" $a^b$ = $underbrace(dot.c a dot.c dots a, "b")$
$

=== Instancias

$
(3,2) arrow 3^2 = 9
space.quad
space.quad
(2,4) arrow 2^4 = 16
$

=== Formulas

$a ^ (2 dot.c k) = (a^k)^2$

$a ^ (2 dot.c k + 1) = a dot.c a^(2 dot.c k)$

=== Algoritmo

```python
def fastpow(a,n):
  if n == 0:
    return 1
  if n % 2 == 1:
    return a * fastpow(a, n-1)
  else:
    m = n // 2
    x = fastpow(a,m)
    return x * x
```

//TODO: 
#note()[
  Alternativa para cualquier operación asociativa
  ```python
    if n == 1:
      return a
  ```
]

=== Demostración

HI: $forall a, forall b <= m$, el algoritmo es correcto.

PD: $forall a, b = m+1$ el algoritmo es correcto

Casos para el _if_ y _else_

