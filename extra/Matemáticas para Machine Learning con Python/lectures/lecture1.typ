#import "../lib.typ": *
#import "../bibliography/bibliography.bib": *
#import "@preview/codly:1.3.0": *
#show: codly-init.with()

= Algebra Lineal
Antes que todo, 
#align(center)[
  *_¿Por qué usamos algebra lineal en Machine Learning?_*
]

De manera general, los datos con los que trabajamos en ML los podemos organizar en forma de *vectores* (un punto en el espacio con dirección y magnitud), o como *matrices* (para datos más complejos como imagenes, pesos de redes neuronales, transformaciones lineales, etc.).

Para poder trabajar de mejor manera en Python, usamos las librerias de *numpy*, *matplotlib*, y *IPython*
#codly(header: [Importación de las librerias necesarias], header-cell-args: (align: center))
  ```python
  import numpy as np
  import matplotlib.pyplot as plt
  from IPython.display import Math
  ```
#note()[
  Con el afán de simplificar los codigos, la importación de las librerias anteriores no se omitirá.
]

De manera muy simplificada, podems usar vectores y matrices para guardar información. Antes de explicar con más detalle qué son y qué podemos hacer con los vectores y matrices, veamos el siguinte codigo de Python.
#codly(header: [Ejemplo de un vector y una matrix en Python], header-cell-args: (align: center))
```python
# Vector: Veamoslo como un punto con dos caracteristicas altura (cm), peso (kg).
p1 = np.array([170, 65])
print("Vector de una persona: ", p1)
# Matriz: Cada fila de la matriz representa una persona.
matrix = np.array([[170, 65],
                                [180, 75],
                                [165, 60]])
print("Matriz de tres personas: \n", matrix)
```

// TODO: Write/put the code's output

== Vectores

En el contexto de Python,  un *vector* se puede interpretar como una colección de números (no necesariamente ordenados). 

#example("Vectores")[
  Los siguientes son vectores:
  $ [88,18], space.med [1,2,3,4], space.med [x_1,x_2, dots, x_n] $
  pertenecientes a $RR^2$, $RR^4$, y $RR^n$, respectivamente.
]

En caso de tener un vector "ordenado", podemos visualizalo como un punto en el espacio.

#example("Vector en de dimensión 2")[
  Dado $[2,3]$ un vector. La primera _componente_ o _coordenada_ representa la posición en el eje horizontal (usualmente $x$), y la segunda la posición en el eje vertical (eje $y$).
]

#codly(header: [Representación de un vector en $RR^2$], header-cell-args: (align: center))
```python
# Creamos un arreglo que contengo dos elementos
v = np.array([2, 3])

# Con plt.quiver mostramos un arreglo de dos dimensiones
plt.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='r')
plt.xlim(-1, 4) #Asignamos los limites para el eje x
plt.ylim(-1, 4) #Asignamos los limites para el eje Y
plt.grid() #Creamos una cuadricula
plt.title("Vector v") #Asignamos un titulo a la imagen
plt.show() # Mostramos nuestra vector en la cuadricula
```

Desde esta perspectiva, un vector no solo es un punto formado por las coordenadas, sino una magintud que comienza en un origen y se extiende hasta las coordenadas especificadas.

#codly(header: [Ejemplo de tres vectores en el espacio $RR^2$], header-cell-args: (align: center))
```python
# Puntos de inicio de los vectores (x, y)
x_starts = [0, 1, 2] # Arreglo tradicional (no usamos numpy)
y_starts = [0, 1, 0]

# Componentes de los vectores (u, v)
u_components = [1, 0.5, -1] # dx
v_components = [1, -1, 0.5] # dy

# Graficamos múltiples vectores
plt.quiver(x_starts, y_starts, u_components, v_components,
          angles='xy', scale_units='xy', scale=1, color=['r', 'g', 'b'])

# Establecemos límites
plt.xlim(0, 4)
plt.ylim(0, 4)
plt.grid()
plt.title("Vectores en el espacio")
plt.show()
```

=== Suma y Resta de Vectores

La *suma* se puede interpretar como "combinar dos cantidades". Teniendo dos vectores, digamos $u$ y $v$ en $RR^n$, la suma se realiza de la siguiente manera.

