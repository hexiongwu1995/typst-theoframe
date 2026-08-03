#set page(paper:"a4", margin: 1cm)

#let scfigure(
    caption-ratio: auto,
    caption-align: bottom + left,
    gutter: 1.6em,
    ..args,
  ) = context {

  let text-width = page.width - (page.margin.inside + page.margin.outside)
  let half-gutter = gutter.to-absolute() / 2

  show figure.caption: it => { align(caption-align)[#it] }

  show figure.where(kind: image): it => {
    let img-size = (width: 50% - half-gutter, height: auto)
    if "width" in it.body.fields() {
      img-size.width = it.body.width.ratio + (it.body.width.length.to-absolute() / text-width * 100%) - half-gutter
    }
    if "height" in it.body.fields() {
      img-size.height = it.body.height
    }
    let caption-width = img-size.width.ratio - half-gutter
    if img-size.width.ratio > 50% {
      caption-width = 100% - img-size.width.ratio - half-gutter
    }
    if caption-ratio != auto {
      caption-width = caption-width.ratio * caption-ratio - half-gutter
    }
    let columns-arrangement = (img-size.width, caption-width)

    align(center, block(breakable: false, above: 2.4em, below: 2.4em)[
      #grid(
        columns: columns-arrangement,
        column-gutter: gutter,
        image(
          it.body.source.trim("../"), // img folder is relative to this file now!!
          width: 100%,
          height: img-size.height,
        ),
        it.caption,
      )
    ])
  }
  figure(..args)
}

#set math.equation(numbering: "1.")


#figure(
  image("./OIP.webp", width: 45%),
  caption: [Plot of @eq.],
)

$a^2 + b^2 =c^2$<eq>



#scfigure(
  image("./OIP.webp", width: 45%),
  caption: [Plot of @eq.],
)