#import "@preview/ctheorems:1.1.3": *

#let thmbox = thmbox.with(
  namefmt: x => [#h(0.5em) #text(font: ("Libertinus Serif", "STKaiti"), rgb(red))[#x：] #h(-0.4em)],
  separator: [#h(0.1em)],
)

#let thmplain = thmbox.with(
  padding: (top: 0em, bottom: 0em),
  breakable: true,
  inset: (top: 0em, left: 1.2em, right: 1.2em),
  namefmt: name => emph(text(font: ("Libertinus Serif", "STKaiti"), rgb(red))[#h(0.5em) #name： #h(-0.4em)]),
  titlefmt: emph,
)

#let theorem = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))
#let corollary = thmplain(
  "corollary",
  "Corollary",
  base: "theorem",
  titlefmt: strong,
)

#let definition = thmbox("definition", "Definition", inset: (x: 1.2em, top: 1em))

#let example = thmbox("example", "Example")

#let remark = thmplain("remark", "Remark")

#let knowledge = thmbox("knowledge point", "Knowledge Point")

#let formula = thmbox("formula", "Formula", fill: rgb("#e5f2ff"))

#let proof = thmproof("proof", "Proof", namefmt: emph)