$
u + v = [u_1, u_2, dots u_n] + [v_1, v_2, dots, v_n] = [u_1 + v_1, u_2 + v_2, dots, u_n + v_n]
$
Es decir, la suma es *componente a componente*.

#example("Suma de Vectores")[
  Sean $u = [3,8,1,0]$ y $v = [1,2,3,4]$ vectores.
  $
  u + v = [3, 8, 1, 0] + [1,2,3,4] = [4, 10, 4, 4]
  $
]

La *resta* se puede interpretar como la diferencia que hay entre nuestros vectores (en magintud). Al igual que la suma, esta operación es *componente a componente*.

$
u - v = [u_1, u_2, dots u_n] - [v_1, v_2, dots, v_n] = [u_1 - v_1, u_2 - v_2, dots, u_n - v_n]
$

#example("Resta de Vectores")[
  Sean $u = [3,8,1,0]$ y $v = [1,2,3,4]$ vectores.
  $
  u - v = [3, 8, 1, 0] - [1,2,3,4] = [2, 6, -2, -4]
  $
]

==== Representación Gráfica de la Suma y Resta de Vectores

En Python, lo realizamos de esta forma.
#codly(header: [Suma y Resta de Vectores], header-cell-args: (align: center))
```python
v1 = np.array([1,2]) # Primer vector
v2 = np.array([3,4]) # Segundo vector

suma = v1 + v2 # Sumamos los vectores
print(suma) # Imprimimos el resultado

resta = v1 - v2 # Restamos los vectores
print(resta) # Imprimimos el resultado
```
Aunque el resultado y procedimiento es sencillo, lo interesante es su representación gráfica.

#codly(header: [Representación Gráfica de la Suma de Vectores], header-cell-args: (align: center))
```python
v1 = np.array([1,2])
v2 = np.array([3,4])

suma = v1 + v2
print(suma)

plt.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale = 1, color='r', label='v1') # Primer vector
plt.quiver(v1[0], v1[1], v2[0], v2[1], angles='xy', scale_units='xy', scale = 1, color='b', label='v2') # Segundo vector
plt.quiver(0, 0, suma[0], suma[1], angles='xy', scale_units='xy', scale = 1, color='g', label='v1+v2') # Resultado de la suma
plt.xlim(0, 6)
plt.ylim(0, 6)
plt.grid()
plt.legend()
plt.title("Suma de vectores")
plt.show()
```
Para la resta, se usa el método del *triángulo*.
#codly(header: [Representación Gráfica de la Resta de Vectores], header-cell-args: (align: center))
```python
v1 = np.array([1, 2])
v2 = np.array([3, 4])

resta = v1 - v2
print("El resultado de la resta v1 - v2 es:", resta)

plt.figure(figsize=(8, 8)) # Creamos la figura, unidad de medida inch (pulgadas)

plt.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='v1') # Primer vector
plt.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b', label='v2') # Segundo vector
plt.quiver(v2[0], v2[1], resta[0], resta[1], angles='xy', scale_units='xy', scale=1, color='g', label='v1-v2') # La diferencia en la resta
plt.quiver(0, 0, resta[0], resta[1], angles='xy', scale_units='xy', scale=1, color='g', label='v1-v2') # Visualizacion desde el origen del vector resultante
plt.xlim(-3, 6)
plt.ylim(-3, 6)
plt.grid()
plt.legend()
plt.title("Resta de vectores")
plt.show(python
```
=== Norma de un Vector (Distancia Euclidiana)

La *norma* de un vector se interpreta como la longitud que este tiene partiendo de su origen (usualmente es el punto _0,0_) hasta el punto en que se extiende nuestro vector (las coordenadas dadas). Para calcular dicha norma, se hace lo siguiente.

$ "norma de un vector " v = sqrt(x_1^2 + x_2^2 + dots + x_n^2) $ donde $n$ es la cantidad de componentes que tiene el vector, y $x_i$ es cada componente del vector $v$.


#codly(header: [Norma de un Vector en $RR^14$], header-cell-args: (align: center))
```python
v1 = np.array([3,4,5,6,7,8,4,5,6,8,4,6,8,8])
# norma de v1 = sqrt(v1[0]**2 + v1[1]**2);
norma = np.linalg.norm(v1)
print("La norma del vector v1 es:", norma)
```

=== Producto Punto (Producto Escalar o Interno)

