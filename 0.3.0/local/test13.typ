
#let translation = (
  definition: (en: "Definition", fr: "Définition", ko: "정의", ja: "定義", zh: "定义"),
)

#let heading-counter-content = context numbering("1.", counter(heading).get().first())

#let definition(name: [], color: rgb("#794e04"), it) = figure(
  kind: "Definition",
  supplement: context [#translation.definition.at(text.lang, default: "Definition")],
  numbering: num => context [#counter(heading).display("1.")#numbering("a", num)],
  caption: [],
  block(
    width: 100%,
    stroke: (left: 2pt + color),
    inset: 0em,
  )[
    #block(width: 100%, inset: 1em, outset: 0em, below: 0em, fill: color.lighten(80%).transparentize(70%))[
      #align(left)[
        #text(fill: color, weight: 700)[
          #context [#figure.supplement #counter(heading).display("1.")
            #numbering("a", int(figure.numbering))] #h(1em)
        ]
        #text(weight: 500)[#name]
      ]
    ]
    #block(width: 100%, inset: 1em, outset: 0em, above: 0em, fill: color.lighten(80%).transparentize(90%))[
      #align(left)[#it]
    ]
  ],
)
