
#import "../lib.typ":*
// #import "@preview/theoframe:0.2.0"
#show: reset

#set page(width: 210mm, height: auto, margin: 1cm)

#show heading: set text(fill: rgb("#0051ff"))


= Theorion Environments

== Table of Theorems

#outline(title: none, target: figure.where(kind: "Theorem"))

= Basic Theorem Environments

Let's start with the most fundamental definition.

#definition[
  A natural number is called a _prime number_ if it is greater than 1
  and cannot be written as the product of two smaller natural numbers.#strong[def:prime]
] <def:prime>

#example[
  The numbers $2$, $3$, and $17$ are prime. As proven in @cor:infinite-prime,
  this list is far from complete! See @thm:euclid for the full proof.
]

#assumption[
  For all $n in NN$, assume $n$ is even if $n = 2k$ for some $k in NN$.
]



#conjecture(name:[Twin Prime Conjecture])[
  There are infinitely many primes $p$ such that $p+2$ is also prime.
]

#theorem(name:[Euclid's Theorem])[
  There are infinitely many prime numbers.#strong[thm:euclid]
] <thm:euclid>

#proof(name:[Proof of @thm:euclid])[
  By contradiction: Suppose $p_1, p_2, dots, p_n$ is a finite enumeration of all primes.
  Let $P = p_1 p_2 dots p_n$. Since $P + 1$ is not in our list,
  it cannot be prime. Thus, some prime $p_j$ divides $P + 1$.
  Since $p_j$ also divides $P$, it must divide their difference $(P + 1) - P = 1$,
  a contradiction.
]

#corollary[
  There is no largest prime number.#strong[cor:infinite-prime]
] <cor:infinite-prime>

#lemma[
  There are infinitely many composite numbers.
]

== Functions and Continuity

#theorem(name:[Continuity Theorem])[
  If a function $f$ is differentiable at every point, then $f$ is continuous.#strong[thm:continuous]
] <thm:continuous>



== Geometric Theorems

#theorem(name:[Pythagorean Theorem])[
  In a right triangle, the square of the hypotenuse equals the sum of squares of the other two sides:
  $x^2 + y^2 = z^2$ #strong[thm:pythagoras]
] <thm:pythagoras>



#corollary[
  There exists no right triangle with sides measuring 3cm, 4cm, and 6cm.
  This directly follows from @thm:pythagoras. #strong[cor:pythagoras]
] <cor:pythagoras>

#lemma[
  Given two line segments of lengths $a$ and $b$, there exists a real number $r$
  such that $b = r a$. #strong[lem:proportion]
] <lem:proportion>

== Algebraic Structures

#definition(name:[Ring])[
  Let $R$ be a non-empty set with two binary operations $+$ and $dot$, satisfying:
  1. $(R, +)$ is an abelian group
  2. $(R, dot)$ is a semigroup
  3. The distributive laws hold
  Then $(R, +, dot)$ is called a ring.#strong[def:ring]
] <def:ring>

#proposition[
  Every field is a ring, but not every ring is a field. This concept builds upon @def:ring.
#strong[prop:ring-field]] <prop:ring-field>

#example[
  Consider @def:ring. The ring of integers $ZZ$ is not a field, as no elements except $plus.minus 1$
  have multiplicative inverses.
]


= Theorion Appendices

== Advanced Analysis

#theorem(name:[Maximum Value Theorem])[
  A continuous function on a closed interval must attain both a maximum and a minimum value.
#strong[thm:max-value]] <thm:max-value>



== Advanced Algebra Supplements



#postulate(name:[Fundamental Theorem of Algebra])[
  Every non-zero polynomial with complex coefficients has a complex root.#strong[post:fta]
] <post:fta>



== Common Problems and Solutions

#problem[
  Prove: For any integer $n > 1$, there exists a sequence of $n$ consecutive composite numbers.
]

#solution[
  Consider the sequence: $n! + 2, n! + 3, ..., n! + n$

  For any $2 <= k <= n$, $n! + k$ is divisible by $k$ because:
  $n! + k = k(n! / k + 1)$

  Thus, this forms a sequence of $n-1$ consecutive composite numbers.
]

#problem[
  + Prove: The twin prime conjecture remains unproven. 
  + Try to explain why this problem is so difficult.
  ]

#conclusion[
  Number theory contains many unsolved problems that appear deceptively simple
  yet are profoundly complex.
]