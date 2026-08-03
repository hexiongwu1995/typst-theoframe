
#let translation = (
  definition: (en: "Definition", fr: "Définition", ko: "정의", ja: "定義", zh: "定义"),
)

#let definition(name: [], color: rgb("#0077ff19"), it) = figure(
  kind: "Definition",
  supplement: context [#translation.definition.at(text.lang, default: "Definition")],
  numbering: num => context [#counter(heading).display("1.")#numbering("a", num)],
  caption: [],
  block(
    width: 100%,
    inset: 1em,
    fill: color,
  )[
    #align(left)[
      #context [
        #figure.supplement
        #counter(heading.where(level:1)).display("1.")
        #counter(figure.where(kind:"Definition")).display("a")
        ]
        #h(1em) #name #linebreak()
        ]

    #align(left)[#it]
  ],
)
