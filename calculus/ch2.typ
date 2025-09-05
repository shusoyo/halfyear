#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Chapter 2",
  language: "ch",
)


#let lim = $limits(lim)$

= 函数极限

== 概念与性质
#definition([函数极限的 $epsilon - {delta, X}$ 语言描述])[
  趋于 $x_0$ 的 $epsilon - delta$ 表示以及趋于 $oo$ 的 $epsilon - X$ 表示如下:
  $
    lim_(x -> x_0) f(x) &= A <=> forall epsilon > 0, exists delta > 0, 当 0 < |x - x_0| < delta 时，有 |f(x) - A| < epsilon.
    \
    lim_(x -> oo) f(x) &= A <=> forall epsilon > 0, exists X > 0, 当 |x| > X 时，有 |f(x) - A| < epsilon.
  $
]
#properties("有界性")[
  若极限 $lim_(x arrow.r x_0) f (x)$ 存在，则 $f (x)$ 在点 $x_0$
  某去心邻域内有界。
]

#properties("保号性")[
  设 $lim_(x arrow.r x_0) f (x) = A$，则
  + 若 $A > 0$（或 $A < 0$）$arrow.r.double exists delta > 0$，当
    $x in accent(U, circle) (x_0 , delta)$ 时，$f (x) > 0$（或
    $f (x) < 0$）；

  + 若 $exists delta > 0$，当 $x in accent(U, circle) (x_0 , delta)$
    时，$f (x) gt.eq 0$（或
    $f (x) lt.eq 0$）$arrow.r.double A gt.eq 0$（或 $A lt.eq 0$）。
]
#annotation("保号性的等号问题")[
  举例子：
  + 函数 $x^3 >= 0$, 但 $lim_(x -> 0^+) x^3 != lim_(x -> 0^-) x^3$.
  + $1/n > 0$  但 $lim_(n -> oo) 1/n = 0$.
]
#properties("保序性")[
  $lim_(x arrow.r x_0) f (x) = A , lim_(x arrow.r x_0) g (x) = B$，则

  + 若 $A > B arrow.r.double exists delta > 0$，当
    $x in accent(U, circle)(x_0 , delta)$ 时，$f (x) > g (x)$；

  + 若 $exists delta > 0$，当 $x in accent(U, circle) (x_0 , delta)$
    时，$f (x) gt.eq g (x) arrow.r.double A gt.eq B$。
]

#annotation("函数极限的局部性与数列极限的性质的区别")[
  TODO
]


== 无穷小和无穷大
=== 无穷小的分阶
#definition("无穷小的分阶")[
  给定两个无穷小 $alpha, beta$, 根据 $alpha / beta$ 作出判断。
  #text(font: ("Libertinus Serif", "Adobe Kaiti Std R"))[
    #align(center)[
      #table(
        columns: 4,
        stroke: 0pt,
        [$1$], [$c med (c != 0)$], [$0$], [$oo$],
        [等价], [同阶], [高阶], [低阶],
      )
    ]
  ]

  特别的，如果 $lim beta / alpha^k = c != 0, k > 0$, 那么就是说 $beta$ 是关于 $alpha$ 的 $k$ 阶无穷小。
]<Infinitesimal-ratio-order>

#proposition("无穷小量阶的比较")[
  由定义可知，无穷小量阶的比较就是求 $0 / 0$ 型极限.

  + 在比较几个函数的无穷小的阶数时，可以两两构造出 $lim f / g$ 来根据 @Infinitesimal-ratio-order 来比阶,

  + 也可以构造出 $lim f / x^k = c != 0$ 来确定一个函数是 $x$ 的几阶无穷小.
]

#lemma()[
  $lim f / x^k = c != 0 => lim f / (c x^k) = 1 => f ~ c x^k$.
]<Infinitesimal-trans-k-to-eq>

#proposition([与积分有关的无穷小的比阶])[
  若 $f (x)$ 在 $x = 0$ 的某邻域内连续，且当 $x arrow.r 0$ 时 $f (x)$ 是 $x$ 的 $m$ 阶无穷小，$phi (x)$ 是 $x$ 的 $n$ 阶无穷小，则当 $x arrow.r 0$ 时 $F (x) = integral_0^(phi (x)) f (t) thin d t$ 是 $x$ 的 $n (m + 1)$ 阶无穷小。

  #proof[
    由 @Infinitesimal-trans-k-to-eq 可将高阶无穷小转化为等价无穷小，进而可以使用等价无穷小代换，对变上限积分求导定阶即可证明。
  ]
]

#theorem("无穷小与函数极限的关系")[
  $ lim_(x -> (x_0 \/ oo)) f(x) = A <=> f(x) = A + alpha $
  $alpha$ 是 $x -> (x_0 \/ oo)$ 处的无穷小量。
]

