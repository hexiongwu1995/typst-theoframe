// #let fill = state("fill", false)

// #show list.item: it => {
//   fill.update(f => not f)
//   context {
//     set text(fill: fuchsia) if fill.get()
//     it
//   }
// }

// #lorem(5).split().map(list.item).join() \ \ 

#lorem(5) \ \ 
#lorem(5).split() \ \ 
#lorem(5).split().map(list.item) \ \ 
#lorem(5).split().map(list.item).join() \ \ \ \ 
// #lorem(5).split().map(list.item).join()


#list.item("a")
#list.item("a")
#list.item("a")
#list.item("a")
