#import "../../lib.typ": *

== Subspaces

The appropriate notion of substructure for vector spaces is introduced right below.

#definition(title: "Subspace")[
  A subset $W$ of a vector space $V$ over a field $KK$ is called a *subspace* of $V$ (sometimes denoted by $W <= V$) if $W$ is a vector space over $KK$ with the operations of addition and scalar multiplication defined on $V$.
]

#note-box[
  In any vector space $V$, note that $V$ and ${0}$ are subspaces. The latter is called the *zero subspace* of $V$.
]

Fortunately it is not necessary to verify all the vector space properties to prove that a subset is a subspace. Because properties (VS 1), (VS 2), (VS 5), (VS 6), (VS 7), and (VS 8) hold for all vectors in the vector space, these properties automatically hold for the vectors in any subset. Thus a subset $W$ of a vector space $V$ is a subspace of $V$ if and only if the following four properties hold.

+ $forall x,y in V, x + y in W$ (W is *closed under addition*)
+ $forall x in V "and" forall lambda in KK, lambda x in W$ (W is *closed under scalar multiplication*)
+ $W$ has a zero vector
+ Each vector in $W$ has an additive inverse in $W$

The next theorem shows that the zero vector of $W$ must be the same as the zero vector of $V$, and that property 4 is redundant.

#theorem[
  Let $V$ be a vector space and $W subset.eq V$. Then $W$ is a subspace of $V$ if and only if the following three conditions hold for the operations defined in $V$.
  + $0 in W$ (the same zero vector of $V$)
  + $forall x,y in W, x + y in W$
  + $forall x in W "and" forall lambda in K, lambda x in W$
] <thm:subspace>

#tip-box[
  @thm:subspace provides a simple method for determining whether or not a given subset of a vector space is a subspace. Normally it is this result that is used to prove that a subset is, in fact, a subspace.
]

Below, there are some important concepts, and examples of subspaces.

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
    3, -1) 
  space.quad "and" space.quad
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
  The set $W$ of all symmetric matrices in $M_(n times n)(KK)$ is a subspace of $M_(n times n)(KK)$ since the conditions of @thm:subspace hold.
]

#definition(title: "Upper Triangular Matrix")[
  An $m times n$ matrix is called *upper triangular* if all entries lying below the diagonal entries are zero, that is, if $A_(i j) = 0$ whenever $ i > j$.
]

#example[
  The set of upper triangular matrices form a subspace of $M_(m times n)(KK)$.
]

#example[
  Let $n$ be a nonnegative integer, and let $P_(n)(KK)$ consist of all polynomials in $P(KK)$ having degree less than or equal to $n$. Since the zero polynomial has degree -1 (or -$infinity$), it is in $P_(n)(KK)$. Moreover, the sum of two polynomials with degrees less than or equal to $n$ is another polynomial of degree less than or equal to $n$, and the product of a scalar and a polynomial of degree less than or equal to $n$ is a polynomial of degree less than or equal to $n$. So $P_(n)(KK)$ is closed under addition and scalar multiplication. It therefore follows from @thm:subspace that $P_(n)(KK) <= P(KK)$.
]

#definition(title: "Diagonal Matrix")[
  An $n times n$ matrix $M$ is called a *diagonal matrix* if $M_(i j) = 0$ whenever $i != j$, that is, if all its non-diagonal entries are zero.
]
#example[
  Using @thm:subspace we can prove that the set of diagonal matrices is a subspace of $M_(n times n)(KK)$.
]

#definition(title: "Trace of a matrix")[
  The *Trace* of an $n times n$ matrix $M$, denoted by $"tr"(M)$, is the sum of the diagonal entries of $M$; that is, $ "tr"(M) = M_(11) + M_(22) + dots + M_(n n) $
]

#example[
  The set of $n times n$ matrices having trace equal to zero is a subspace of $M_(n times n)(KK)$.
]

#example[
  The set of matrices in $M_(m times n)(RR)$ having nonnegative entries is not a subspace of $M_(m times n)(RR)$ because it is not closed under scalar multiplication (by negative scalars).
]

