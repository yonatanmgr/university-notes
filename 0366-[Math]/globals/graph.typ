#import "@preview/cetz:0.2.0"
#let graph(style: "school-book", w: 2, h: 2, start: -2, end: 2, functions: (), v-asymptotes: (), h-asymptotes: (), additionals: ()) = {
  text(lang: "en", dir: ltr)[
    #show math.equation: block.with(fill: white, inset: 1pt)
    #cetz.canvas({
      import cetz.plot
      plot.plot(
        axis-style: style, size: (w,h), x-tick-step: 1, y-tick-step: 1, grid: true, {
          for f in functions { cetz.plot.add(domain: (start, end), f, samples: 2500) }
          if v-asymptotes.len() > 0 {
            cetz.plot.add-vline(..v-asymptotes, style: (stroke: (dash: "dashed", paint: rgb("#00000075"))))
          }
          if h-asymptotes.len() > 0 { 
            cetz.plot.add-hline(..h-asymptotes, style: (stroke: (dash: "dashed", paint: rgb("#00000075"))))
          }
          if additionals.len() > 0 { 
            for f in additionals { cetz.plot.add(domain: (start, end), f, samples: 2500, style: (stroke: (dash: "dashed", paint: rgb("#00000075")))) }
          }
        }
      )
    })
  ]
}