El *producto punto* (escalar o interno) es una herramienta fundamental del Algebra Lineal que es usada en ML.

#align(center)[
  *_¿Qué representa el producto punto?_*
]

Nos dice que tan "alineados" están los vectores con las que se está trabajando. Esta operación nos devuelve un valor *escalar* (un número en $RR$), es decir, no tiene una dirección.

Teniendo dos vectores, digamos $u$ y $v$ en $RR^n$, el producto punto se realiza de la siguiente manera.

$
u dot v = [u_1, u_2, dots u_n] dot [v_1, v_2, dots, v_n] = u_1 dot v_1 + u_2 dot v_2 + dots + u_n dot v_n
$

#codly(header: [Producto Punto], header-cell-args: (align: center))
```python
v1 = np.array([1, 3])
v2 = np.array([2, 2])
dot = np.dot(v1, v2)
print("Producto punto:", dot)  # 1*2 + 3*2 = 8
```

=== Caso de Uso Real
Las recomendaciones de peliculas en plataformas de streaming se hacen por medio de algoritmos más complejos, pero en esencia, el principio es el mismo que el del producto punto.

Supongamos que tenemos un usuario con cierta preferencia en cuanto a peliculas. La primera posición representa la _comedia_, y la segunda la _acción_ (esto aplica para los diversos usuarios y para las peliculas).

#example()[
  - Usuario - [3,1]: Tiene más afinación con las peliculas de comedia (3) que con las de acción (1).
  - Pelicula - [4,1]: Se enfoca más en la comedia (4) y menos en la acción (1).
]

Así, podemos escribir lo siguiente.

#codly(header: [Producto Punto], header-cell-args: (align: center))
```python
# --- Tus dos vectores ---
# Vector 'Película A' (representa las características de una película)
pelicula_a = np.array([4, 1])

# Vector 'Usuario X' (representa las preferencias de un usuario, similar a Película A)
usuario_x = np.array([3, 1])

# --- Calcular el Producto Punto ---
producto_punto = np.dot(pelicula_a, usuario_x)
# También calculamos las magnitudes para la proyección visual
magnitud_pelicula_a = np.linalg.norm(pelicula_a)
magnitud_usuario_x = np.linalg.norm(usuario_x)

# --- Crear la gráfica ---
fig, ax = plt.subplots(figsize=(8, 8))

# Dibujar Película A (azul)
ax.quiver(0, 0, pelicula_a[0], pelicula_a[1], angles='xy', scale_units='xy', scale=1,
          color='blue', label=f'Película A: {pelicula_a}')

# Dibujar Usuario X (verde)
ax.quiver(0, 0, usuario_x[0], usuario_x[1], angles='xy', scale_units='xy', scale=1,
          color='green', label=f'Usuario X: {usuario_x}')

# --- Interpretación Visual: Proyección ---
# El producto punto es la longitud de la proyección de un vector sobre otro,
# multiplicada por la longitud del vector sobre el que se proyecta.
# O de forma más intuitiva, es la parte de un vector que "va en la misma dirección" que el otro,
# escalada por la longitud de ese otro vector.

# Calcular la proyección de Usuario X sobre Película A
# Proyección = (Usuario X . Película A) / ||Película A||^2 * Película A
proyeccion_usuario_x_sobre_pelicula_a = (np.dot(usuario_x, pelicula_a) / magnitud_pelicula_a**2) * pelicula_a

# Dibujar la línea de proyección (línea punteada gris)
ax.plot([usuario_x[0], proyeccion_usuario_x_sobre_pelicula_a[0]],
        [usuario_x[1], proyeccion_usuario_x_sobre_pelicula_a[1]],
        '--', color='gray', alpha=0.7, linewidth=1.5, label='Línea de Proyección')
# Dibujar el vector de proyección (línea roja más gruesa)
ax.quiver(0, 0, proyeccion_usuario_x_sobre_pelicula_a[0], proyeccion_usuario_x_sobre_pelicula_a[1],
          angles='xy', scale_units='xy', scale=1, color='red', width= 0.009,
          label=f'Proyección de Usuario X sobre Película A')

# --- Configuración del gráfico ---
ax.set_xlim(-0.5, 4.5)
ax.set_ylim(-0.5, 2)
ax.axhline(0, color='gray')
ax.axvline(0, color='gray')
ax.set_aspect('equal', adjustable='box')
ax.grid(True, linestyle='--', alpha=0.6)
ax.set_title(f'Interpretación Visual del Producto Punto\nPelícula A · Usuario X = {producto_punto:.2f}')
ax.legend()
plt.xlabel("Característica 1 (ej. Acción)")
plt.ylabel("Característica 2 (ej. Comedia)")
plt.show()

print(f"\n--- Resultado del Producto Punto ---")
print(f"El producto punto entre 'Película A' y 'Usuario X' es: {producto_punto:.2f}")

# Interpretación del valor
if producto_punto > 0:
    print("El producto punto es positivo: Los vectores apuntan en direcciones generalmente similares (hay alineación).")
    print("Cuanto mayor sea el valor positivo, más alineados y/o más largos son los vectores en la misma dirección.")
elif producto_punto < 0:
    print("El producto punto es negativo: Los vectores apuntan en direcciones opuestas (hay desalineación).")
    print("Cuanto más negativo sea el valor, más opuestos y/o más largos son los vectores.")
else: #producto_punto == 0:
  print("El producto punto es cero: Los vectores son ortogonales (perpendiculares), no hay relación lineal directa entre ellos.")
  print("\n--- Interpretación Visual en la Gráfica ---")
  print("1.  **Vector Azul (Película A):** Es nuestro vector de referencia.")
  print("2.  **Vector Verde (Usuario X):** Es el vector que estamos comparando.")
  print("3.  **Vector Rojo (Proyección):** Muestra la 'sombra' o la 'parte' del Vector Verde que se extiende en la misma dirección que el Vector Azul.")
  print("    * El **producto punto** es el resultado de multiplicar la longitud del **Vector Rojo** por la longitud del **Vector Azul**.")
  print("    * Si los vectores están muy alineados (como aquí), el vector rojo es largo y positivo, resultando en un producto punto positivo grande.")
  print("    * Si los vectores fueran perpendiculares, el vector rojo sería un punto en el origen (longitud cero), y el producto punto sería cero.")
  print("    * Si los vectores apuntaran en direcciones opuestas, el vector rojo apuntaría en sentido contrario, y el producto punto sería negativo.")
```

