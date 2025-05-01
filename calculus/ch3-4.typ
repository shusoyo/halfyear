#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Chapter 3",
  language: "ch",
)

= 一元函数微分学

== 概念
#annotation("典型例子")[
  + 有界函数的导数不一定也有界：有界函数导数不一定是有界函数$(sqrt(x))' = 1/(2 sqrt(x))$, 其导数在 $(0, 1]$ 无界。
  + 没明确导数存在的情况下, 使用导数的定义求导数。
  + 导函数存在的情况下, 奇函数的导数是偶函数, 偶函数的导数是奇函数。
  + $f(x)$有周期T, 如果导数存在, 则$f'(x)$周期也是T。
]

=== 导数

#remark("连续与可导")[
  1. $phi(x)$ 连续 $ <=> lim_(x -> a) phi(x) = phi(a)$.
  + 连续不一定可导：$y = |x|$ 。
  + 可导一定连续。
    #proof[TODO]
]

#definition("几何意义")[
  函数在某点的导数等于在这点的切线的斜率：
  $ f'(x_0) = k $
]

=== 微分

#definition[
  有 $f(x)$ 在 $x_0$ 处可微，则有 $ dif y|_(x = x_0) = A ast Delta x = f'(x) dif x $
]

== 计算

=== 复杂函数求导

#knowledge("分段函数求导")[
  先用求导公式求出不含分界点的部分，然后再用导数的定义求出分界点的。
]

#formula("反函数求导")[
  $
    x'_(y) &= 1 / (y'_x) \
    x''_(y y) &= - (y''_(x x)) / (y'_x)^3
  $
]

// #formula("隐函数求导")[
//   两边对x求导
// ]

#formula("参数方程求导")[
  // $ 函数 y = f(x)$由参数方程 $cases(x = phi(t),y = psi(t)) $ 确定。 $

  #align(center)[
    函数 $y = f(x)$ 由参数方程 $cases(x = phi(t),y = psi(t))$ 确定。
  ]
  $
    (d y) / (d x) &= (psi'(x)) / (phi'(x)) \
    (d^2 x) / (d y^2) &= (psi''(t) phi'(t) - psi'(t) phi''(t)) / ([phi'(t)]^3)
  $
]

#knowledge("对数求导法")[
  对于多项相乘，相除，开方，乘方的式子，可以取对数求导。对于开方，乘方的函数，可以化成指数函数(底数是e)。
]

#formula("高阶函数求导")[
  / 数学归纳法: \
    多次求导, 发现规律.

  / 莱布尼茨公式: 有 $u = u(x) , v = v(x)$,
    $
      (u plus.minus v)^((n)) &= u^((n)) plus.minus v^((n)) \
      (u v)^((n)) &= sum^n_(k = 0)C^k_n ast u^((n-k)) ast v^((k))
    $

  / 泰勒展开: \
    根据泰勒展开系数的一致性，部分展开和整体展开时，系数一致. \
    此事在 Discord - questions - ch4: 11 亦有记载.
]

