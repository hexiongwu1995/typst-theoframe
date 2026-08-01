#import "../lib.typ":*
// #import "@preview/theoframe:0.2.0"
#show: reset

#set page(width: 210mm, height: auto, margin: 1cm)
#set heading(numbering: "1.1")
#show heading: set text(fill: rgb(0, 0, 200))

#outline()

= Basic Definitions
#lorem(20)
#definition("even number")[An integer is called an _even number_ if it is divisible by $2$.]

== More Definitions
#lorem(20)
#definition("odd number")[An integer is called an _odd number_ if it is not divisible by $2$.]

= A Simple Proof
#lorem(20)
#proof("sum of two even numbers")[Let $a$ and $b$ be two even numbers. Then $a = 2k$ and $b = 2m$ for some integers $k$ and $m$. Their sum is $a + b = 2k + 2m = 2(k + m)$, which is also even.]

= A Practice Problem
#lorem(20)
#problem("sum of odd numbers")[Prove that the sum of two odd numbers is always even.]

== Solution
#lorem(20)
#solution("sum of odd numbers")[Let $a$ and $b$ be two odd numbers. Then $a = 2k + 1$ and $b = 2m + 1$ for some integers $k$ and $m$. Their sum is $a + b = (2k + 1) + (2m + 1) = 2k + 2m + 2 = 2(k + m + 1)$, which is even.]

== Worked Example
#lorem(20)
#example("checking even numbers")[Consider the numbers $4$ and $10$. Both are even because $4 = 2 times 2$ and $10 = 2 times 5$. Their sum is $14$, and indeed $14 = 2 times 7$, so it is also even.]