=== 等价无穷小与等价无穷小代换
#definition("等价无穷小")[
  有 $a in RR union {infinity, -infinity}. "有函数" f, g, h$ 在 $x = a$ 附近（临域内）有定义，且
  $ lim_(x -> a) f(x) / h(x) = 1 $
  则有
  $
    lim_(x->a) f(x) / g(x) = lim_(x ->a) h(x) / g(x), med
    lim_(x->a) g(x) / f(x) = lim_(x ->a) g(x) / h(x) \
  $
  即 $f$ 与 $h$ 为等价无穷小，记作 $f ~ h, (x -> a)$。
]

#theorem("等价无穷小的充要条件")[
  $beta ~ alpha <=> beta = alpha + o(alpha)$.
]

#proposition("等价无穷小代换")[
  + 加法：如果 $alpha_1 tilde.op alpha_2$，$beta_1 tilde.op beta_2$，且 $lim alpha_2 / beta_2 = k eq.not -1$，那么 $alpha_1 + beta_1 tilde.op alpha_2 + beta_2$。

  + 减法：如果 $alpha_1 tilde.op alpha_2$，$beta_1 tilde.op beta_2$，且 $lim alpha_2 / beta_2 = k eq.not 1$，那么 $alpha_1 - beta_1 tilde.op alpha_2 - beta_2$。

  #proof[
    $
      lim frac(alpha_1 - beta_1, alpha_2 - beta_2) & = lim frac(alpha_1 / beta_1 - 1, alpha_2 / beta_2 - 1)
                                                     = frac(lim alpha_1 / beta_1 - 1, lim alpha_2 / beta_2 - lim beta_2 / beta_1)
                                                     = frac(k - 1, lim alpha_2 / beta_1 - lim beta_2 / beta_1)
    $
    因为 $lim alpha_2 / beta_1 - lim beta_2 / beta_1 = k - 1 eq.not 0$，所以 $lim frac(alpha_1 - beta_1, alpha_2 - beta_2) = 1$，则 $alpha_1 - beta_1 tilde.op alpha_2 - beta_2$。

    加法证明同理。
  ]
]

#proposition([变限积分下等价])[
  设 $f (x)$ 和 $g (x)$ 在 $x = a$ 的某邻域内连续，且
  $lim_(x arrow.r a) frac(f (x), g (x)) = 1$，则
  $ integral_a^x f (t) thin dif t tilde.op integral_a^x g (t) thin dif t . $
  #proof[
    $0 / 0$ 极限，用洛必达法则。
  ]
]

#proposition("对数下等价")[
  已知 $lim_(x arrow.r x_0) frac(f (x), g (x)) = 1$ 且
  $frac(1, ln lr(|g (x)|))$ 在某 $accent(U, circle) (x_0)$ 中有界，则
  $ lim_(x arrow.r x_0) frac(ln lr(|f (x)|), ln lr(|g (x)|)) = 1 . $
  #proof[
    $
      lim_(x -> x_0) (ln abs(f(x))) / (ln abs(g(x))) = lim_(x -> x_0) (ln abs(f(x)) / abs(g(x)) + ln abs(g(x))) / (ln abs(g(x))) = lim_(x -> x_0) (ln abs(f(x)) / abs(g(x)) ) / (ln abs(g(x))) + 1
    $

    因为 $lim_(x -> x_0) 1 / (ln abs(g(x)))$ 有界，且 $lim_(x -> x_0) ln abs(f(x) / g(x)) = 0$ 故

    $
      lim_(x -> x_0) (ln abs(f(x))) / (ln abs(g(x))) = 1
    $
  ]

  #ref[
    https://www.bilibili.com/video/BV1s94y1o7nf
  ]
]

=== 无穷大
#proposition("函数极限中常用的无穷大的比较")[
  当 $x arrow.r + oo$ 时：
  $ ln^a x lt.double x^beta lt.double a^x, (a > 0, beta > 0, a > 1) . $
]

#definition("无界变量和无穷大量")[
  《高等数学辅导讲义》P11.
  #remark[
    无界不一定要有无穷大的量，如 $f(x) = x sin x$.
  ]
]

== 常用极限
#proposition("常用的基本极限")[
  + $ lim_(x arrow.r 0) frac(sin x, x) = 1 $

  + $ lim_(x arrow.r 0) (1 + x)^(1 / x) = e $

  + $ lim_(x arrow.r oo) (1 + 1 / x)^x = e $

  + $ lim_(x arrow.r 0) frac(a^x - 1, x) = ln a quad (a > 0) $

  + $ lim_(n arrow.r oo) root(n, n) = 1 $

  + $
      lim_(x arrow.r oo) frac(a_n x^n + a_(n - 1) x^(n - 1) + dots.h.c + a_1 x + a_0, b_m x^m + b_(m - 1) x^(m - 1) + dots.h.c + b_1 x + b_0) =
      cases(
        a_n / b_m\, & n = m,
        0\, & n < m,
        oo\, & n > m
      )
    $

  + $
      lim_(n arrow.r oo) x^n = cases(
        0\, & abs(x) < 1,
        oo\, & abs(x) > 1,
        1\, & x = 1,
        "不存在"\, & x = -1
      )
    $

  + $ lim_(n arrow.r oo) e^(n x) = cases(0\, & x < 0, + oo\, & x > 0, 1\, & x = 0) $
]

