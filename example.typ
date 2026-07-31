// #import "@preview/theoframe:0.1.0": *
#import "./theoframe.typ": *


#set page(width: 150mm, height:auto, margin: 0em)
#set heading(numbering: "1.1")
#show heading: set text(fill: rgb(0, 0, 200))

= #lorem(1)
#lorem(20)
#definition(name: [Definition name])[#lorem(10) $1 = 1$]
#postulate(name: [Postulate name])[#lorem(10) $1 = 1$]
#assumption(name: [Assumption name])[#lorem(10) $1 = 1$]
#conjecture(name: [Conjecture name])[#lorem(10) $1 = 1$]
#proposition(name: [Proposition name])[#lorem(10) $1 = 1$]
#lemma(name: [Lemma name])[#lorem(10)$1 = 1$]
#proof(name: [Proof name])[#lorem(10)$2 < 3$]
#theorem(name: [Theorem name])[#lorem(10)$1 = 1$]
#corollary(name: [Corollary name])[#lorem(10) $1 = 1$]
#example(name: [Example name])[#lorem(10)$2 < 3$]
#problem(name: [Problem name])[#lorem(10) $1 = 1$]
#solution(name: [Solution name])[#lorem(10) $1 = 1$]
#conclusion(name: [Conclusion name])[#lorem(10) $1 = 1$]
== #lorem(3)
#lorem(10)