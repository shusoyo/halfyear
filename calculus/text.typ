#import "@preview/cetz:0.4.0"

#cetz.canvas({
  import cetz.draw: *

  set-style(mark: (symbol: ">"))

  line((0, 0), (2, 2))
  line((0, 0.3), (2, 2.3))
})
