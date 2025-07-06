#import "../../lib.typ": *

== Linear Transformations, Null Spaces, and Ranges

Recall that a function $T$ with domain $V$ and codomain $W$ is denoted by $T : V arrow.long W$

#definition("Linear Transformation")[
  Let $V$ and $W$ be vector spaces (over $KK$). We call a function $T : V arrow.long W$ a *linear transformation from $V$ to $W$* if, $forall x,y in V$, and $forall lambda in KK$, we have
  - $T(x + y) = T(x) + T(y)$ and 
  - $T(lambda x) = lambda T(x)$
]

#note[
  We often simply call $T$ *linear*.
]

#proposition[
  Let $T : V arrow.long W$ be a function.
  + If $T$ is linear, then $T(0) = 0$
  + $T$ is linear if and only if $T(lambda x + y) = lambda T(x) + T(y), forall x,y in V, lambda in KK$
  + If $T$ is linear, then $T(x - y) = T(x) - T(y), forall x,y in V$
  + $T$ is linear if and only if, for $x_1, x_2, dots, x_n in V$ and $lambda_1, lambda_2, dots, lambda_n in KK$, we have
  $ T(sum_(i = 1)^n lambda_i x_i) = sum_(i = 1)^n lambda_i T(x_i) $
]

#tip[
  We generally use property 2 to prove that a given transformation is linear.
]

#example[
  Define
  $ T: RR^2 arrow.long RR^2 "by" T(a_1, a_2) = (2a_1 + a_2, a_1). $
  To show that $T$ is linear, let $lambda in RR$ and $x,y in RR^2$, where $x = (b_1, b_2)$ and $y = (d_1, d_2)$. Since $ lambda x + y = (lambda b_1 + d_1, lambda b_2 + d_2), $
  we have
  $ T(lambda x + y) = (2(lambda b_1 + d_1) + lambda b_2 + d_2, lambda b_1 + d_1) $
  Also
  $ 
  lambda T(x) + T(y) &= lambda (2b_1 + b_2, b_1) + (2d_1 + d_2, d_1)\
  &= (2 lambda b_1 + lambda b_2 + 2 d_1 + d_2, lambda b_1 + d_1)
  $

  So $T$ is linear. 🤓☝️
]

#example[
  Let $V = C(RR)$, the vector space of continuous real-valued functions on $RR$. Let $a,b in RR, a < b$. Define $T : V arrow.long RR$ by
  $ T(f) = integral_a^b f(t) space.en dif t , space.quad forall f in V. $
  Then $T$ is linear because the definite integral of a linear combination of functions is the same as the linear combination of the definite integral of the functions.
]

#definition("Identity, and Zero Transformation")[
  For vector spaces $V$ and $W$ (over $KK$), we define the *identity transformation* $I_v : V arrow.long V$ by $I_(v)(x) = x, forall x in V$, and the *zero transformation* $T_(0) : V arrow.long W$ by $T_(0)(x) = 0, forall x in V$.
  We often write $I$ instead of $I_v$.
]

#definition("Null Space (Kernel), and Range (image)")[
  Let $V$ and $W$ be vector spaces, and let $T: V arrow.long W$ be linear. 
  We define the *null space* (or *kernel*) of $T$ as follows: $ "N"(T) = {x in V : T(x) = 0} subset.eq V. $

  We define the *range* (or *image*) of $T$ as follows:
  $ "R"(T) = {T(x) : x in V} subset.eq W $
]

#example[
  Let $V$ and $W$ be vector spaces, and let $I : V arrow.long V$ and $T_0 : V arrow.long W$. Then $"N"(I) = {0}$, $"R"(T) = V$, $"N"(T_0) = V$, and $"R"(T_0) = {0}$.
]

#example[
  Let $T : RR^3 arrow.long RR^2$ be the linear transformation defined by $T(a_1, a_2, a_3) = (a_1 - a_2, 2a_3)$.
  It is to verify that 
  $ "N"(T) = {(a,a,0) : a in RR} space.quad "and" space.quad "R"(T) = R^2. $
]

In those two examples, we see that the range and null space of each of linear transformations is a subspace. The following result shows that this is true in general.

#theorem[
  Let $V$ and $W$ be vector spaces, and $T : V arrow.long W$ be linear. Then $"N"(T)$ and $"R"(T)$ are subspaces of $V$ and $W$, respectively.
]

The next theorem provides a method for finding a spanning set for the range of a linear transformation. With this accomplish, a basis for the range is easy to discover: we remove the appropriate vectors.

#theorem[
  Let $V$ and $W$ be vector spaces, and let $T : V arrow.long W$ be linear. If $beta = {v_1, v_2, dots, v_n}$ is a basis for $V$, then
  $ "R"(T) = "span"(T(beta)) = "span"({T(v_1), T(v_2), dots, T(v_n)}). $
]

// TODO: Add the next defs and thms