#definition(title: "Even and Odd Function")[
  Let $KK_1$ and $KK_2$ be fields. A function $g in cal(F)(KK_1, KK_2)$ is called an *even function* if $forall t in KK_1, g(-t) = g(t)$, and is called an *odd function* if $ forall t in KK_1, g(-t) = -g(t)$.
]

#example[
  The set of all even functions in $cal(F)(KK_1, KK_2)$ and the set of all odd functions in $cal(F)(KK_1, KK_2)$ are subspaces of $cal(F)(KK_1, KK_2)$
]

#definition(title: "Sum of two Nonempty Sets")[
  If $S_1$ and $S_2$ are nonempty subsets of a vector space $V$, then the *sum of $S_1$ and $S_2$*, denoted by $S_1 + S_2$, is the set ${x + y : x in S_1 and y in S_2}$.
]

#definition(title: "Direct Sum")[
  A vector space $V$ is called the *direct sum* of $W_1$ and $W_2$ if $W_1$ and $W_2$ are subspaces of $V$ such that $W_1 inter W_2 = {0}$ and $W_1 + W_2 = V$. We denote that $V$ is the direct sum of $W_1$ and $W_2$ by writing $V = W_1 plus.circle W_2$.
]

#example[
  Using the previous definitions, we can say that
  - $W_1 + W_2$ is a subspace of $V$ that contains both $W_1$ and $W_2$.
  - Any subspace of $V$ that contains both $W_1$ and $W_2$ must also contain $W_1 + W_2$.
]

#definition(title:"Skew-symmetric Matrix")[
  A matrix $M$ is called *skew-symmetric* if $M^t = -M$. Clearly, a skew-symmetric matrix is square.
]

#example[
  Let $KK$ be a field. The set $W_1$ of all skew-symmetric $n times n$ matrices with entries from $KK$ is a subspace of $M_(n times n)(KK)$. Now, assume that $KK$ is not of characteristic 2, and let $W_2$ be the subspace of $M_(n times n)(KK)$ consisting of all symmetric $n times n$ matrices, then $M_(n times n)(KK) = W_1 plus.circle W_2$
]

#definition(title: "Coset of W")[
  Let $W$ be a subspace of a vector space $V$ over a field $KK$. For any $v in V$ the set ${v} + W = {v + w : w in W}$ is called the *coset* of $W$ *containing* $v$. It is customary to denote this coset by $v + W$ rather than ${v} + W$.
]

#example[
  $v + W$ is a subspace of $V$ if and only if $v in W$. Moreover, $v_1 + W = v_2 + W$ if and only if $v_1 - v_2 in W$.
]

Addition and scalar multiplication by scalars of $KK$ can be defined in the collection $S = {v + W : v in V}$ of all cosets of $W$ as follows.
$ (v_1 + W) + (v_2 + W) = (v_1 + v_2) + W space.quad "and" space.quad lambda(v + W) = lambda v + W $
for all $v_1, v_2 in V$ and $lambda in KK$.
The preceding operations are well defined, that is, if $v_1 + W = v'_1 + W$ and $v_2 + W = v'_2 + W$, then
$ (v_1 + W) + (v_2 + W) = (v'_1 + W) + (v'_2 + W)  space.quad "and" space.quad lambda (v_1 + W) = lambda (v'_1 + W) $ for all $v_1, v_2 in V$ and $lambda in KK$.

#definition(title: "Quotient Space of V Module W")[
  The set $S$, defined previously, is a vector space with the preceding operations. This vector space is called the *quotient space of* $V$ *modulo* $W$ and is denoted by $V slash W$.
]

The next theorem shows how to form a new subspace from other subspace.

#theorem[
  Any intersection of subspaces of a vector space $V$ is a subspace of $V$.
]

It is easily seen that the union of subspaces must contain the zero vector and be closed under scalar multiplication, but in general, the union of subspaces of $V$ need not be closed under addition. In fact, it can be readily shown that the union of two subspaces of $V$ is a subspace of $V$ if and only if one of the subspaces contains the other.

#proposition[
  Let $W_1$ and $W_2$ be subspaces of a vector space $V$. Then $W_1 union W_2 <= V$ if and only if $W_1 subset.eq$ or $W_2 subset.eq W_1$.
]
