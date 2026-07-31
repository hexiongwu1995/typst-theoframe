#import "./theoframe.typ": *

#set page(width: 150mm, height:auto, margin: 0em)
#set heading(numbering: "1.1")
#show heading: set text(fill: rgb(0, 0, 200))

= #lorem(1)
#lorem(20)
#Definition(name: [Definition name])[#lorem(10) $1 = 1$]
#Lemma(name: [Lemma name])[#lorem(10)$1 = 1$]
#Proof(name: [Proof name])[#lorem(20)$2 < 3$]
#Theorem(name: [Theorem name])[#lorem(10)$1 = 1$]
#Example(name: [Example name])[#lorem(10)$2 < 3$]
== #lorem(3)
#lorem(10)
#Definition(name: [Definition name])[#lorem(10) $1 = 1$]
= #lorem(1)
#lorem(20)
#Theorem(name: [Theorem name])[#lorem(10)$1 = 1$]


