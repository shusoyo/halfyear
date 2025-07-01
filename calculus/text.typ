#import "@preview/cetz:0.4.0": canvas, draw
#import "@preview/cetz-plot:0.1.2": plot

#set page(width: auto, height: auto, margin: .5cm)

#let style = (stroke: black, fill: rgb(0, 0, 200, 75))

#let f2(x) = calc.sqrt(2 * calc.pi) * calc.pow(x, (x - 0.5)) * calc.exp(-x) * calc.exp(1 / (12 * x))

#set text(size: 10pt)

#canvas({
  import draw: *

  // Set-up a thin axis style
  set-style(
    axes: (stroke: .5pt, tick: (stroke: .5pt)),
    legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%),
  )

  plot.plot(
    size: (12, 8),
    x-tick-step: 1,
    y-tick-step: 2,
    y-max: 6,
    legend: "inner-north",
    {
      let domain = (0.1, 5)

      plot.add(f2, domain: domain, label: none, style: (stroke: black))
    },
  )
})
