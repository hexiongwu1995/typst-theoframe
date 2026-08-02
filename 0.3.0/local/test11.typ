
// theoframe package, version:0.2.0, filename: lib.typ
#let definition-counter = counter("definition")

#let translation = (
  definition: (en: "Definition", fr: "Définition", ko: "정의", ja: "定義", zh: "定义"),
)

#let heading-counter-content = context numbering("1.", counter(heading).get().first())

#let theoframe(name: [], framename: [], kind: "", theoframe-counter, color: none, it) = {
  theoframe-counter.step()
  figure(
    block(
      width: 100%,
      stroke: (left: 2pt + color),
      inset: 0em,
    )[
      // #theoframe-counter.step(level: 1)
      #let counter-content = [#heading-counter-content #context theoframe-counter.display("a")]
      #block(width: 100%, inset: 1em, outset: 0em, below: 0em, fill: color.lighten(80%).transparentize(70%))[
        #align(left)[#text(fill: color, weight: 700)[#framename #counter-content #h(1em) ] #text(weight: 500)[#name]]
      ]
      #block(width: 100%, inset: 1em, outset: 0em, above: 0em, fill: color.lighten(80%).transparentize(90%))[
        #align(left)[#it]
      ]
    ],
    kind: kind,
    supplement: kind,
    numbering: it => {
      heading-counter-content
      context theoframe-counter.display("a")
    },
    outlined: true,
  )
}


#let definition(name: [], color: rgb("#794e04"), it) = theoframe(
  name: [#name],
  framename: [#context translation.definition.at(text.lang, default: "Definition")],
  kind: "Definition",
  definition-counter,
  color: color,
  it,
)

#let reset-theorems-counter() = {
  definition-counter.update(0)
}

#let reset(doc) = {
  show heading.where(level: 1): it => {
    it
    reset-theorems-counter()
  }
  show ref: set text(fill: blue)
  doc
}

