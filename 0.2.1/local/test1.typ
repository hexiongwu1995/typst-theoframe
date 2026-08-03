
#import "../lib.typ":*
// #import "@preview/theoframe:0.3.0"
#show: reset

#set page(width: 210mm, height: auto, margin: 1cm)
#set heading(numbering: "1.")
#show heading: set text(fill: rgb(0, 0, 200))


= Theorion Environments

== Table of Theorems

#outline(title: none, target: figure.where(kind: "theorem"))

== Basic Theorem Environments

Let's start with the most fundamental definition.

#definition[
  A natural number is called a #highlight[_prime number_] if it is greater than 1
  and cannot be written as the product of two smaller natural numbers.
] <def:prime>

#example[
  The numbers $2$, $3$, and $17$ are prime. As proven in @cor:infinite-prime,
  this list is far from complete! See @thm:euclid for the full proof.
]

#theorem(name:[Euclid's Theorem])[
  There are infinitely many prime numbers.
] <thm:euclid>


#corollary[
  There is no largest prime number.
] <cor:infinite-prime>