== Matrices

Una forma de entender una *matriz* es como un _arreglo bidimensional_, donde tenemos _filas_ y _columnas_ que pueden representar distintos datos. En particular, las filas pueden representar un _vector de datos_, y las columnas una _característica_.

Denotamos por $A_(m times n)$ a una matriz $A$ con $m$ filas y $n$ columnas.
#example("Matriz")[
   Por ejemplo, una matrix de $A_(3 times 4)$ es
  $
  mat(
    1,8,59,9;
    4,12,0,3;
    0,2,48,80;
  )
  $
]

En Python queda de la siguiente manera.
#codly(header: [Matrices], header-cell-args: (align: center))
```python
m1 = np.array([[1,2],
                          [3,4]])
print("Matriz 1:")
print(m1);

#Numpy es poderoso porque nos permite ver las caracteristicas de nuestros arrays o matrices
forma_del_arreglo = m1.shape
print("Forma del arreglo:", forma_del_arreglo)
numero_de_dimensiones = m1.ndim
print("Numero de dimensiones:", numero_de_dimensiones)
numero_total_de_elementos = m1.size
print("Numero total de elementos:", numero_total_de_elementos)
tipo_de_datos = m1.dtype
print("Tipo de datos:", tipo_de_datos)
```
=== Transpuesta de una Matriz

Esta operación funciona intercambiando las filas por las columnas. Básicamente "volteamos" nuestra matriz. Si $A$ es una matrix, su transpuesta es $A^T$.

#example("Transpuesta de una Matriz")[
  Sea $A_(3 times 4)$ la siguiente matriz
  $
  mat(
    1,8,59,9;
    4,12,0,3;
    0,2,48,80;
  ),
  $
  su *matrix transpuesta* es
  $
  mat(
    1,4,0;
    8,12,2;
    59,0,2;
    9,3,80
  )
  $
  Como se dijo antes, intercambiamos las filas (o columnas) de la matriz por las columnas (o filas). Notese que $(A^T)^T = A$, con $A$ cualquier matriz.
]

