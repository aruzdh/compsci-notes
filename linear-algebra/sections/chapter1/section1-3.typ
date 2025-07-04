#import "../../lib.typ" : *

== Linear Combinations

Expressions of the form $s u + t v$, where $s$ and $t$ are scalars, and $u$ and $v$ are vectors, play a central role in the theory of vector spaces. The generalization of such expressions is presented below.

#definition(title:"Linear Combination")[
  Let $V$ be a vector space and $S != emptyset subset.eq V$. A vector $v in V$ is called a *linear combination* of vectors of $S$ if there exist a finite number of vectors $u_1, u_2, dots, u_n in S$ and scalars $lambda_1, lambda_2, dots, lambda_n in KK$ such that $ v = sum_(i = 1)^n lambda_i u_i =lambda_1 u_1 + lambda_2 u_2 + dots.c + lambda_n u_n $
  In this case we also say that $v$ is a linear combination of $u_1, u_2, dots, u_n$ and call $lambda_1, lambda_2, dots, lambda_n$ the *coefficients* of the linear combination.
]

#note-box[
  Observe that in any vector space $V$, $0v = 0$ for each $v in V$. Thus the zero vector is a linear combination of any nonempty subset of $V$.
]

Throughout this course, we form the set of all linear combinations of some set of vectors. We now name such set.

#definition(title: "Span")[
  Let $V$ be a vector space, and $S != emptyset subset.eq V$. The *span* of $S$, denoted by span($S$) or $<S>$, is the set consisting of all linear combinations of the vectors in $S$, that is,
  $ "span"(S) = {sum_(i = 1)^n lambda_i v_i : lambda_i in KK and v_i in S} $
  For convenience, we define $"span"(emptyset) = {0}$.
]

#example[
  In $RR^3$, for instance, the span of the set ${(1,0,0), (0,1,0)}$ consists of all vectors in $RR^3$ that have the form $lambda(1,0,0) + alpha(0,1,0) = (lambda, alpha, 0)$ for some $lambda, alpha$ scalars. Thus, the span of ${(1,0,0), (0,1,0)}$ contains all the points in the _xy_-plane. In the case, the span of the set _is a subspace_ of $RR^3$. This fact is true in general.
]

#theorem[
  The span of any subset $S$ of a vector space $V$ is a subspace of $V$. Moreover, any subspace of $V$ that contains $S$ must also contain the span of $S$.
]

#definition(title: "Generating Set")[
  A subset $S$ of a vector space $V$ *generates* (or *spans*) $V$ if $"span"(S) = V$. In this case, we also say that the vectors of $S$ generate (or span) $V$.
]

#example[
  The vectors $(1,0,0),(0,1,0)$, and $(0,0,1)$ generate $RR^3$ since an arbitrary vector $(a_1, a_2, a_3) in RR^3$ is a linear combination of the three given vectors.
]

#example[
  The polynomials $x^2 + 3x - 2, 2x^2 + 5x - 3$, and $-x^2 - 4x + 4$ generate $P_(2)(RR)$ since each of the three polynomials belong to $P_(2)(RR)$ and each polynomial $alpha x^2 + lambda x + gamma in P_(2)(RR)$ is a linear combination of these three, namely
  $ (-8 alpha + 5 lambda + 3 gamma)(x^2 + 3x - 2) &+ (4 alpha - 2 lambda - gamma)(2x^2 + 5x - 3) \
  &+ (-alpha + lambda + gamma)(-x^2 - 4x + 4) = alpha x^2 + lambda x + gamma $
]

Usually there are many different subsets that generates a subspace $W$. It is natural to seek a subset of $W$ that generates $W$ and is as small as possible. In the next section we explore the circumstances under which a vector can be removed from a generating set to obtain a smaller generating set.
