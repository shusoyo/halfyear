#import "@preview/ctheorems:1.1.3": *

#let thmbox = thmbox.with(namefmt: x => [（#x）])
#let theorem = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))
#let corollary = thmplain(
  "corollary",
  "Corollary",
  base: "theorem",
  titlefmt: strong
)

#let definition = thmbox("definition", "Definition", inset: (x: 1.2em, top: 1em))

#let example = thmbox("example", "Example", fill: rgb("eeeeee"))

#let remark = thmbox("remark", "Remark", fill: rgb("#eeff"))

#let knowledge = thmbox("knowledge point", "Knowledge Point")

#let formula = thmbox("formula", "Formula", fill: rgb("#e5f2ff"))

#let proof = thmproof("proof", "Proof", namefmt: emph)
