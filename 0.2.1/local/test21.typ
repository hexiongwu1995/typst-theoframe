


// #show heading.where(level in (1,2,3)): set text(blue)
#for l in (1,2,3) {
show heading.where(level: l): set text(green)
heading(level:l)[level #l heading]
}


// #heading(level:1)[level 1 heading]

= Section
== Subsection
=== Sub-subsection


// #context query(heading.where(level:2) .or(heading.where(level:3)))

#figure(
  image("./OIP.webp", width: 5cm),
  caption: "A figure"
)
#context (query(figure))