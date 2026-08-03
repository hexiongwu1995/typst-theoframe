#import "./test16.typ":*
// #import "@preview/theoframe:0.2.0"

#set heading(numbering:"1.")

#show heading.where(level:1): it => {
  counter(figure.where(kind:"Definition")).update(0)
  it
}

#show ref: it => {
  let fig = figure
  let el = it.element
  // Skip all other references.
  if el == none or el.func() != fig { return it }
  // Override equation references.

  link(el.location(), [#counter(heading.where(level:1)).display("1.", at:el.location())#counter(fig.where(kind:"Definition")).display("a",at: el.location())])
}


= #lorem(1)

#definition[ some texts ] <def1>

#definition[ more texts and @def4 ] <def2>

= #lorem(1)

#definition[ some texts ] <def3>

#definition[ more texts and @def2 ] <def4>

