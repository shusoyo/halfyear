#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "ch4",
  language: "ch",
)

= 一元函数微分学的计算

== 复杂函数求导

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
