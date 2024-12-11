#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Chapter 3",
  authors: ("suspen",),
  language: "ch",
)

= 函数微分

#example("典型例子")[
  + 有界函数的导数不一定也有界：有界函数导数不一定是有界函数$(sqrt(x))' = 1/(2 sqrt(x))$, 其导数在 $(0, 1]$ 无界。
  + 连续不一定可导：$y = |x|$ 。
]

== 导数

#remark("连续与可导")[
  1. $phi(x)$ 连续 $ <=> lim_(x -> a) phi(x) = phi(a)$.
]

#definition("几何意义")[
  函数在某点的导数等于在这点的切线的斜率：
  $ f'(x_0) = k $
]

== 微分

#definition[
  有 $f(x)$ 在 $x_0$ 处可微，则有 $ dif y|_(x = x_0) = A ast Delta x = f'(x) dif x $
]