#import "../lib.typ":*
#show: codly-init.with()

= 20 de Agosto de 2025

== z

//TODO: 
```python
def MCD(a,b):
  if b == 0:
    return a
  return (b, a % b)
```

//TODO: borrar 
=== Propiedades de Residuo

+ $a = k dot.c b + r$, con $0 <= r < b$ 

//TODO:
=== Idea principal

Las sumas o restas entre ellos no modifican el conjunto de divisores. Además, en cada iteración los elementos del par van disminuyendo (e.g. a % b < b).

#lemma()[
  El algoritmo MCD usando $%$ tiene coplejidad lineal en la suma de los bits de $a$ y $b$.
]

Observemos que el número de bits de $a % b$ es estrictamente menor que el de $a$.

- Caso 1:
  
  $b <= a/2$. Por (1), $r < a/2$. Por tanto $a % b < a/2$

- Caso 2:
  
  $b > a/2$

  Como $a >= b$ y $a = k dot.c b + r$, $k >= 1$. Con $r = a - k dot.c b$, se tiene que $r < a 1 dot.c a/2$ = a/2

En ambos casos $a % b < a/2$

=== algoritmo Sin Residuo

```python
def MCD(a,b):
  if b == 0:
    return a
  return (b, a -* b)
```

//TODO: foto
$-*$: $b$ se desplaza hacia la izquierda hasta tener un bit menos que $a$. El resultado $b* = 2^z dot.c b$

// base 64 para restar






