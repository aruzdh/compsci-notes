#import "../../lib.typ" :*

== Ejercicios

#exercise()[
  Demostrar que todas las funciones de probabilidad dadas en esta sección son, efectivamente, funciones de probabilidad.
]

#exercise()[
  Una vez hecho lo anterior, calcular las respectivas funciones de distribución.
]

#exercise()[
  Una empresa que produce cristal fino sabe por experiencia que el 10\% de sus copas tienen defectos estéticos y deben clasificarse como "segundos".
  De 6 copas elegidas al azar:
  - ¿Cuál es la probabilidad de que solo una sea una segunda?
  - ¿Cuál es la probabilidad de que al menos 2 sean segundas?
]

#exercise()[
  Supongamos que el 30\% de todos los estudiantes que tienen que comprar un texto para un curso en particular quiere una nueva copia, mientras que el 70\% restante quiere una copia usada.Considerando que se seleccionan al azar 25 compradores, ¿cuál es la probabilidad de que más de 5 de ellos haya comprado una copia usada?
]

#exercise()[
  Un ingeniero de seguridad automotriz afirma que 1 de cada 10 accidentes automovilísticos son causados por fatiga del conductor. ¿Cuál es la probabilidad de que al menos 3 de 5 accidentes sean causados por esta razón?
]

#exercise()[
  En determinada demarcación, la incompatibilidad se da como la razón legal en el 70\% de todos los casos de divorcio. Encuentra la probabilidad de que 5 de los 6 casos siguientes de divorcio registrados en esta ciudad den la incompatibilidad como razón legal.
]

#exercise()[
  Una empresa que produce cristal fino sabe por experiencia que el 10\% de sus copas tienen defectos estéticos y deben clasificarse como "segundos". De 6 copas elegidas al azar ¿cuál es la probabilidad de que se elijan a los más 5 copas para encontrar una segunda?
]

#exercise()[
  Suponga que en una caja hay N pelotas, de las cuales m son azules y $N-m$ son amarillas. Se escogen al azar n pelotas. Sea $cal(X)$ la v.a. que denota el número de pelotas azules seleccionadas. Encuentra la función de probabilidad de masa de $cal(X)$.
]

#exercise()[
  La probabilidad de que una persona crea una noticia falsa que proviene de redes sociales es de 0.75.Encuentra las probabilidades de que:
  - La octava persona que lea esta noticia falsa sea la quinta en creerla.
  - La décima quinta en leerla sea la décima en creerla.
]

#exercise()[
  Sea $cal(X) tilde "Geo"(p)$. Demuestra que:
  $
  P(cal(X)= n+k bar.v cal(X) > n) = P(cal(X) = k)
  $
]

#exercise()[
  Cinco individuos de una población animal que se cree que está al borde de la extinción en una determinada región han sido capturados, etiquetados y liberados para mezclarse con la población. Después de haber tenido la oportunidad de mezclarse, se toma una muestra aleatoria de 10 de estos animales. Si hay 25 animales de este tipo en la región, ¿cuál es la probabilidad de que se tomaran a lo más 2 animales etiquetados?
]

#exercise()[
  Si un editor de libros no técnicos hace todo lo posible porque sus libros estén libres de errores tipográficos, de modo que la probabilidad de que cualquier página dada contenga por la menos uno de esos errores es de 0.005 y los errores son independientes de una página a otra, ¿cuál es la probabilidad de que una de sus novelas de 400 páginas contenga exactamente una página con errores? ¿Cuál es la probabilidad de que máximo tres páginas tengan errores?
]

#exercise()[
  Demostrar que todas las funciones de densidad dadas en esta sección son, efectivamente, funciones de densidad.
]

#exercise()[
  Una vez hecho lo anterior, calcular las respectivas funciones de distribución.
]

#exercise()[
  Dada $cal(X) tilde exp(lambda)$ y su respectiva función de densidad. Verificar que $cal(X)$ satisface lo siguiente.
  $
  P(cal(X) > a + b) = P(cal(X) > a) space.med P(cal(X) > b)
  $
]

#exercise()[
  La variable $cal(X)$ tiene la densidad dada por
  $
  f(x)=1/2e^(-abs(x)), space.med -infinity < x < infinity
  $
  Encuentra $P(1 <= abs(cal(X)) <= 2)$.
]

#exercise()[
  Encuentra la función de distribución de la v.a. $cal(X)$ cuya densidad de probabilidad está dada por
  $
  f(x) = cases(
      x & space.quad "si" x in (0,1),
      2-x & space.quad x in [1,2),
      0 & space.quad "otro caso"
  )
  $
    Bosqueja las gráfica de la función.
]

#exercise()[
  Sea $cal(X) tilde "N"(mu,sigma^(2))$. Encuentra la densidad de $Y=e^(cal(X))$
]

#exercise()[
  Sea $cal(X)$ una variable aleatoria con función de densidad $f_cal(X)$. Encuentra la función de densidad de la variable aleatoria $cal(Y) = cal(X)^2$
]

#exercise()[
  Sea $cal(X) tilde "Unif"(0,1)$. Encuentra las funciones de densidad y distribución de la variable aleatoria
  $
  cal(Y) = (-ln(1- cal(X)))/lambda
  space.quad
  "para" lambda > 0
  $
]

#exercise()[
  Sea $cal(X) tilde "N"(1,4)$. Calcula $P(0 <= cal(X) <= 3)$.
]

#exercise()[
  Sea $cal(X) tilde "Unif"(0,1)$. Encuentra la función de densidad de $cal(Y) = cal(X)^(1/alpha)$ con $alpha != 0$
]

#exercise()[
  Demostrar las propiedades de la Función Gamma dadas en la subsección respectiva.
]
