#import "../lib.typ": *

== Vector Spaces

First, we define a very important type of algebraic structure.

#definition(title: "Vector Space or Linear Space")[
  A *vector space* (or *linear space*) $V$ over a field $KK$ consists of a set on which two operations (called _addition_ and _scalar multiplication_, respectively) are defined so that for each par of elements $x,y in V$ there is a unique element $x + y in V$, and for each element $lambda in KK$ and each element $x in V$ there is a unique element $lambda x in V$, such that the following conditions hold.

  - (VS 1) $forall x,y in V, x + y = y + x$ (_commutativity of addition_)
  - (VS 2) $forall x,y,z in V, (x + y) + z = x + (y + z)$ (_associativity of addition_)
  - (VS 3) There exists an element in $V$ denoted by $accent(0,arrow)$ (or juts 0) such that $forall x in V, x + accent(0,arrow) = x$
  - (VS 4) For each element in $V$ there exists an element $y$ such that $x + y = accent(0,arrow)$
  - (VS 5) $forall x in V, 1x = x$
  - (VS 6) $forall lambda, alpha in KK$ and $forall x in V, (lambda alpha)x = lambda (alpha x)$
  - (VS 7) $forall lambda in KK$ and $forall x,y in V, lambda (x + y) = lambda x + lambda y$
  - (VS 8) $forall lambda, alpha in KK$ and $forall x in V, (lambda + alpha) x = lambda x + alpha x$
  The elements $x + y$ and $lambda x$ are called the *sum* of $x$ and $y$, and the *product* of $lambda$ and $x$, respectively.
] <def:vector-space>

#note-box[
  Sometimes we denote a vector space $V$ over a field $KK$ as $(V, KK, +, dot)$. The elements of the field $KK$ are called *scalars*, and the elements of the vector space $V$ are called *vectors*.
]

The following are examples of different vector spaces.

An object of the form $(lambda_1, lambda_2, dots, lambda_n)$ where the entries are elements of a field $KK$, is called an *_n_-tuple* (or just a tuple), and each $lambda_i$ is called an *entry* or a *component* of the tuple. Two n-tuples are _equal_ if $lambda_i = alpha_i$ for $i = 1,2,dots,n$.

#example[
  The set of all _n_-tuples with entries from a field $KK$ is denoted by $KK^n$. This set is a vector space over $KK$ with the following operations.
  
  If $u = (lambda_1, lambda_2, dots, lambda_n), v = (alpha_1, alpha_2, dots, alpha_n) in KK^n$, and $gamma in KK$, then
  $ u + v = (lambda_1 + alpha_1, lambda_2 + alpha_2 ,dots, lambda_n + alpha_n) space.quad "and" space.quad gamma u = (gamma lambda_1, gamma lambda_2, dots, gamma lambda_n) $
]

#note-box[
  Vectors in $KK^n$ can be written as *column vectors*
  $ mat(a_1;a_2;dots.v; a_n) $
  rather than as *row vectors* $(a_1,a_2,dots, a_n)$
]

#example[
  Let $S$ be any nonempty set and $KK$ be any field, and let $cal(F)(S,KK)$ denoted the set of all functions from $S$ to $KK$. Two functions $f$ and $g$ in this set are called *equal* if $forall s in S, f(s) = g(s)$. The set $cal(F)(S,KK)$ is a vector space with the following operations defined for $f,g in cal(F)(S,KK), lambda in KK$ and $forall s in S$.
  
  $ (f + g)(s) = f(s) + g(s) space.quad "and" space.quad (lambda f)(s) = lambda (f(s)) $
  Note that these are the familiar operations of addition and scalar multiplication for functions used in algebra and calculus.
]

Let's consider the usual definition of a *polynomial*. 

