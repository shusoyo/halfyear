#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project.with(language: "ch")

#let mkItg = f => $integral #f dif x$

= Appendix

#block(
  height: 400pt,
  stroke: 0.6pt,
  inset: 10pt,
)[
  == 导数表
  #columns(2)[
    + $(arcsin x)' = 1 / sqrt(1 - x^2)$

    + $(arccos x)' = - 1 / sqrt(1 - x^2)$
    + $(tan x)' = sec^2 x$
    + $(sec x)' = sec x tan x$
    + $(a^x)' = a^x ln a$
  ]
] <integral-tables>

#block(
  height: 300pt,
  stroke: 0.6pt,
  inset: 10pt,
)[
  == 积分表
  #columns(2)[
    + $mkItg(x^mu) = x^(mu + 1) / (mu + 1) + C$

    + $mkItg(1/x) = ln abs(x) + C$
    + $mkItg(1/(1 + x^2)) = arctan x + C$
    + $mkItg(1/(sqrt(1 - x^2))) = arcsin x + C$
    + $mkItg(1/(cos^2 x)) = mkItg(sec^2 x) = tan x + C$
    + $mkItg(1/(sin^2 x)) = mkItg(csc^2 x) = - cot x + C$
    + $mkItg(sec x ast tan x) = sec x + C$
    + $mkItg(csc x cot x) = -csc x + C$
    + $mkItg(a^x) = a^x / (ln a) + C$
    + $mkItg(sec x) =ln|sec x+tan x| + C$
  ]
]
