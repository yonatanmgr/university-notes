#import "functions.typ": *

#let project(title: "", authors: (), date: none, body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: end)
  set text(font: "", lang: "he")
  
  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, title))
    #v(1em, weak: true)
    #date
  ]

  // Author information.
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
    ),
  )

  // Main body.
  set par(justify: true)

  // Headings Numbering //
  //
  set heading(numbering: (..nums) => {
    let nums = nums.pos()
    if nums.len() < 4 {
      numbering("1.1", ..nums)
    }
  })
  
  show heading: it => block({
    // sans font for headings
    if it.numbering != none {
      numbering(it.numbering, ..counter(heading).at(it.location()))
      // add the trailing dot here
      if it.level < 4 { [. ] }
    }
    it.body
  })
  
  // level 1 headings start new pages and have some vertical spacing
  show heading.where(level: 1): it => {
    it
    v(0.3cm)
  }
  //
  // Heading Numbering Ends Here
  
  body
}