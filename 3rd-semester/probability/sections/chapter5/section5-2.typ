#import "../../lib.typ":*

== Distribuciones Absolutamente Continuas

Dada una variable aleatoria $cal(X)$ _continua_, su correspondiente función de distribución es *continua*. Se tienen los siguientes casos:

- Singulares: La función de densidad *no existe*.
- Absolutamente continuas: 
$
F'_cal(X)(x) = f_cal(X)(x) 
space.quad "y" space.quad
P(a < cal(X) < b) = integral_a^b f_cal(X)(x) dif x
$

=== Distribución Uniforme Continua

#definition("Distribución Uniforme Continua")[
  Una _variable aleatoria $cal(X)$_ tiene *distribución Uniforme Continua* y se denota $cal(X) tilde "Unif"(a,b)$ si su *función de densidad* es la siguiente.
  $
  f_cal(X)(x) = cases(
    1/(b-a) & "si" x in (a,b),
    0 & "en otro caso"
  )
  = f_cal(X)(x) = 1/(b-a) harpoon.tl.bar _((a,b))^x
  $
]

#note()[
  Se observa que $f(x) >= 0$ y $integral_(-infinity)^infinity f_cal(X)(x) dif x = 1$
  $
  integral_(-infinity)^infinity f_cal(X)(x) space.med harpoon.tl.bar_((a,b))^x space.med dif x &= integral_(-infinity)^a 1/(b-a) dot 0 dif x + integral_a^b 1/(b-a) dif x + integral_b^infinity 1/(b-a) dot 0 dif x\
  &= integral_a^b (dif x)/(b-a) \
  &= 1/(b-a) integral_a^b dif x = 1/(b-a) (b-a) = (b-a)/(b-a) = 1
  $
]

Calculemos la función de la distribución Uniforme.

$
F_cal(X)(c) = P(cal(X) <= c) = integral_(-infinity)^c 1/(b-a)  harpoon.tl.bar_((a,b))^x dif x
$
Si $c <= a$
$
F_cal(X)(c) = integral_(-infinity)^c 1/(b-a) harpoon.tl.bar_((a,b))^x dif x = integral_(-infinity)^c 1/(b-a) dot 0 dif x= 0
$

Si $c in (a,b)$
$
F_cal(X)(c) = integral_(-infinity)^c 1/(b-a)  harpoon.tl.bar_((a,b))^x dif x = integral_a^c 1/(b-a) dif x = (c-a)/(b-a)
$

Si $c >= b$
$
F_cal(X)(c) = integral_(-infinity)^b 1/(b-a)  harpoon.tl.bar_((a,b))^x dif x + integral_b^c 1/(b-a)  harpoon.tl.bar_((a,b))^x dif x = integral_a^b 1/(b-a) dif x = 1
$

#definition("Función de Distribución")[
  Dada $cal(X) tilde "Unif"(a,b)$. Su *función de distribución* está dada por
  $
  F_{cal(X)}(c) = cases(
    0 & space.quad "si" c <= a,
    (c-a)/(b-a) & space.quad "si" c in (a,b),
    1 & space.quad "si" c >= b
  )
  $
]

=== Distribución Normal Estándar o Gaussiana

#definition("Distribución Normal Estándar o Gaussiana")[
  Una _variable aleatoria $cal(X)$_ tiene *distribución Normal Estándar* si su función de densidad es 
  $
  phi(x) = e^(-(x^2)/(2))/(sqrt(2pi)), space.quad x in RR
  $
]

#note()[
  Se tiene que
  $
  phi(x) >= 0 space.quad "y" space.quad integral_(- infinity)^infinity phi(x) dif x = 1
  $
  Pero recordemos que la función de densidad Normal
  $
  phi(x) = e^(-(x^2)/(2))/(sqrt(2pi))
  $
  *no* tiene antiderivada.
]

Si $cal(X) tilde "N"(0,1)$, entonces $cal(X)$ es *variable aleatoria normal estándar*.

Si $cal(X) tilde "N"(y,sigma)$, entonces $cal(X)$ es *variable aleatoria normal con parámetros* $y in RR$ y $sigma != 0$.

