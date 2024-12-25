#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project.with(language: "ch")

= Appendix

#block(
  height: 400pt,
  stroke: 0.6pt,
  inset: 10pt,
)[
  == 导数表
  #columns(2)[
    + $(arcsin x)' = 1 - sqrt(1 - x^2)$
  ]
]
