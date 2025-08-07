#import "../../lib.typ":*

== Esperanza
=== Definición (caso discreto)

#definition("Esperanza (caso discreto)")[
  Si $cal(X)$ es una variable aleatoria _discreta_ con función de probabilidad $f_cal(X)(x) = P(cal(X) = x)$. Entonces la *esperanza o valor esperado* de $cal(X)$, denotada $"E"(cal(X))$, está definida de la siguiente manera.
  $
  "E"(cal(X)) = sum_i i P(cal(X) = i)
  $
  Donde la suma es sobre todos los valores que toma la variable aleatoria $cal(X)$, y por ende, $"E"(cal(X))$, es un valor real, no una variable aleatoria.
]

#note()[
  El valor esperado es un _promedio ponderado_ de los posibles valores que $cal(X)$ puede tomar. Cada valor que $cal(X)$ puede tomar se pondera por su respectiva probabilidad.
]

#example()[
  Sea la variable aleatoria $cal(X) tilde "Ber"(p)$.
  $
  "E"(cal(X)) = 0 dot P(cal(X) = 0) + 1 dot.c P(cal(X) = 1) = 0 dot.c (1-p) + 1 dot.c p = p
  $
]

#example()[
  Encuentra el valor esperado de $cal(X)$ donde $cal(X)$ es el resultado del lanzamiento de un dado justo.
  $
  "E"(cal(X)) &= sum_(i = 1)^6 i P(cal(X) = i) = sum_(i = 1)^6 i 1/6 = 1/6 sum_(i = 1)^6\
              &= 1/6 (1+2+3+4+5+6) = 21/6 = 3.5 in RR
  $
]

#note()[
  Aunque una variable aleatoria $cal(X)$ solo tome valores enteros, $"E"(cal(X))$ no necesariamente es un número entero.
]

=== Definición (caso continuo)

#definition("Esperanza (caso continuo)")[
  Si $cal(X)$ es una variable aleatoria continua con función de densidad $f_cal(X)(x)$. Definimos su valor esperado como sigue a continuación.
  $
  "E"(cal(X)) = integral_(- infinity)^infinity x f_cal(X)(x) dif x
  $
]

#example()[
  Sea $cal(X) tilde "exp"(lambda)$ con $f_cal(X)(x) = lambda e^(-lambda x) space.med  harpoon.tl.bar_((0, infinity))^x$. Se tiene lo siguiente.
  $
  "E"(cal(X)) &= lambda integral_(- infinity)^infinity x e^(-lambda x) harpoon.tl.bar_((0, infinity))^x dif x\
                  &= lambda integral_0^infinity x e^(-lambda x) dif x\
                  &= lambda [- x/lambda e^(- lambda x) lr(|,size: #300%)_0^infinity + 1/lambda integral_0^infinity e^(-lambda x) dif x]\
                  &= - 1/lambda e^(-lambda x) lr(|,size: #300%)_0^infinity = (e^(lambda (0)))/lambda = 1/lambda
  $
  $
  therefore "si" cal(X) tilde exp(lambda), "entonces" "E"(cal(X)) = 1/lambda
  $
]

#example()[
  Sea $cal(X) tilde "Bin"(n,p)$. Demuestra que $"E"(cal(X)) = n p$
  $
  "E"(cal(X)) = sum_(i=0)^n i binom(n,i) p^i (1-p)^(n-i) 
    &= sum_(i=1)^n binom(n,i) i p^i (1-p)^(n-i) \
    &= sum_(i=1)^n (n!)/(i!(n-i)!) i p^i (1-p)^(n-i) \
    &= sum_(i=1)^n (n!)/((i-1)!(n-i)!) p^i (1-p)^(n-i) \
    &= n p sum_(i=1)^n ((n-1)!)/((i-1)!(n-i)!) p^(i-1) (1-p)^(n-i) \
    &= n p sum_(i=1)^n binom(n-1,i-1) p^(i-1) (1-p)^(n-i) \
    &= n p sum_(j=0)^(n-1) binom(n-1,j) p^j (1-p)^(n-1-j) space.quad space.quad k = i-1 \
    &= n p space.med (p + (1-p))^(n-1) = n p
  $
]

=== Esperanza de una Composición

#proposition()[
  Sea $cal(X)$ una variable aleatoria discreta, y _g_ una función real. Entonces
  $
  "E"(g(cal(X))) = sum_i g(i)P(cal(X) = i)
  space.quad space.quad
  "donde" cal(Y) = g(cal(X))
  $
]