#codly(header: [Transpuesta de una Matriz 2x2], header-cell-args: (align: center))
```python
m1 = np.array([[4, 5],
               [6,7]])
print("Matriz original:")
print(m1)

mTranspuesta = m1.T #Al acceder al metodo .T la transposición se hace automaticamente
print("Matriz transpuesta:")
print(mTranspuesta)
```

#codly(header: [Transpuesta de una Matriz 3x3], header-cell-args: (align: center))
```python
m2 = np.array([[1, 2, 3],
               [4, 5, 6],
               [7, 8, 9]])

print("Matriz original:")
print(m2)

mTranspuesta = m2.T
print("Matriz transpuesta:")
print(mTranspuesta
```
=== Multiplicación de Matrices (Producto punto, y escalar)

Al igual que los vectores, las matrices pueden ser multiplicadas, pero respetando ciertas condiciones. Primeramente, las dimensiones de ellas tienen que "coincidir", es decir, si tenemos una matrix de $m times n$, la segunda debe ser de la forma $n times q$

#example("Producto de Matrices")[
  Sean $A_(2 times 3)$, $B_(3 times 4)$, $C_(4 times 2)$ matrices. Podemos multiplicar $A dot B$, pero no $A dot C$ (no son de la forma ($m times n$) $dot$ ($n times q$), pues $n$ es diferente para ambas).
]

Como segundo punto, el producto de matrices no es componente a componente, sino que tomamos una fila y columna de cada matriz, respectivamente. El siguiente ejemplo muestra este proceso.

#example("Producto de Matrices")[
  Sean $A_(2 times 3)$ y $B_(3 times 4)$ matrices definidas como
  $
  mat(
    1,8,3;
    4,0,2;
  ) space.quad "y" space.quad
  mat(
    7,8,9,0;
    1,5,1,1;
    3,0,10,2;
  ),
  $ respectivamente. Para obtener $A dot B$, tomamos la primera fila de $A$ y la pimera columna de $B$, los consideramos como vectores, dandonos la posibilidad de efectuar un producto punto:
  $
  [1,8,3] dot [7,1,3] = 7 + 8 + 9 = 24
  $
  Este valor corresponde a la primera posición de la matriz resultante. En general, si nos tomamos la fila $i$ de $A$ y la columna $j$ de $B$, es producto punto entre estos dos "vectores" es la componente en la $i$-ésima fila y $j$-ésima columna de $A dot B$. Entonces,
  $
  A dot B = mat(
    24,48,47,14;
    34,32,56,4
  )
  $
]

En Python, de manera más sencilla y rapida, queda así:
#codly(header: [Producto de Matrices], header-cell-args: (align: center))
```python
m1 = np.array([[2,3],
               [5,6]])

m2 = np.array([[2,3],
               [5,6]])

producto_punto = np.dot(m1, m2)
print("Producto punto:")
print(producto_punto
```
Como se mencionó, no es posible aplicar esta operación si las dimensiones no coinciden. Si se trata de ejecutar el siguiente codigo, se obtendrá un error.

#codly(header: [Producto de Matrices], header-cell-args: (align: center))
```python
m1 = np.array([[2,3],
               [5,6]])

print(m1.shape)

m2 = np.array([[2,3],
               [5,6],
               [7,8]])
print(m2.shape)

producto_punto = np.dot(m1, m2)
print(producto_punto)
```

Una posible solución es usar la transpuesta sobre la segunda matriz.

#codly(header: [Producto de Matrices], header-cell-args: (align: center))
```python
m1 = np.array([[2,3],
               [5,6]])

m2 = np.array([[2,3],
               [5,6],
               [7,8]])

producto_punto = np.dot(m1, m2.T)
print(producto_punto
```

== Ejemplo Completo

Se hará una regresión lineal para predecir los valores de diferentes casas basandonos en su tamaño.

#note()[
  En un modelo real, los pesos se ajustarían automáticamente durante el entrenamiento para minimizar el error entre predicciones y valores reales.
]

