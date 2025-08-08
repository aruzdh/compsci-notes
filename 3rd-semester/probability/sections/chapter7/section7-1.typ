#import "../../lib.typ":*

== Vectores Aleatorios y Función de Probabilidad Conjunta
=== Vector Aleatorio

Se sabe que una _variable aleatoria es una función_ que tiene _dominio en el espacio muestral_ $Omega$ y _toma valores en_ $RR$. Sin embargo, este concepto se puede expandir a $RR^n$, y por tanto, definir una función $f: Omega arrow.long RR^n$. Visto de otra manera:
$
w mapsto (cal(X)_1(w), cal(X)_2(w), dots, cal(X)_n (w)) = cal(X)(w)
$
A esta nueva función se le conoce como _vector aleatorio_.

#definition("Vector Aleatorio")[
  Decimos que $cal(X)$ es un *vector aleatorio* si
  $ cal(X) = (cal(X)_1(w), cal(X)_2(w), dots, cal(X)_n (w)) $
  donde cada $cal(X)_i$ es una variable aleatoria.
]

#example()[
  Se lanza un dado 2 veces. Definimos las siguientes variables aleatorias.
  $ cal(X)_1 := "Valor máximo de los lanzamientos" $
  $ cal(X)_2 := "Valor mínimo de los lanzamientos" $
  $ cal(X)_3 := "La suma de los valores en los lanzamientos" $

  Con lo anterior, nuestro espacio muestral es el siguiente.
  #set math.mat(gap: 1em)
  $
  Omega = mat(
    (1,1) , (1,2) , (1,3) , (1,4) , (1,5) , (1,6);
    (2,1) , (2,2) , (2,3) , (2,4) , (2,5) , (2,6);
    (3,1) , (3,2) , (3,3) , (3,4) , (3,5) , (3,6);
    (4,1) , (4,2) , (4,3) , (4,4) , (4,5) , (4,6);
    (5,1) , (5,2) , (5,3) , (5,4) , (5,5) , (5,6);
    (6,1) , (6,2) , (6,3) , (6,4) , (6,5) , (6,6)
    )
  $

  Supongamos que en los dados obtuvimos los valores de 4 y 3. En este caso nuestro vector $cal(X)$ se ve como:
  $
  cal(X)((4,3)) = (cal(X)_1((3,4)), space.med cal(X)_2((3,4)), space.med cal(X)_3((3,4))) = (4,3,7)
  $
  Notese que se obtuvo un vector en $RR^3$.
]

Al igual que las variables aleatorias, los vectores aleatorios se dividen en _discretos_ y _continuos_ de acuerdo con las variables que los definen. 

#definition("Vector Aleatorio Discreto")[
  Decimos que un _vector aleatorio_ $cal(X) = (cal(X)_1, cal(X)_2, dots, cal(X)_n)$ es *discreto* si $forall i = 1, dots, n, space.med cal(X)_i$ es una variable aleatoria discreta.
]

#definition("Vector Aleatorio Continuo")[
  Decimos que un _vector aleatorio_ $cal(X) = (cal(X)_1, cal(X)_2, dots, cal(X)_n)$ es *continuo* si $forall i = 1, dots, n, space.med cal(X)_i$ es una variable aleatoria continua.
]

=== Función de Probabilidad Conjunta

De la misma manera, podemos calcular la probabilidad de que el vector aleatorio tome ciertos valores con la siguiente definición.

#definition("Función de Probabilidad Conjunta")[
  La *función de probabilidad conjunta* de dos variables aleatorias $cal(X)$ y $cal(Y)$, denotada $f_(cal(X), cal(Y))(x,y)$, es la función que asigna a cada par de valores $(x,y)$ la probabilidad de que las variables aleatorias $cal(X)$ y $cal(Y)$ tomen esos valores simultáneamente.

  $
  f_(cal(X), cal(Y))(x,y) = P(cal(X) = x, space.med cal(Y) = y)
  $
  donde $(x,y)$ está en la imagen de $(cal(X), space.med cal(Y))$. En caso contrario, la función vale 0.
]

#note()[
  La definición anterior está dada para 2 variables aleatorias, pero se puede extender para $n$ variables con $P(cal(X)_1 = x_1, space.med cal(X)_2 = x_2, space.med dots, space.med cal(X)_n = x_n)$
]

#example()[
  Se lanza una moneda justa tres veces consecutivas y deseamos analizar el comportamiento de las siguientes variables aleatorias.

  $ cal(Y) = "Número de soles obtenidos en las primeros dos lanzamientos" $
  $ cal(X) = "Número de soles obtenidos en las últimos dos lanzamientos" $

  El espacio muestral se puede ver como
  #set math.mat(gap: 0.8em)
  $
  Omega = mat(
      A A A , A S A;
      A A S , A S S;
      S A A , S A S;
      S S A , S S S,
  )
  $
  Con esto tenemos que nuestras variables pueden tomar los valores ${0,1,2}$, y entonces podemos obtener las siguientes probabilidades.
  $
  P(cal(X) = 0, space.med cal(Y) = 0) = 1 slash 8 space.quad
  P(cal(X) = 0, space.med cal(Y) = 1) = 1 slash 8 space.quad
  P(cal(X) = 0, space.med cal(Y) = 2) = 0\
  P(cal(X) = 1, space.med cal(Y) = 0) = 1 slash 8 space.quad
  P(cal(X) = 1, space.med cal(Y) = 1) = 1 slash 4 space.quad
  P(cal(X) = 1, space.med cal(Y) = 2) = 1 slash 8\
  P(cal(X) = 2, space.med cal(Y) = 0) = 0 space.quad
  P(cal(X) = 2, space.med cal(Y) = 1) = 1 slash 8 space.quad
  P(cal(X) = 2, space.med cal(Y) = 2) = 1 slash 8
  $
]