== 函数极限的计算

#proposition("两个重要极限")[
  $ lim_(x -> 0) (sin x) / x = 1, lim_(x -> 0) (1 + 1 / x)^x = e. $
]

#annotation("几个重要极限结论")[
  + $a > 0$ 时 $lim_(t -> 0^+) t^a ln t = 0$ （洛必达）
]

#definition("7 种未定式")[
  $ 0 / 0, infinity / infinity , 0 dot infinity, infinity - infinity, infinity^0, 0^0, 1^infinity $
]


#proposition([$lim f(x) / g(x)$ 形式函数极限的性质])[
  + $lim f(x) / g(x) = A, "如果" lim g(x) = 0$, 则 $lim f(x) = 0.$
    #proof[
      $f(x) = f(x) / g(x) g(x), lim f(x) = lim f(x) / g(x) lim g(x) = A times lim g(x) = A times 0 = 0.$
    ]

  + $lim f(x) / g(x) = A != 0, "如果" lim f(x) = 0$, 则 $lim g(x) = 0.$
    #proof[
      $lim g(x) = lim f(x) / (f(x) \/ g(x)) = lim f \/ lim f(x) / g(x) = 0 / A = 0.$
    ]
]

#proposition()[
  + 若 $lim f (x)$ 存在，$lim g (x)$ 不存在，则
    $lim [f (x) plus.minus g (x)]$
    必不存在。

  + 若 $lim f (x)$ 不存在，$lim g (x)$ 也不存在，则
    $lim [f (x) plus.minus g (x)]$ 不一定不存在。

  + 若 $lim f (x) = A eq.not 0$，则
    $lim f (x) g (x) = A lim g (x)$，即乘除法中非零因子可往外先提出去。
]

#definition("洛必达法则")[
  若
  + $lim_(x arrow.r x_0) f (x) = lim_(x arrow.r x_0) g (x) = 0 med (oo)$；

  + $f (x)$ 和 $g (x)$ 在 $x_0$ 的某去心邻域内可导，且 $g' (x) eq.not 0$；

  + $lim_(x arrow.r x_0) frac(f' (x), g' (x))$ 存在（或 $oo$）。

  则
  $ lim_(x arrow.r x_0) frac(f (x), g (x)) = lim_(x arrow.r x_0) frac(f' (x), g' (x)) . $
]

== 函数的连续与间断

见《高等数学辅导讲义》P44

#proposition("连续性的四则运算法则")[
  设 $f (x)$ 与 $g (x)$ 都在点 $x = x_0$
  处连续，则 $f (x) plus.minus g (x)$ 与 $f (x) g (x)$ 在点 $x = x_0$
  处连续，当 $g (x_0) eq.not 0$ 时，$f (x) \/ g (x)$ 在点 $x = x_0$
  处也连续。
]

#proposition("复合函数的连续性")[
  设 $u = phi (x)$ 在点 $x = x_0$ 处连续，$y = f (u)$
  在点 $u = u_0$ 处连续，且 $u_0 = phi (x_0)$，则 $f [phi (x)]$ 在点
  $x = x_0$ 处连续。

]
#proposition("反函数的连续性")[
  设 $y = f (x)$ 在区间 $I_x$ 上单调且连续，则反函数
  $x = phi (y)$ 在对应的区间 $I_y = { y \| y = f (x) , x in I_x }$
  上连续且有相同的单调性。
]

=== 间断点
#definition("间断点的分类")[
  函数 $f (x)$ 可能在 $x_0$ 处存在两类间断点

  + $x_0$ 处单侧极限存在但是不等于 $f (x_0)$，则 $f (x)$ 在 $x_0$
    处有间断点，称其为普通间断点或者第一类间断点.
    若左右极限存在且相等，则称其为可去间断点；若左右极限存在且不相等，通常说在
    $f (x)$ 在 $x_0$ 处有跃度.

  + $x_0$ 处单侧极限是无穷或者根本不存在，则 $f (x)$ 在 $x_0$
    处有间断点，称其为第二类间断点.
]

=== 闭区间上连续函数的性质
#theorem("有界与最值定理")[
  在闭区间上连续的函数在该区间上有界且一定能取得它的最大值和最小值。
]<有界与最值定理>


#theorem("介值定理")[
  若 $f (x)$ 在 $[a,b]$ 上连续，且 $f (a) eq.not f (b)$，则对 $f (a)$ 与
  $f (b)$ 之间任一数 $C$，至少存在一个 $xi in (a,b)$，使得
  $f (xi) = C$.

  #corollary[
    若 $f (x)$ 在 $[a,b]$ 上连续，则 $f (x)$ 在 $[a , b]$
    可取到介于最小值 $m$ 与最大值 $M$ 之间的任何值。
  ]
]


#theorem("零点定理")[
  设函数 $f (x)$ 在闭区间 $[a,b]$ 连续，且 $f (a) dot.op f (b) < 0$，则在开区间
  $(a , b)$ 内至少有一点 $xi$，使 $f (xi) = 0 .$
]