#example[
  Let $ f(x) = lambda_n x^n + lambda_(n-1) x^(n-1) + dots + lambda_1 x + lambda_0 space.quad "and" space.quad g(x) = alpha_m x^m + alpha_(m-1) x^(m-1) + dots + alpha_1 x + alpha_0 $
  be polynomials with coefficients from a field $KK$. Suppose that $m <= n$, and define $alpha_(m+1) = alpha_(m+2) = dots = alpha_n = 0$. Then $g(x)$ can be written as $ g(x) = alpha_n x^n + alpha_(n-1) x^(n-1) + dots + alpha_1 x + alpha_0 $

  Define $ f(x) + g(x) = (lambda_n + alpha_n)x^n + (lambda_(n-1) + alpha_(n-1)) x^(n-1) + dots + (lambda_1 + alpha_1)x + (lambda_0 + alpha_0) $ and for any $gamma in KK$, define $ gamma f(x) = f(x) = gamma lambda_n x^n + gamma lambda_(n-1) x^(n-1) + dots + gamma lambda_1 x + gamma lambda_0 $

  With these operations, the set of all polynomials with coefficients from $KK$ is a vector space, which is denoted by $P(KK)$.
]

Let's consider the next definition.

#definition(title: "Matrix")[
  An $m times n$ matrix with entries from a field $KK$ is a rectangular array of the form
  $ mat(
    lambda_(11), lambda_(12), ..., lambda_(1n);
    lambda_(21), lambda_(22), ..., lambda_(2n);
    dots.v, dots.v, dots.down, dots.v;
    lambda_(m 1), lambda_(m 2), ..., lambda_(m n);
  ), $
  where each entry $lambda_(i j) in KK space.nobreak (1 <= i <= m, 1 <= j <= n)$. 
]<def:matrix>

We call the entries $a_(i j)$ with $i = j$ the *diagonal entries* of the matrix. The entries $lambda_(i 1), lambda_(i 2), dots, lambda_(i n)$ compose the *_i_**th row* of the matrix, and the entries $lambda_(1 j), lambda_(2 j), dots, lambda_(m j)$ compose the *_j_**th column* of the matrix. The rows of the preceding matrix are regarded as vectors in $KK^n$, and the columns are regarded as vectors in $KK^m$. The $m times n$ matrix in which each entry equals zero is called the *zero matrix* and is denoted by $O$. 
We denote the entry of a matrix $A$ that lies in row _i_ and column _j_ by $A_(i j)$. In addition, if the number of rows and columns are equal, the matrix is called *square*.
Two $m times n$ matrices $A$ and $B$ are called *equal* if all their corresponding entries are equal, that is, if $A_(i j) = B_(i j) "for" 1 <= i <= m "and" 1 <= j <= n$.

#example[
  The set of all $m times n$ matrices with entries from a field $KK$ is a vector space, which we denote by $M_(m times n)(KK)$, with the following operations of *matrix addition* and *scalar multiplication* for $A, B  in M_(m times n)(KK)$ and $lambda in KK$.
  $ (A + B)_(i j) = A_(i j) + B_(i j) space.quad "and" space.quad (lambda A)_(i j) = lambda A_(i j) $
  for $1 <= i <= m "and" 1 <= j <= n$.
]

#tip-box[
  Observe that in describing a vector space, it is necessary to specify not only the vectors but also the operations of addition and scalar multiplication.
]

In order to conclude the section, some elementary consequences of the definition of a vector space will be presented.

#theorem(title:"Cancellation Law for Vector Addition")[
  Let $V$ be a vector space. If $x,y,z in V$ such that $x + z = y + z$, then $x = y$
]<thm:cancellation-law>

#corollary[
  The vector _0_ described in _(VS 3)_ is unique.
]

#corollary[
  The vector $y$ described in _(VS 4)_ is unique.
]

The vector _0_ in _(VS 3)_ is called the *zero vector* of $V$, and the vector $y$ in _(VS 4)_ is called the *additive inverse* of a given $x$ and is denoted by $-x$.

The next result contains some of the elementary properties of scalar multiplication.

#theorem[
  In any vector space $V$, the following statements are true.
  - $forall x in V, 0x = 0$
  - $forall lambda in KK "and" forall x in V, (-lambda x) = - (lambda x) = lambda(-x)$.
  - $forall lambda in KK, lambda 0 = 0$.
]<thm:vector-space-props>

