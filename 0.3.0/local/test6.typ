
#let corollary-counter = counter("corollary")
#let example-counter = counter("example")

#let translation = (
  corollary: (en: "Corollary", fr: "Corollaire", ko: "따름정리", ja: "系", zh: "推论"),
  example: (en: "Example", fr: "Exemple", ko: "예제", ja: "示例", zh: "示例"),
)

#let theoframe(name: [], framename: [], kind: "", theoframe-counter, color: none, it) = [
  #theoframe-counter.step(level: 1)
  #let counter-content = context {
    let heading-counter-str = numbering("1.", counter(heading).get().first())
    let theoframe-counter-str = theoframe-counter.display("a")
    box(heading-counter-str + theoframe-counter-str)
  }
  // #let num-func = it => [#counter-content]
  #let num-func = it => it
  #figure(
    block(
      width: 100%,
      stroke: (left: 2pt + color),
      inset: 0em,
    )[
      #block(width: 100%, inset: 1em, outset: 0em, below: 0em, fill: color.lighten(80%).transparentize(70%))[
        #align(left)[#text(fill: color, weight: 700)[#framename #counter-content #h(1em) ] #text(weight: 500)[#name]]
      ]
      #block(width: 100%, inset: 1em, outset: 0em, above: 0em, fill: color.lighten(80%).transparentize(90%))[
        #align(left)[#it]
      ]
    ],
    kind: kind,
    supplement: kind,
    // numbering: "a",
    numbering: num-func,
    outlined: true,
  )
]

#let theocolor(name: [], framename: [], kind: "", theoframe-counter, color: none, sym, it) = [
  #theoframe-counter.step(level: 1)
  #let counter-content = context {
    let heading-counter-str = numbering("1.", counter(heading).get().first())
    let theoframe-counter-str = theoframe-counter.display("a")
    box(heading-counter-str + theoframe-counter-str)
  }
  // #let num-func = it => [#counter-content]
  #let num-func = it => it
  #figure(
    block(
      width: 100%,
      inset: 0em,
    )[
      #align(left)[
        #text(fill: color, weight: 700)[#framename #counter-content #h(1em) ] #text(weight: 500)[#name] #linebreak()
        #it #text(fill: color)[#sym]
      ]
    ],
    kind: kind,
    supplement: kind,
    // numbering: "a",
    numbering: num-func,
    outlined: true,
  )
]

#let corollary(name: [], color: rgb("#0d47a1"), it) = theoframe(
  name: [#name],
  framename: [#context translation.corollary.at(text.lang, default: "Corollary")],
  kind: "corollary",
  corollary-counter,
  color: color,
  it,
)

#let example(name: [], color: rgb("#030303"), it) = theocolor(
  name: [#name],
  framename: [#context translation.example.at(text.lang, default: "Example")],
  kind: "example",
  example-counter,
  color: color,
  sym.square.filled,
  it,
)

#let reset-theorems-counter() = {
  theorem-counter.update(0)
  corollary-counter.update(0)
  example-counter.update(0)
}

#let reset(doc) = {
  show heading.where(level: 1): it => {
    it
    reset-theorems-counter()
  }
  doc
}

#example[
  The numbers $2$, $3$, and $17$ are prime. As proven in @cor:infinite-prime, this list is far from complete! 
]

#corollary[
  There is no largest prime number.
] <cor:infinite-prime>
