#import "@preview/ctheorems:1.1.3": *

#let tfont = (
  "New Computer Modern Math",
  (name: "New Computer Modern", covers: "latin-in-cjk"),
  "Adobe Kaiti Std R",
)

#let thm-name-fmt = name => [
  #text(font: tfont, rgb("#e60012"))[#h(0.1em) #name #h(-0.2em)]
]


#let thmbox = thmbox.with(
  namefmt: thm-name-fmt,
  base_level: 1,
  // titlefmt: t => text(size: 0.98em)[#strong[#t]],
  inset: 0em,
)

#let thmplain = thmplain.with(
  breakable: false,
  namefmt: thm-name-fmt,
  // titlefmt: t => text(size: 0.98em)[#emph[#t]],
  base_level: 1,
  inset: 0em,
)

#let annotation = thmplain(
  "annotation",
  "Annotation",
)

#let ref = thmplain(
  "ref",
  "ref",
).with(numbering: none)

#let proposition = thmbox(
  "proposition",
  "Proposition",
)

#let formula = thmbox(
  "formula",
  "Formula",
)

#let definition = thmbox(
  "definition", // Definitions use their own counter
  "Definition",
)

#let theorem = thmbox(
  "theorem",
  "Theorem",
)

#let proof = thmproof(
  "proof",
  "Proof",
  titlefmt: t => text(size: 0.95em)[#emph[#t]],
  // inset: (left: 1em, right: 1em),
  base: "theorem",
)

#let lemma = thmbox(
  "theorem", // Lemmas use the same counter as Theorems
  "Lemma",
)

#let corollary = thmbox(
  "corollary",
  "Corollary",
  // base: "theorem", // Corollaries are 'attached' to Theorems
)

#let example = thmbox(
  "example",
  "Example",
  inset: 0em,
)

#let properties = thmplain(
  "properties",
  "Properties",
).with(numbering: none)

#let remark = thmplain(
  "remark",
  "Remark",
  inset: 0em,
).with(numbering: none)

#let apdx = thmbox(
  "apdx",
  "Appendix",
  stroke: 0.6pt,
  inset: 1em,
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

#let qst = thmplain("qst", "Q", base: none, inset: (
  bottom: 2em,
  left: 0em,
  right: 0em,
)).with(breakable: false)

#let qset = thmbox("qset", "Q Set", bodyfmt: it => grid(
  inset: (left: 1.2em, right: 1.2em),
  [#it],
)).with(numbering: none, breakable: true)


#let sol = thmplain(
  "solve",
  "Solve",
  base: "qst",
  base_level: "2",
  inset: 0em,
).with(numbering: none)

#let ps = thmplain(
  "ps",
  "hints",
  base: "qst",
  inset: 0em,
  titlefmt: x => [
    #text(
      font: (
        "New Computer Modern",
        "Adobe Kaiti Std R",
      ),
      yellow.negate(space: rgb),
    )[#x]],
  bodyfmt: emph,
).with(numbering: none)

