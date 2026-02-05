#import "../lib.typ": *
#import "../bibliography/bibliography.bib": *

= 04 - Febrero - 2026

== Tabla de Símbolos

#definition("Tabla de Símbolos")[
  Es una estructura de datos que guarda información relevante del programa fuente, para usarla en la generación de código (o en cualquier etapa que se requiera).
]


#definition("Vinculación")[
  Tomar información y enlazarla (vincular/bind) a un nombre.
]

#example("Vinculación")[
  Teniendo $"if" x >= e) "then" dots$, se crea $<x, a_0>$, donde $x$ es el nombre, y $a_0$ apunta al valor o información que es vinculada (0)
]

=== Implementación de la Tabla de Símbolos
1. Persistente (Funcionales): Listas, Funciones
2. Imperativa: Tabla, Diccionarios

=== Función de la Tabla de símbolos
- Vacío (Empty): Si la Tabla está vacía
- Vinculación
- Lookup: Búsqueda de información
- Enter: Indica la entrada a bloque
- Exit: Indica la salida de bloque

== Definiciones

#definition("Bloque")[
  Sección del código que contiene declaraciones y sentencias. Puede verse como una gramática:

  $B arrow {D, S}$

  $D arrow "declaración" D | epsilon$

  $S arrow "sentencia" S | epsilon$

]

#definition("Estructura de Bloques")[
  Hay bloques anidados

  $B arrow {D, S}$

  $D arrow "declaración" D | epsilon$

  $S arrow "sentencia" S | B | epsilon$
]

#definition("Declaración Global")[
  Asignaciones de valores de variables que se usan en todas las secciones.
]

#definition("Declaración Local")[
  Referencias a bloques especificos de código
]

#note()[
  Una variable no declarada en un bloque toma el valor del bloque más cercano en la jerarquía.
]

== Implementación de Tabla de Símbolos

Considerando el siguiente código, donde cada "{}" marca un nuevo scope:
```c
{
  x = 2;
  y = 3;
  {
    x = 5;
    cout << x <<y;
    {
      y = 10;
      cout << x << y;
    }
  }
  cout << x << y;
}
```

=== Implementación Persistente

Una función $f :: "Nombres" arrow "Info o Lista"$
1. Empty:
  ```c
  f[] = Exception
  ```
2. Vinculación:
  ```c
  fun Bind(n, i, f)
    = fn(n_1) => if n_1 = n then i
                else f(n_1)
  ```
3. Enter: Definir una función local: $f_"local" = f$. Es una vinculación local que será modificada en caso de ser necesario, manteniendo la $f$ original.
4. Exit: Llamar a la $f$ anterior. Cuando se sale de un bloque, que usa la $f$ anterior, es decir, la que se copió en "Enter".
5. Lookup: $f$ recibe el _nombre_, busca el la última vinculación que se realizó; si hay match, regresa la información, en otro caso, busca el si siguiente (previa) vinculación.

#example("Implementación Persistente")[
  Considerando el código inicial. Se tienen distintas $f$'s, una por cada bloque, con las vinculaciones (nombre, información) correspondiente:

  --- Primer scope (global)

  $f_1 x = 2$

  $f_1 y = 3$

  --- Segundo scope

  $f_2 = f_1$ (Se copia la $f$ anterior ($f_1$) para resguardar las vinculaciones anteriores)

  $f_2 x = 5$

  $y = 3$ ya se encuentra en $f_2$ debido a la copia hecha al inicio.

  --  Tercer scope

  $f_3 = f_1$ (copia)

  $x = 5$ ya está vinculada

  $f_3 y = 10$
]

=== Implementación Imperativa

Usualmente con listas o Hash (Diccionarios), y usando una (o varias) pila auxiliar

1. Empty: "Exception" si no hay elementos en el diccionario.
2. Vinculación: Usando el diccionario del scope/bloque actual, se añade la pareja ordenada (_nombre_, _info_) correspondiente.
3. Enter: Push de un *nuevo* diccionario (uno por cada bloque) de vinculación a la pila.
4. Exit: Pop a la pila. Se "elimina" (se sigue manteniendo en otra ubicación) de la pila para tener acceso a scope superior (previo)
5. Lookup: Buscamos en diccionario del tope de la pila, y si no se encuentra se hace un pop para acceder al scope anterior. Una vez encontrado el valor, se hace un push por de cada diccionario que se popeó en el búsqueda, y así no perder el orden de los bloques.

#note("Lookup")[
  Una opción para implementar, y ejecutar _lookup_ correctamente, es usar dos pila: la primera para guardar/remover los bloque conforme se van creando (Enter/Exit), y otra para mantener el orden de cada pop al hacer un lookup.
]