#proposition()[
  Sea $cal(X)$ una variable aleatoria continua con función de densidad $f_cal(X)$, y _g_ una función real. Entonces
  $
  "E"(g(cal(X))) = integral_(- infinity)^infinity g(x)f_cal(X)(x) dif x
  space.quad space.quad
  "donde" cal(Y) = g(cal(X))
  $
]

#example()[
  Sea $cal(X)$ una variable aleatoria tal que
  $
  P(cal(X) = -1) = 0.2 space.quad space.quad 
  P(cal(X) = 0) = 0.5 space.quad space.quad 
  P(cal(X) = 1) = 0.3
  $
  Calcula la $"E"(cal(X)^2)$.
  - Usando $cal(Y) = cal(X)^2$ y calculando $P(cal(Y) = i)$

    $cal(X)^2 = cal(Y) in {0,1}$

  $ P(cal(Y) = 0) = P(cal(X) = 0) = 0.5 $
  $ P(cal(Y) = 1) = P(cal(X) = 1) + P(cal(X) = -1) = 0.3 + 0.2 = 0.5 $
  Así,
  $
  \E(cal(X)^2) = 0 dot.c P(cal(X)^2 = 0) + 1 dot.c P(cal(X)^2 = 1) = 1 dot.c P(cal(Y) = 1) = 0.5
  $
  - Usando la proposición
  $
  "E"(cal(X)^2) &= sum_(i = -1)^1 (i)^2 P(cal(X) = i)\
                  &= (-1)^2 dot.c P(cal(X) = -1) + 0^2 dot.c P(cal(X) = 0) + 1^2 dot.c P(cal(X) = 1)\
                  &= 1 dot.c (0.2) + 0 dot.c (0.5) + 1 dot.c (0.3) = 0.5
  $
]

=== Propiedades

Las siguientes son propiedades de la esperanza o valor esperado. Sea $cal(X),space.med cal(Y)$ variables aleatoria con función de densidad $f_cal(X),space.med f_cal(Y)$, respectivamente.
- 
$ "E"(c) = c,space.med c in RR $
#proof()[
  $
  E(c) = integral_(- infinity)^infinity c f_cal(X)(x) dif x = c integral_(-infinity)^infinity f_cal(X)(x) dif x = c dot.c 1 = c
  $
]

-
$ "E"(c cal(X)) = c "E"(cal(X)),space.med c in RR $
#proof()[
  $
  "E"(c cal(X)) = integral_(- infinity)^infinity c x f_cal(X)(x) dif x = c integral_(- infinity)^infinity x f_cal(X)(x) dif x = c "E"(cal(X))
  $
]

-
$ "E"(cal(X) + cal(Y)) = "E"(cal(X)) + "E"(cal(Y)) $

-
$ "Si" P(cal(X) >= 0) = 1 "(es decir," space.med cal(X) >= 0 "casi seguramente), entonces" E(cal(X)) >= 0 $
#proof()[
  $
  "E"(cal(X)) = integral_(- infinity)^infinity x f_cal(X)(x) dif x = integral_(-infinity)^0 x f_cal(X)(x) dif x + integral_0^infinity x f_cal(X)(x) dif x
  $
  Por hipótesis se concluye lo siguiente.
  $
  "E"(cal(X)) = integral_0^infinity x f_cal(X)(x) dif x >= 0
  $
]

-
$ "Si" P(cal(X) <= cal(Y)) = 1 "(es decir," space.med cal(X) <= cal(Y) "casi seguramente), entonces" E(cal(X)) <= E(cal(Y)) $
#proof()[
  $
  P(cal(X) <= cal(Y)) = 1 arrow.double.long P(cal(Y) - cal(X) >= 0) = 1 arrow.double.long "E"(cal(Y) - cal(X)) >= 0 space.quad space.quad space.quad "por" (4)
  $
  Por (3) se tiene lo siguiente.
  $
  "E"(cal(Y) - cal(X)) = "E"(cal(Y)) + "E"(cal(-X)) = E(cal(Y)) - E(cal(X)) >= 0 arrow.long.double E(cal(X)) <= E(cal(Y))
  $
]

-
$ abs("E"(cal(X))) <= "E"(abs(cal(X))) $
#proof()[
  Notemos que $- abs(cal(X)) <= cal(X) <= abs(cal(X))$ casi seguramente.

  Por (5) se tiene que
  $
  -"E"(abs(cal(X))) <= "E"(cal(X)) <= "E"(abs(cal(X)))
  arrow.double.long
  abs("E"(cal(X))) <= E(abs(cal(X)))
  $
]

#note()[
  La propiedad _2_ y _3_ nos dicen que _la esperanza es lineal_.
]