#codly(header: [Ejemplo Completo], header-cell-args: (align: center))
```python
# Datos de ejemplo: tamaño de casas en m² y sus precios en miles de pesos
# Cada fila es una casa: [tamaño_m2, num_habitaciones, edad_años]
X = np.array([
    [50, 1, 10],   # Casa pequeña, 1 habitación, 10 años
    [80, 2, 5],    # Casa mediana, 2 habitaciones, 5 años
    [120, 3, 2],   # Casa grande, 3 habitaciones, 2 años
    [100, 2, 8],   # Casa mediana, 2 habitaciones, 8 años
    [150, 4, 1],   # Casa muy grande, 4 habitaciones, 1 año
])

# Precios reales (en miles de pesos)
y_real = np.array([800, 1200, 1800, 1400, 2200])

# Pesos iniciales (lo que el modelo "piensa" sobre cada característica)
# [precio_por_m2, precio_por_habitacion, descuento_por_año]
pesos = np.array([10, 200, -50])  # Cada m² vale 10k, cada habitación 200k, cada año resta 50k

print("=== EJEMPLO DE PRODUCTO PUNTO EN ML ===")
print(f"Datos de casas (tamaño_m², habitaciones, años):")
print(X)
print(f"\nPrecios reales: {y_real}")
print(f"Pesos del modelo: {pesos}")

# ¡AQUÍ ESTÁ EL PRODUCTO PUNTO EN ACCIÓN!
# Cada predicción es el producto punto entre las características de la casa y los pesos
predicciones = X @ pesos  # Esto es equivalente a np.dot(X, pesos)

print(f"\n=== PREDICCIONES USANDO PRODUCTO PUNTO ===")
for i in range(len(X)):
    casa = X[i]
    precio_real = y_real[i]
    precio_pred = predicciones[i]

    # Mostramos el cálculo paso a paso del producto punto
    calculo = f"{casa[0]}×{pesos[0]} + {casa[1]}×{pesos[1]} + {casa[2]}×{pesos[2]}"
    resultado = casa[0]*pesos[0] + casa[1]*pesos[1] + casa[2]*pesos[2]

    print(f"Casa {i+1}: {calculo} = {resultado}")
    print(f"   Predicho: ${precio_pred:,.0f}k | Real: ${precio_real:,.0f}k | Error: ${abs(precio_pred-precio_real):,.0f}k")
    print()

# Calculamos el error cuadrático medio
error_cuadratico_medio = np.mean((predicciones - y_real)**2)
print(f"Error Cuadrático Medio: {error_cuadratico_medio:,.0f}")

# Ejemplo de una casa nueva
print("\n=== PREDICCIÓN PARA CASA NUEVA ===")
casa_nueva = np.array([90, 2, 3])  # 90m², 2 habitaciones, 3 años
precio_nueva = casa_nueva @ pesos  # ¡Producto punto otra vez!

print(f"Casa nueva: {casa_nueva[0]}m², {casa_nueva[1]} habitaciones, {casa_nueva[2]} años")
print(f"Cálculo: {casa_nueva[0]}×{pesos[0]} + {casa_nueva[1]}×{pesos[1]} + {casa_nueva[2]}×{pesos[2]}")
print(f"Precio predicho: ${precio_nueva:,.0f}k pesos")

# Visualización
plt.figure(figsize=(10, 6))
plt.scatter(range(len(y_real)), y_real, color='blue', label='Precios Reales', s=100)
plt.scatter(range(len(predicciones)), predicciones, color='red', label='Predicciones', s=100)
plt.plot([0, len(y_real)-1], [y_real.min(), y_real.max()], 'k--', alpha=0.3)

for i in range(len(y_real)):
    plt.plot([i, i], [y_real[i], predicciones[i]], 'gray', alpha=1)

plt.xlabel('Casa #')
plt.ylabel('Precio (miles de pesos)')
plt.title('Predicción de Precios usando Producto Punto')
plt.legend()
plt.grid(True, alpha=0.3)
plt.show()
```

Entonces

#align(center)[
  *_¿Cómo funciona el producto pundo aquí?_*
]

+ Cada casa tiene características: [tamaño, habitaciones, edad].
+ El modelo tiene pesos: [valor_por_m2, precio_por_habitacion, descuento_por_año].
+ El producto punto combina: $"característica"_1 times "peso"_1 + "característica"_2 times "peso"_2 + dots + "característica"_n times "peso"_n$. 
+ Esto nos da una predicción basada en que tan "importante" considera cada característica. 
+ Finalmente, este modelo "aprende" ajustando estos pesos para minimizar el error.