#note()[
  Observemos que si $cal(X) tilde "N"(0,1)$ entonces $y equiv 0,space.med sigma equiv 0$
]

Cuando hablamos de esta distribución, usualmente se trabaja con una _Tabla de la Distribución Normal_

#example()[
  Sea $cal(X) tilde "N"(-1,3)$, donde $y = -1, space.med sigma = 3$
  Entonces $cal(X) = -1 + 3 cal(Z)$, con $cal(Z) tilde "N"(0,1)$

  Se tiene que
  $
  P(cal(X) <= -1.06) &= P(-1 + 3 cal(Z) <= -1.06)\
                &= P(3 cal(Z) <= -1.06 + 1)\
                &= P(cal(Z) <= (-1.06+1)/3)\
                &= P(cal(Z) <= 0.02) = 0.5080
  $
  Los valores como $0.5080$ son obtenidos de la tabla mencionada.
]

=== Distribución Exponencial

Esta distribución es el _equivalente continuo_ a la distribución geométrica. Entonces, esta distribución modela el tiempo que transcurre hasta que ocurre un evento determinado.

#definition("Distribución Exponencial")[
  Una variable aleatoria $cal(X)$ tiene *distribución Exponencial* con parámetros $lambda > 0$ si su función de densidad es
  $
  f_cal(X)(x) = cases(
      lambda e^(-lambda x) & space.quad "si" x > 0,
      0 & space.quad "si" x <= 0
  )
  $
  Se donota como $cal(X) tilde "exp"(lambda)$
]

=== Distribución Gamma

Definamos una función $g$ de la siguiente manera.

$
g(x) = cases(
    x^(alpha - 1)e^(-lambda x) & space.quad "si" x > 0,
    0 & space.quad "en otro caso"
)
$

Para que $g$ sea integrable, requerimos que $alpha, lambda > 0$.

Notemos que $g(x) >= 0, space.med forall x in RR$ (su soporte son los números positivos)

Ahora encontremos el valor de $c$ tal que
$
integral_(-infinity)^infinity c g(x) dif x = 1
$

Se tiene que

$
integral_(-infinity)^infinity c g (x) dif x &= integral_(-infinity)^infinity c x^(alpha - 1) e^(- lambda x) harpoon.tl.bar_((0,infinity))^x dif x = c integral_0^infinity x^(alpha - 1)e^(- lambda x) dif x\
&= c integral_0^infinity (u/lambda)^(alpha - 1) e^(-u) (dif u)/lambda = c/(lambda^alpha) integral_0^infinity u^(alpha-1) e^(-u) dif u
$

Dado que buscamos 
$
c/(lambda^alpha) integral_0^infinity u^(alpha-1) e^(-u) dif u = 1
$
y que 
$
integral_0^infinity u^(alpha-1) e^(-u) dif u
$
es la *Función Gamma* $Gamma(alpha)$
$
therefore c = (lambda^alpha)/(Gamma(alpha))
$

#definition("Densidad Gamma")[
  La siguiente función se conoce como la *densidad gamma*.
  $
  g(x) = cases(
    (lambda^alpha)/(Gamma(alpha))x^(alpha-1)e^(-lambda x) & space.quad "si" x > 0,
    0 & space.quad "en otro caso" x <= 0
  )
  $
  donde
  $
  Gamma(alpha) = integral_0^infinity u^(alpha - 1)e^(-u) dif u
  $
]

#definition("Distribución Gamma")[
  Dada una variable aleatoria que tenga la densidad gamma. $cal(X)$ tiene *distribución Gamma* con parámetros $lambda > 0$ y $alpha > 0$ denotado por $cal(X) tilde Gamma(alpha, lambda)$
]

#note()[
  Si tomamos $alpha = 1$ se tiene que
  $
  Gamma(1) = integral_0^infinity u^(1 - 1)e^(-u) dif u = integral_0^infinity e^(-u) dif u = -e^(-u) lr(|,size: #300%)_0^infinity = 1
  $
  Reemplazando en la densidad se obtiene
  $
  g(x) = cases(
      (lambda^1)/(Gamma(1))x^(1-1)e^(-lambda x) & space.quad "si" x >0,
      0 & space.quad "otro caso" x <= 0
  )
  $
  Por tanto
  $
  g(x) = cases(
    lambda e^(-lambda x) & space.quad "si" x >0,
    0 & space.quad "si" x <= 0
  )
  $
  Donde la función obtenida es la _distribución exponencial_. Así que la distribución exponencial es un caso particular de la densidad gamma.
]

