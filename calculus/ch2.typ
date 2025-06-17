#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Chapter 2",
  language: "ch",
)

= 函数极限

#definition([函数极限的 $epsilon - {delta, X}$ 语言描述])[
  趋于 $x_0$ 的 $epsilon - delta$ 表示以及趋于 $oo$ 的 $epsilon - X$ 表示如下:
  $
    lim_(x -> x_0) f(x) &= A <=> forall epsilon > 0, exists delta > 0, 当 0 < |x - x_0| < delta 时，有 |f(x) - A| < epsilon.
    \
    lim_(x -> oo) f(x) &= A <=> forall epsilon > 0, exists X > 0, 当 |x| > X 时，有 |f(x) - A| < epsilon.
  $
]

#properties("局部性")[ ]
#properties("保号性")[ ]
#properties("有界性")[ ]

#propostion("无穷小的比阶")[
  给定两个无穷小 $a, b$, 根据 $a / b$ 作出判断。
  #align(center)[
    #table(
      columns: 4,
      stroke: 0pt,
      [$1$], [$C$], [$0$], [$oo$],
      [等价], [同阶], [高阶], [低阶],
    )
  ]
]

#theorem("无穷小与函数极限的关系")[
  $ lim_(x -> (x_0 \/ oo)) f(x) = A <=> f(x) = A + alpha $
  $alpha$ 是 $x -> (x_0 \/ oo)$ 处的无穷小量。
]

#definition("等价无穷小")[
  有 $a in RR union {infinity, -infinity}. "有函数" f, g, h$ 在 $x = a$ 附近（临域内）有定义，且
  $ lim_(x -> a) f(x) / h(x) = 1 $
  则有
  $
    lim_(x->a) f(x) / g(x) = lim_(x ->a) h(x) / g(x) \
    lim_(x->a) g(x) / f(x) = lim_(x ->a) g(x) / h(x) \
  $
  即 $f$ 与 $h$ 为等价无穷小，记作 $f ~ h, (x -> a)$。

  #remark[
    + @Equivalent-Infintesimal 中的常用的等价无穷小，使用时需要注意应满足前提条件 $x -> 0$。
    + @fm1-maclaurin-expansion 中含有常用的泰勒展开式 .
    + 在进行等价无穷小代换时，只能在分子分母形式时替换（可以通过极限运算法则化简为单项式）。
  ]
]



// #annotation("两个重要极限")[
//   $ lim_(x -> 0) sin(x) / x = 1, lim_(x -> 0) (1 + 1 / x)^x = e. $
// ]

#annotation("几个重要极限结论")[
  + $a > 0$ 时 $lim_(t -> 0^+) t^a ln t = 0$ （洛必达）
]

#definition("7 种未定式")[
  $ 0 / 0, infinity / infinity , 0 dot infinity, infinity - infinity, infinity^0, 0^0, 1^infinity $
]

#definition("无界变量和无穷大量")[
  《高等数学辅导讲义》P11.
  #remark[
    无界不一定要有无穷大的量，如 $f(x) = x sin x$.
  ]
]

== 函数极限的计算
#propostion([$lim f(x) / g(x)$ 形式函数极限的性质])[
  + $lim f(x) / g(x) = A, "如果" lim g(x) = 0$, 则 $lim f(x) = 0.$
    #proof[
      $f(x) = f(x) / g(x) g(x), lim f(x) = lim f(x) / g(x) lim g(x) = A times lim g(x) = A times 0 = 0.$
    ]

  + $lim f(x) / g(x) = A != 0, "如果" lim f(x) = 0$, 则 $lim g(x) = 0.$
    #proof[
      $lim g(x) = lim f(x) / (f(x) \/ g(x)) = lim f \/ lim f(x) / g(x) = 0 / A = 0.$
    ]
]

#propostion()[
  + 若 $lim f (x)$ 存在，$lim g (x)$ 不存在，则
    $lim [f (x) plus.minus g (x)]$
    必不存在。$arrow.r.double = lim f (x) plus.minus lim g (x)$

  + 若 $lim f (x)$ 不存在，$lim g (x)$ 也不存在，则
    $lim [f (x) plus.minus g (x)]$ 不一定不存在。

  + 若 $lim f (x) = A eq.not 0$，则
    $lim f (x) g (x) = A lim g (x)$，即乘除法中非零因子可往外先提出去。
]

#definition("洛必达法则")[
  《张宇三十讲 - 2025》P25
]
