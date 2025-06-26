#import "../lib.typ": *

== Subspaces

The appropriate notion of substructure for vector spaces is introduced right below.

#definition(title: "Subspace")[
  A subset $W$ of a vector space $V$ over a field $K$ is called a *subspace* of $V$ (sometimes denoted by $W <= V$) if $W$ is a vector space over $K$ with the operations of addition and scalar multiplication defined on $V$.
]

#note-box[
  In any vector space $V$, note that $V$ and ${0}$ are subspaces. The latter is called the *zero subspace* of $V$.
]

Fortunately it is not necessary to verify all the vector space properties to prove that a subset is a subspace. Because properties (VS 1), (VS 2), (VS 5), (VS 6), (VS 7), and (VS 8) hold for all vectors in the vector space, these properties automatically hold for the vectors in any subset. Thus a subset $W$ of a vector space $V$ is a subspace of $V$ if and only if the following four properties hold.

+ $forall x,y in V, x + y in W$ (W is *closed under addition*)
+ $forall x in V "and" forall lambda in K, lambda x in W$ (W is *closed under scalar multiplication*)
+ $W$ has a zero vector
+ Each vector in $W$ has an additive inverse in $W$

The next theorem shows that the zero vector of $W$ must be the same as the zero vector of $V$, and that property 4 is redundant.

#theorem[
  Let $V$ be a vector space and $W subset.eq V$. Then $W$ is a subspace of $V$ if and only if the following three conditions hold for the operations defined in $V$.
  + $0 in W$
  + $forall x,y in W, x + y in W$
  + $forall x in W "and" forall lambda in K, lambda x in W$
] <thm:subspace>

#tip-box[
  The preceding theorem provides a simple method for determining whether or not a given subset of a vector space is a subspace. Normally it is this result that is used to prove that a subset is, in fact, a subspace.
]

Below, there are some important concepts, and examples or subspaces.


#definition(title: "Transpose of a Matrix")[
  The *transpose* $A^t$ of an $m times n$ matrix $A$ is the $n times m$ matrix obtained from $A$ by interchanging the rows with the columns, that is, $(A^t)_(i j) = A_(j i)$
]

#example[
  $
  mat(
    1,-2,3;
    0,5,-1;
  )^t = 
  mat(
    1,0;
    -2, 5;
    3, -1) "and"
  mat(
    1,2;
    2,3
  )^t =
  mat(
    1,2;
    2,3
  )
    $
]

#definition(title: "Symmetric Matrix")[
  A *symmetric matrix* is a matrix $A$ such that $A^t = A$. Clearly, a symmetric matrix must be square.
]

#example[
  The set $W$ of all symmetric matrices in $M_(n times n)(K)$ is a subspace of $M_(n times n)(K)$ since the conditions of @thm:subspace hold.
]

#example[
  Let $n$ be a nonnegative integer, and let $P_(n)(K)$ consist of all polynomials in $P(K)$ having degree less than or equal to $n$. Since the zero polynomial has degree -1 (or -$infinity$), it is in $P_(n)(K)$. Moreover, the sum of two polynomials with degrees less than or equal to $n$ is another polynomial of degree less than or equal to $n$, and the product of a scalar and a polynomial of degree less than or equal to $n$ is a polynomial of degree less than or equal to $n$. So $P_n(K)$ is closed under addition and scalar multiplication. It therefore follows from @thm:subspace that $P_(n)(K) <= P(K)$.
]

#definition(title: "Diogonal Matrix")[
  An $n times n$ matrix $M$ is called a *diagonal matrix* if $M_(i j) = 0$ whenever $i != j$, that is, if all its non-diagonal entries are zero.
]
#example[
  Using @thm:subspace we can prove that the set of diagonal matrices is a subspace of $M_(n times n)(K)$.
]
