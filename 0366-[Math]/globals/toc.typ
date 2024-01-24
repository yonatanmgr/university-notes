#import "@preview/outrageous:0.1.0"
#{
  show outline.entry: outrageous.show-entry.with(font-weight: ("bold", auto), font: ("", auto), body-transform: (lvl, body) => {
    if "children" in body.fields() {
      let (number, space, ..text) = body.children
      style(styles => {
        h(measure([.], styles).width * (lvl - 1))
        if not number.at("text", default: "").starts-with(regex("\d")) {
          [#((space,) + text).join()]
        } else {
          [#number. #text.join()]
        }
      })
    }
  })
  outline(title: "תוכן העניינים", depth: 4, indent: true)
  pagebreak(weak: true)
}
