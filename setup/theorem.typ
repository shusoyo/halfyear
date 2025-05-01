#import "@preview/ctheorems:1.1.3": *

#let thmbox = thmbox.with(
  namefmt: x => [#h(0.5em) #text(font: ("Libertinus Serif", "Adobe Kaiti Std R"), rgb("#ff0000"))[#x] #h(0.1em)],
  // separator: [#h(0.1em):],
)

#let thmplain = thmbox.with(
  padding: (top: 0em, bottom: 0em),
  breakable: false,
  inset: (top: 0em, left: 1.2em, right: 1.2em),
  namefmt: name => emph(
    text(font: ("Libertinus Serif", "Adobe Kaiti Std R"), rgb("#ff0000"))[#h(0.5em) #name #h(0.1em)],
  ),
  // separator: [#h(0.1em):],
  titlefmt: emph,
)

#let knowledge = thmplain(
  "annotation",
  "Annotation",
  inset: 0em,
)

#let annotation = thmplain(
  "annotation",
  "Annotation",
  inset: 0em,
)

#let propostion = thmplain(
  "propostion",
  "Propostion",
  inset: 0em,
)

#let formula = thmbox(
  "formula",
  "Formula",
  inset: 0em,
  // fill: rgb("#e5f2ff"),
)

#let theorem = thmbox(
  "theorem",
  "Theorem",
  // fill: rgb("#e8e8f8"),
)
// Proofs are attached to theorems, although they are not numbered
#let proof = thmproof(
  "proof",
  "Proof",
  base: "theorem",
)

#let lemma = thmbox(
  "theorem", // Lemmas use the same counter as Theorems
  "Lemma",
  // fill: rgb("#efe6ff"),
)

#let corollary = thmbox(
  "corollary",
  "Corollary",
  base: "theorem", // Corollaries are 'attached' to Theorems
  // fill: rgb("#f8e8e8"),
)

// Examples and remarks are not numbered
#let example = thmplain(
  "example",
  "Example",
  inset: 0em,
).with(numbering: none)

#let properties = thmplain(
  "properties",
  "Properties",
  inset: 0em,
).with(numbering: none)

#let remark = thmplain(
  "remark",
  "Remark",
  inset: 0em,
).with(numbering: none)

#let definition = thmbox(
  "definition", // Definitions use their own counter
  "Definition",
  // fill: rgb("#e8f8e8"),
)

#let exercise = thmbox(
  "exercise",
  "Exercise",
  stroke: rgb("#ffaaaa") + 1pt,
  base: none, // Unattached: count globally
).with(numbering: "I") // Use Roman numerals

#let solution = thmplain(
  "solution",
  "Solution",
  base: "exercise",
  inset: 0em,
).with(numbering: none)

#let qst = thmplain(
  "qst",
  "Q",
  // base: none,
  inset: (bottom: 2em, left: 0em, right: 0em),
)

#let qstnn = thmplain(
  "qstn",
  "q",
  // base: "qst",
  base: none,
  inset: (bottom: 2em, left: 1.2em, right: 1.2em),
)

#let sol = thmplain(
  "solve",
  "Solve",
  base: "qst",
  inset: 0em,
).with(numbering: none)

#let ps = thmplain(
  "ps",
  "ps",
  base: "qst",
  inset: 0em,
  bodyfmt: x => [ #text(font: ("Libertinus Serif", "Adobe Kaiti Std R"), rgb("#ff0000"))[#x]],
).with(numbering: none)


