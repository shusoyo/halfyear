#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Basic Knoweledge",
  language: "ch",
)

#let vb = $bold(beta)$
#let va = $bold(alpha)$
#let ve = $bold(e)$

#let mbb = $bold(B)$
#let mba = $bold(A)$


= Chapter 0

#annotation([$r(bold(A)) = 1$ 总结])[
  + 假设 $bold(A) = (a_(i j))_(n times n)$ 则 $exists va = (a_1, a_2, dots , a_n), vb = (b_1, b_2, ..., b_n),$ $bold(A) = va^T vb .$

  + $tr(bold(A)) = va dot vb .$

  + $bold(A)^n = tr(mba)^(n - 1) mba .$

  #remark()[
    + $tr(bold(A))$ 是 $bold(A)$ 主对角线上所有元素的和。
  ]
]