==== Propiedades de la Función Gamma

Las siguientes son propiedades de la _Función Gamma_ (no necesariamente de la densidad gamma).

- 
$ Gamma(1) = 1 $
#proof()[ Ejercicio ]
- 
$ Gamma(1, lambda) tilde exp(lambda) $
#proof()[ Ejercicio ]
- 
$ Gamma(1/2) = sqrt(pi) $
#proof()[ Ejercicio ]
- 
$ Gamma(x + 1) = x Gamma(x),space.med forall x in RR^+ $
#proof()[ Ejercicio ]
- 
$ "Si" n in NN arrow.double.long Gamma(n + 1) = n! $
#proof()[ Ejercicio ]

=== Variables Aleatorias Simétricas

#definition("Función de Densidad Simétrica")[
  Una función de densidad $f$ es *simétrica* si $f$ es una función _par_, es decir, 
  $
  f(x) = f(-x), space.med forall x in RR
  $
]

#definition("Variable Aleatoria Simétrica")[
  Una _variable aleatoria $cal(X)$_ es *simétrica* si $cal(X)$ y $-cal(X)$ tienen la misma función de distribución, es decir,
  $
  F_cal(X)(a) = F_(-cal(X)) (a),space.med forall a in RR
  $
  Lo anterior se denota como ($cal(X) tilde^d cal(-X)$)
]

#theorem()[
  Una _variable aleatoria $cal(X)$_ *es simétrica si y solo si su función de densidad es simétrica* (su función de densidad es par).
]

#proof()[
  $arrow.l.double.long$ Supangamos que la función de densidad es par (simétrica). 

  Buscamos probar que $F_cal(-X)(a) = F_cal(X)(a) space.med forall a in RR$

  Observemos que $w in {-cal(X) <= a},space.med -cal(X) (w) <= a arrow.double.l.r.long cal(X)(w) >= -a$
  $
  F_(-cal(X))(a) = P(-cal(X) <= a) = P(cal(X) >= -a) = integral_(-a)^infinity f(u) dif u
  $
  donde $u = -v$ y $dif u = -dif v$

  $
  F_(-cal(X))(a) = - integral_a^(-infinity) = f(-v) dif v = integral_(-infinity)^a = f(-v) dif v = integral_(-infinity)^a = f(v) dif v = P(cal(X) <= a) = F_cal(X)(a)
  $
  $ therefore space.med cal(X) "es simétrica" $
  $arrow.long.double$ Ejercicio
]

#example()[
  Dada $cal(X) tilde "N"(0,1)$. $cal(X)$ es una _variable aleatoria simétrica_ porque $phi(x) = phi(-x)$
]

#lemma()[
  Si $cal(X)$ es una _variable aleatoria simétrica_, entonces 
  $
  F_cal(X)(0) = 1/2
  $
]

#proof()[
  $
  F_cal(X)(0) = P(cal(X) <= 0) = 1 - P(cal(X) >= 0) = 1 - P(-cal(X) >= 0) = 1 - P(cal(X) <= 0)
  $
  Este hecho se justfica porque
  $
  w in {-cal(X)  >= 0} arrow.l.r.double.long -cal(X)(w) >= 0 arrow.l.r.double.long cal(X)(w) <= 0 arrow.l.r.double.long w in {cal(X) <= 0}
  $
  Entonces
  $
  P(cal(X) <= 0) = 1 - P(cal(X) <= 0) arrow.double.long 2P(cal(X) <= 0)= 1 arrow.double P(cal(X) <= 0) = 1/2
  $
]

#lemma()[
  Si $cal(X)$ es una _variable aleatoria simétrica_, entonces 
  $
  F_cal(X)(-a) = 1 - F_cal(X)(a)
  $
]

#proof()[
  $
  F_cal(X)(-a) = P(cal(X) <= -a) = P(-cal(X) <= -a) = P(cal(X) >= a)= 1 - P(cal(X) <= a) = 1 - F_cal(X)(a)
  $
]

