#figure(
  table(columns: 2, $n$, $1$),
  caption: [The first table.],
)

#counter(
  figure.where(kind: table)
).update(41)

#figure(
  table(columns: 2, $n$, $42$),
  caption: [The 42nd table],
)

#figure(
  rect[Image],
  caption: [Does not affect images],
)