=== Teorema de Cambio de Variable

#theorem("Teorema de Cambio de Variable")[
  Sea $cal(X)$ una _variable aleatoria absolutamente continua_ con valores en $(a,b) subset.eq RR$. Sea $g : (a,b) arrow.long RR$ una función continua estrictamente creciente o decreciente con inversa diferenciable. Entonces la variable aleatoria $cal(Y) = g(cal(X)) = g compose cal(X) : Omega arrow.long RR$ tiene la función de densidad siguiente.

  #set math.cases(gap: 1em)
  $
  f_cal(Y)(y) = cases(
    f_cal(X) (g^(-1)(y)) abs(dif /(dif y) g^(-1)(y)) & space.quad "si" y in g(a,b),
      0 & space.quad "otro caso"
  )
  $
]

#proof()[
  Tan evidende que no se muestra (es mucho, está en las notas).
]

#example()[
  Sea $cal(X)$ una _variable aleatoria_ Normal Estándar, y definimos $cal(Y) = y + sigma cal(X)$ con $y in RR,space.med sigma > 0$.

  Calculemos la función de densidad de $cal(Y)$

  Se tiene $cal(Y) = g(cal(X))$ donde $cal(X)$ es Normal Estándar
  $
  f_cal(X)(x) = e^(-(x^2)/2)/sqrt(2pi)
  $

  Notemos que
  $
    g(s) = y + sigma s arrow.long.double g^(-1)(s) = (s-y)/sigma
  $

  Aplicando el teorema de cambio de variable.
  $
  f_cal(Y)(x) &= f_cal(X)(g^(-1)(x)) abs(dif/(dif x) g^(-1)(x))\
  &= e^(-(g^(-1)(x)^2)/2)/sqrt(2pi) abs(dif/(dif x) g^(-1)(x))\
  &= e^(-1/2((x-y)/sigma)^2)/sqrt(2pi) abs(dif/(dif x)((x-y)/sigma))\
  &= e^(-1/2((x-y)/sigma)^2)/(sqrt(2pi)sigma)
  $
  Entonces, la función de densidad de $cal(Y) = y + sigma cal(X), space.med y in RR, space.med sigma > 0$ es 
  $
  f_cal(Y)(x) = e^(-1/2((x-y)/sigma)^2)/(sqrt(2pi)sigma)
  $

  Por tanto, $cal(Y)$ es una variable aleatoria con distribución Normal
]

=== Propiedad de Pérdida de Memoria

La variable aleatoria exponencial y la geométrica son las unicas que satisfacen la siguiente propiedad.

Sea $cal(X) tilde exp(lambda)$ y sean $a,b >= 0$. Entonces se satisface lo siguiente.
$
P(cal(X) > a + b bar.v cal(X) > b) = P(cal(X) > a)
space.quad text(bold("Propiedad de Pérdida de Memoria"))
$

Lo anterior se puede entender como "la probabilidad de que un evento ocurra en el futuro no depende del tiempo transcurrido sin que este evento haya sucedido". Así, este tipo de variables aleatorias nos permiten modelar fenomenos donde su riesgo de ocurrencia no cambia con el tiempo.

#note()[
  Dado que estamos trabajando con probabilidad condicional, se tiene lo siguiente.
  $
  P(cal(X) > a + b bar.v X > b) = (P(cal(X) > a + b, space.med cal(X) > b))/(P(cal(X) > b)) = (P(cal(X) > a + b))/(P(cal(X) > b)) = P(cal(X) > a)
  $
  Por tanto
  $
  P(cal(X) > a + b) = P(cal(X) > a) space.med P(cal(X) > b)
  $
  Lo anterior se justfica de manera gráfica y usando la propiedad de perdida de memoria.
]

#theorem()[
  Sea $cal(X)$ una variable aleatoria tal que satisface
  $
  P(cal(X) > a + b bar.v cal(X) > b) = P(cal(X) > a) space.quad "con" a,b >= 0
  $
  Entonces
  $
  P(cal(X) > 0) = 0 space.quad "ó" space.quad cal(X) tilde exp(lambda)
  $
]
