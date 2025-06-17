#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project.with(language: "ch")
// #show math.equation.where(block: false): math.display

// + `A` : 《武忠祥高数强化讲义》
// + `B` : 《张宇三十讲》- 26
// + `C` : 《张宇 1000 题基础篇》- 26， 用 § 来表示章节
// + `D` : 《李艳芳历年考研数学真题解析及复习思路》
// + `R 2 08 xxx` : 指真题，数二，08 年，答案是 xxx 的答案

// #set par(leading: 2em)

#let qg2c = grid.with(columns: (1fr, 1fr))

#let lim = $limits(lim)$
= 函数、极限、连续

== 函数及其性质
#qst(`?`)[
  有一种给一个三角函数，但是定义域并非都在反三角函数的主值区间内，然后求其反三角函数.
]

// #qst(`A P6 E1`)[
//   已知函数 $f \( x \) = (integral_0^x ln(1 + t^2) dif t) / (x^alpha)$ 在 $( 0 , + oo )$ 上有界，求 $alpha$ 的取值范围.
// ]

// #qst(`A P17 E1`)[

//   + $lim_(x -> 1) (ln cos(x - 1)) / (1 - sin pi / 2 x)$
// ]

== 极限的定义及其性质

#qst(`B P129 E5`)[
  已知 $a_n = 1 - frac(\( - 1 \)^n, n) med \( n = 1 \, 2 \, dots.h.c \)$，判断 ${ a_n }$ 是否有最大最小值.
]

#qst(`B P131 E7`)[
  当 $x arrow.r 0$ 时，判断 $1 / x sin 1 / x$ 是无界变量还是无穷大量.
]

#qst(`R 2 08 lyf-p33`)[
  设函数 $f \( x \)$ 在 $\( - oo \, + oo \)$
  内单调有界，${ x_n }$ 为数列，判断下列命题是否正确.
  #set enum(numbering: "A.")

  #qg2c(
    [
      + 若 ${ x_n }$ 收敛，则 ${ f \( x_n \) }$ 收敛.

      + 若 ${ x_n }$ 单调，则 ${ f \( x_n \) }$ 收敛.
    ],
    [
      3. 若 ${ f \( x_n \) }$ 收敛，则 ${ x_n }$ 收敛.

      + 若 ${ f \( x_n \) }$ 单调，则 ${ x_n }$ 收敛.
    ],
  )
]

== 函数极限的计算

== 数列极限的计算

#qst(`A P13 E5`)[
  证明：
  + 若 $lim_(n arrow.r oo) a_(n + 1) / a_n = a$，且 $\|a| < 1$，则 $lim_(n arrow.r oo) a_n = 0$；

  + $lim_(n arrow.r oo) frac(2^n n !, n^n) = 0 \, lim_(n arrow.r oo) frac(3^n n !, n^n) = + oo$.
]

#qst(`A P14 E6`)[
  + 证明：对任意的正整数 $n$，都有 $1 / (n + 1) < ln(1 + 1 / n) < n$ 成立。

  + 设 $a_n = 1 + 1 / 2 + ... + 1 / n - ln n, (n = 1, 2, ...)$ ，证明数列 ${ a_n }$ 收敛。
]


#qst(`A P36 E4`)[
  设 $x_1 = 2 \, x_(n + 1) = 2 + 1 / x_n med \( n = 1 \, 2 \, dots.h.c \)$，求极限 $lim_(n arrow.r oo) x_n$.
]



#qst(`A P36 E5`)[
  设 $f \( x \)$ 可微，且 $0 < f' \( x \) lt.eq frac(1, 2 + x^2)$，数列 $x_0 = A \, x_n = f \( x_(n - 1) \) \, n = 1 \, 2 \, dots.h.c$. 证明 $lim_(n arrow.r oo) x_n$ 存在且是方程 $f \( x \) = x$ 的唯一实根.
]

#qst(`B P142 E17`)[
  判断 “存在正整数 $N$，当 $n gt.eq N$ 时，恒有
  $\|x_n - a| lt.eq 1 / n$ ” 是否与数列 ${ x_n }$ 收敛于 $a$ 等价。
]

#qst(`C §2 E3`)[
  设 ${ a_n }$ 非负有界，$b_n = sum_(k = 1)^n frac(k, a_n + n^2)$，求
  $lim_(n arrow.r oo) 1 / b_n$.
]

#qst(`B P140 E15`)[
  已知方程 $x = cos x$ 在 $(0 \, pi / 3)$ 内有唯一实根 $a$，设 $- 1 lt.eq x_1 lt.eq 1$，定义 $x_(n + 1) = cos x_n\, n = 1\, 2\, dots.h.c$，证明 $lim_(n arrow.r oo) x_n$ 存在，且极限值是 $a$。
]

#qst(`R 2 06 lyf-p36-e6`)[
  设数列 ${ x_n }$ 满足
  $0 < x_1 < pi \, x_(n + 1) = sin x_n med \( n = 1 \, 2 \, dots.h.c \)$, 证明 $lim_(n arrow.r oo) x_n$ 存在，并求该极限.
]


== 无穷小的比阶

== 函数的连续与间断

#qst(`A P44 E1`)[
  设函数 $f \( x \) = frac(x, a + e^(b x))$ 在 $\( - oo \, + oo \)$ 内连续，且 $lim_(x arrow.r - oo) f \( x \) = 0$，则常数 $a\, b$ 应满足什么条件 ？
]

#qst(`B P229 e2`)[
  若函数 $f \( x \) = frac(1, x e^(- x) - a)$ 在
  $\( - oo \, + oo \)$ 内处处连续，求常数 $a$ 的取值范围。
]

#qst(`A P45 E2`)[
  设 $f \( x \)$ 和 $phi \( x \)$ 在 $\( - oo \, + oo \)$ 上有定义，$f \( x \)$ 为连续函数，且 $f \( x \) eq.not 0 \, phi \( x \)$ 有间断点，判断 $phi ( f ( x ) ), \[ phi \( x \) \]^2, f( phi ( x ) ), frac(phi \( x \), f \( x \))$ 是否有间断点。
]

#qst(`A P46 E5`)[
  求极限
  $lim_(t arrow.r x) (frac(sin t, sin x))^(x \/ (sin t - sin x))$，记此极限为
  $f \( x \)$，求函数 $f \( x \)$ 的间断点并指出类型。
]

#qst(`A P48 E4`)[
  设 $f \( x \)$ 在 $\( - oo \, + oo \)$ 上连续，且 $lim_(x arrow.r oo) frac(f \( x \), x) = 0$，试证存在 $xi in \( - oo \, + oo \)$，使 $f \( xi \) + xi = 0$.
]


// #qst(`R 2 02 lyf-p45`)[
//   设函数 $f \( x \)$ 在 $x = 0$ 的某邻域内具有二阶连续导数，且 $f (0) != 0,$$f' \( 0 \) eq.not 0 \, f'' \( 0 \) eq.not 0$。证明：存在唯一的一组实数 $lambda_1 \, lambda_2 \, lambda_3$，使得当 $h arrow.r 0$ 时，$lambda_1 f \( h \) + lambda_2 f \( 2 h \) + lambda_3 f \( 3 h \) - f \( 0 \)$ 是比 $h^2$ 高阶的无穷小。
// ]

// #qst(`R 2 06 lyf-p46`)[
//   试确定常数 $A \, B \, C$ 的值, 使得
//   $e^x \( 1 + B x + C x^2 \) = 1 + A x + o \( x^3 \)$，其中 $o \( x^3 \)$
//   是当 $x arrow.r 0$ 时比 $x^3$ 高阶的无穷小量。
// ]


#pagebreak()

= 一元函数微分学

// #annotation[
//   + $f(x)$ 与 $|f(x)|$ 的在连续与可导上关系

//   + $sqrt(x^2) = |x|$

//   + 罗尔定理的推论

//   + 实系数奇次方程至少有一个根

//   + $(x - a)^alpha (x - b)^beta ...$ 形式的方程的极值点与拐点个数的推论

//   + 物理应用
// ]

// #qst(`A P55 E3`)[
//   设函数 $f \( x \)$ 在 $x = 0$ 处连续，且 $lim_(x arrow.r 0) [frac(f \( x \), x) + frac(ln \( 1 + x \), x^2)] = 3 / 2$，求 $f(0), f'(0)$.
// ]

// #qst(`A P71 E5`)[
//   设 $f \( x \)$ 二阶可导，且 $lim_(h arrow.r 0) frac(f \( x_0 + h \) - f \( x_0 \) - f' \( x_0 \), h^2) = a eq.not 0$，试讨论 $f \( x \)$ 在 $x_0$ 点的极值。

//   #ps[函数和常数还分不清真有点闹麻了]
// ]

// #qst(`R 2 02 {B-p228-e21, lyf-p133-e10}`)[
//   设 $0 < a < b \,$ 证明不等式 $frac(2 a, a^2 + b^2) < frac(ln b - ln a, b - a) < 1 / sqrt(a b) .$
//   #ps[不要在一棵树上吊死]
// ]
// #qst(`R 2 90 lyf-p109-e7`)[
//   求曲线 $y = frac(1, 1 + x^2)$ $(x > 0)$ 的拐点。
//   #ps[计算]
// ]
// #qst(`R 2 94 lyf-p130-e6`)[
//   设 $f(x)$ 在 $[0,1]$ 上连续且递减，证明：当 $0 < lambda < 1$ 时，有 $integral_0^lambda f (x) thin upright(d) x gt.eq lambda integral_0^1 f (x) thin dif x .$
//   #ps[想想别的做法]
// ]
// #qst(`R 2 95 lyf-p131-e7`)[
//   设 $lim_(x arrow.r 0) frac(f (x), x) = 1$，且 $f'' (x) > 0$，证明
//   $f (x) gt.eq x$。
//   #ps[想想别的做法，中值定理，泰勒公式]
// ]

== 概念题

#qst(`A P56 E2`)[
  设 $f \( 0 \) = 0$，判断以下是否为 $f \( x \)$ 在点 $x = 0$ 可导的充要条件.
  #set enum(numbering: "A.")
  #qg2c(
    [+ $lim_(h arrow.r 0) 1 / h^2 f \( 1 - cos h \)$ 存在.],
    [2. $lim_(h arrow.r 0) 1 / h^2 f \( h - sin h \)$ 存在.],
  )
]

#qst(`A P58 E5`)[
  函数 $|f( x )|$ 在点 $x = a$ 处的可导性与 $f(x)$ 的关系。
]

#qst(`A P61 E4`)[
  判断其是否存在
  $ lim_(x -> 0) (f(x^3 sin 1 / x) - f(0)) / (x^3 sin 1 / x) . $
]

#qst(`B P151 E3`)[
  设 $f \( x \)$ 在 $x = 0$ 的某邻域内有定义，并且
  $\|f(x)| lt.eq 1 - cos x$，证明 $f \( x \)$ 在 $x = 0$ 处可导且 $f' \( 0 \) = 0$.
]


#qst(`B P221 E12`)[
  设函数 $f \( x \)$ 在 $\[0,1]$ 上二阶可导，且 $integral_0^1 f \( x \) thin d x = 0$，则当 $f(1 / 2) < 0$ 时，$f'(x)$ 或 $f''(x)$ 需满足什么条件.
]

#qst(`R 2 98 lyf-p96-e11`)[
  设函数 $f (x)$ 在 $x = a$ 的某个邻域内连续，且 $f (a)$
  为其极大值，则存在 $delta > 0$，当 $x in (a - delta , a + delta)$
  时，证明：$ lim_(t arrow.r a) frac(f \( t \) - f \( x \), \( t - x \)^2) gt.eq 0 thin \( x eq.not a \) $

  #ps[我知道你知道怎么写，但是你的想法不是正确的想法]
]


== 计算题

#qst(`B P175 E11`)[
  设函数 $y = y \( x \)$ 由方程
  $x e^(f \( y \)) = e^y ln 2$ 确定，其中 $f$ 具有二阶导数，且
  $f' eq.not 1$，求 $frac(upright(d)^2 y, upright(d) x^2)$.
]

#qst(`A P61 E1'`)[
  设 $f \( x \) = ln (x + sqrt(1 + x^2))$，求 $f''' \( 0 \)$.

  #ps[泰勒展开]
  #ps[等价无穷小代换的改写]
]

#qst(`R 2 04 lyf-p93-e8`)[
  设 $f \( x \) = integral_x^(x + pi / 2) \|sin t| thin d t$，求 $f \( x \)$ 的值域。
]

#qst(`R 2 01 lyf-p87-e16`)[
  设 $rho = rho \( x \)$ 是抛物线 $y = sqrt(x)$ 上任一点 $M \( x \, y \)$
  $(x gt.eq 1)$ 处的曲率半径，$s = s (x)$ 是该抛物线上介于点
  $A(1, 1)$ 与 $M$ 之间的弧长, 计算 $3 rho frac(dif^2 rho, dif s^2) - (frac(dif rho, dif s))^2$ 的值.
]


== 单调性、凹凸、极值、最值、拐点、渐近线以及根的分布
#qst(`A P73 E3`)[
  曲线 $y = frac(\( 1 + x \)^(3 \/ 2), sqrt(x))$ 的斜渐近线方程为
  #ps[渐近线的定义的推论]
]

#qst(`R 2 01 lyf-p107-e4`)[
  曲线 $y = (x - 1)^2 (x - 3)^2$ 的拐点个数.
  #ps[我知道有结论，但是想想为啥那样，顺便背背结论]
]<题目-4-2001年试题>

#qst(`R 2 96 lyf-p122-e3`)[
  在区间 $(- oo , + oo)$ 内，方程
  $lr(|x|)^(1 / 4) + lr(|x|)^(1 / 2) - cos x = 0$ 根的分布情况。
]

== 不等式的证明
#qst(`A P79 E2`)[
  求证： $ ln(b / a) > frac(2 \( b - a \), b + a) quad \( 0 < a < b \) . $
]

#qst(`B P227 E20`)[
  证明 $ (ln frac(1 + x, x) - frac(1, 1 + x))^2 < frac(1, x \( 1 + x \)^2) quad \( x > 0 \). $
]
#qst(`R 2 00 lyf-p132-e9`)[
  函数 $f (x)$ 在 $\[ 0 , + oo \)$ 上可导，$f (0) = 1$，且满足等式
  $ f' (x) + f (x) - frac(1, x + 1) integral_0^x f (t) thin upright(d) t = 0 . $
  + 求导数 $f' (x)$.

  + 证明：当 $x gt.eq 0$ 时，不等式 $e^(- x) lt.eq f (x) lt.eq 1$ 成立.
]



#qst(`R 2 98 lyf-p131-e8`)[
  设 $x in (0 , 1)$，证明：

  + $(1 + x) ln^2 (1 + x) < x^2$.

  + $frac(1, ln 2) - 1 < frac(1, ln (1 + x)) - 1 / x < 1 / 2$.
]

== 微分中值定理

#qst(`A P85 E6`)[
  设函数 $f \( x \) \, g \( x \)$ 在 $\[a,b]$
  上二阶可导，且
  $g'' \( x \) eq.not 0 \, f \( a \) = f \( b \) = g \( a \) = g \( b \) = 0$。试证

  + 在 $\(a,b)$ 内 $g \( x \) eq.not 0$；

  + 在 $\(a,b)$ 内至少有一点 $xi$，使
    $frac(f \( xi \), g \( xi \)) = frac(f'' \( xi \), g'' \( xi \))$。
]

#qst(`A P86 E9`)[
  设 $f(x)$ 在 $[ 0, 1]$
  上连续，$f(0) = 0 , integral_0^1 f \( x \) thin d x = 0$。求证：存在
  $xi in (0, 1)$，使
  $integral_0^xi f \( x \) thin d x = xi f \( xi \)$.
]

#qst(`A P88 E5`)[
  设 $f \( x \)$ 在 $\[0,1]$ 上连续，在
  $\(0,1)$ 内可导，且
  $f \( 0 \) = 0 \, f \( 1 \) = 1$，试证对任意给定的正数 $a \, b$，在
  $\(0,1)$ 内一定存在互不相同的 $xi \, eta$，使
  $frac(a, f' \( xi \)) + frac(b, f' \( eta \)) = a + b$.
]

#qst(`A P89 E2`)[
  设 $f \( x \)$ 在 $[0,1]$ 上三阶可导，$f \( 0 \) = 0 \, f \( 1 \) = 1 \, f' (1 / 2) = 0$。求证：存在 $xi in \(0,1)$，使 $\|f''' \( xi \)\| gt.eq 24$。
  #ps[函数在一点的泰勒展开的自变量不同取值时的拉格朗日余项不同]
]

#qst(`A P90 E3`)[
  设 $f (x)$ 在 $[0,1]$ 上有二阶连续导数，且
  $f (0) = f (1) = 0 , limits(min)_(0 lt.eq x lt.eq 1) f (x) = - 1$，证明：$limits(max)_(0 lt.eq x lt.eq 1) f'' (x) gt.eq 8$.
]

#qst(`B P229 e8`)[
  设 $f(x)$ 在 $\[0,1]$ 上具有二阶导数，且满足条件 $abs(f(x)) lt.eq a, abs(f''(x)) lt.eq b$，其中 $a, b$ 都是非负常数，$c$ 是 $\(0,1)$ 内任意一点。

  + 写出 $f(x)$ 在点 $x = c$ 处带拉格朗日型余项的一阶泰勒公式；

  + 证明 $|f'(x)| lt.eq 2 a + b / 2$。
]

#qst(`R 2 00 lyf-p143-e11`)[
  设函数 $f (x)$ 在 $[0 , pi]$ 上连续，且
  $ integral_0^pi f (x) thin upright(d) x = 0 , integral_0^pi f (x) cos x thin upright(d) x = 0 . $
  证明：在 $(0 , pi)$ 内至少存在两个不同的点 $xi_1 , xi_2$，使
  $f (xi_1) = f (xi_2) = 0$。

]


#qst(`R 2 07 lyf-p146-e15`)[
  设函数 $f (x) , g (x)$ 在 $[a , b]$ 上连续，在 $(a , b)$
  内具有二阶导数且存在相等的最大值，$f (a) = g (a) , f (b) = g (b)$，证明：存在
  $xi in (a , b)$，使得 $f'' (xi) = g'' (xi)$。

]


#qst(`R 2 08 lyf-p147-e16`)[
  + 证明积分中值定理：若函数 $f (x)$ 在闭区间 $[a , b]$
    上连续，则至少存在一点 $eta in [a , b]$，使得
    $ integral_a^b f (x) thin upright(d) x = f (eta) (b - a) . $

  + 若函数 $phi (x)$ 具有二阶导数，且满足
    $phi (2) > phi (1) , phi (2) > integral_2^3 phi (x) thin upright(d) x$，则至少存在一点
    $xi in (1 , 3)$，使得 $phi'' (xi) < 0$.
]



#qst(`R 2 02 lyf-p137-e4`)[
  设函数 $y = f (x)$ 在 $(0 , + oo)$ 内有界且可导，判断下列命题是否正确。

  #set enum(numbering: "A.")
  + 当 $limits(lim)_(x arrow.r + oo) f (x) = 0$ 时，必有 $limits(lim)_(x arrow.r + oo) f' (x) = 0$.

  2. 若 $limits(lim)_(x arrow.r + oo) f' (x)$ 存在，必有 $limits(lim)_(x arrow.r + oo) f'(x) = 0$.
]


// ----------------

#pagebreak()
= 一元函数积分学

#qset("求积分")[

  #show math.equation.where(block: false): math.display
  #qg2c(
    [
      #qst(`A P97 E8`)[
        $I = integral frac(1 + x^4, 1 + x^6) thin upright(d) x$.
      ]

      #qst(`A P98 E13`)[
        $I = integral 1 / x sqrt(frac(x + 1, x - 1)) thin upright(d) x.$
      ]

      #qst(`A P107 E2`)[
        $I = integral_0^(n pi) sqrt(1 - sin 2 x) thin upright(d) x .$
      ]

      #qst(`R 2 98 lyf-p168-e12`)[

        $I = integral frac(ln (sin x), sin^2 x) thin upright(d) x$
      ]
      #qst(`R 2 94 lyf-p170-e18`)[

        $integral frac(upright(d) x, sin 2 x + 2 sin x)$
      ]
    ],
    [
      #qst(`A P98 E11`)[
        $I = integral frac(upright(d) x, sin x dot.op cos^4 x)$.
        #ps[ $1$ 的妙用]
      ]

      #qst(`A P109 E8`)[
        $I = integral_0^(pi / 2) frac(sin x, sin x + cos x) thin upright(d) x .$
      ]

      #qst(`R 2 03 lyf-p167-e10`)[

        $I = integral frac(x e^(arctan x), (1 + x^2)^(3 / 2)) thin upright(d) x$
      ]

      #qst(`R 2 08 lyf-p182-e21`)[

        $integral_0^1 frac(x^2 arcsin x, sqrt(1 - x^2)) thin upright(d) x$.
      ]
    ],
  )
]

// // https://space.bilibili.com/324274826/dynamic
// #qset([`source:` #link("https://www.bilibili.com/opus/1063481512218853397", underline("link"))])[

//   #show math.equation.where(block: false): math.display
//   #qg2c(
//     [
//       #qst("day 1")[
//         + $integral frac(1, a + b cos x) dif x quad (a b eq.not 0)$

//         + $integral frac(1, a sin x + b cos x) dif x quad (a b != 0)$

//         + $integral frac(1, a sin x + b cos x + c) dif x quad (a b != 0)$
//       ]

//       #qst("day 2")[

//         + $integral frac(1, sin 2 x + sin x) dif x$

//         + $integral sqrt(1 + cos 2 x) dif x$
//       ]

//       #qst("day 3")[
//         $integral frac(cos^3 x - 2 cos x, 1 + sin^2 x + sin^4 x) thin upright(d) x$
//       ]

//       #qst("day 4")[
//         + $integral_0^oo frac(1, (1 + x^2) (1 + x^alpha)) thin upright(d) x$

//         + $integral frac(1, (x^2 + 1) (x^2 + x + 1)) thin upright(d) x$
//       ]

//       #qst("day 5")[

//         + $& integral frac(1, x sqrt(x^2 - 1)) thin d x$

//         + $& integral x / sqrt(1 + x^2 + sqrt((1 + x^2)^3)) thin d x$
//       ]
//     ],
//     [ ],
//   )
// ]


#qst(`A P115 E7`)[
  证明 $F (x) = integral_x^(x + 2 pi) e^(sin t) sin t thin upright(d) t$ 为正常数.
]

#qst(`A P116 E8`)[
  证明 $F (x) = integral_0^x (t - t^2) sin^(2 n) t thin upright(d) t$ 在
  $x gt.eq 0$ 上最大值不超过 $frac(1, (2 n + 2) (2 n + 3))$。
]

#qst(`A P116 E10`)[
  设函数 $f (x)$ 在 $(0, + oo)$
  内连续，$f (1) = 5 / 2$，且对所有 $x, t in (0, + oo)$ 满足条件
  $integral_1^x f (u) thin upright(d) u = t integral_1^x f (u) thin upright(d) u + x integral_1^t f (u) thin upright(d) u ,$ 求 $f (x)$。
]

#qst(`A P119 E3`)[
  设 $f (x)$ 在 $[0, 1]$ 上可导，且
  $f (0) = 0 , 0 < f' (x) < 1$。求证：
  $ (integral_0^1 f (x) thin upright(d) x)^2 > integral_0^1 f^3 (x) thin upright(d) x . $
]

#qst(`A P118 E2`)[
  设 $f (x)$ 在 $[0, 1]$ 上连续，单调减。证 $integral_0^a f (x) thin upright(d) x gt.eq a integral_0^1 f (x) thin upright(d) x quad (0 < a < 1) .$

]

#qst(`A P120 E5`)[
  设 $f (x)$ 在 $[a, b]$
  上有连续导数，$f (a) = 0$，求证：
  $ max_(a lt.eq x lt.eq b) lr(|f ' (x)|) gt.eq 2 / (b - a)^2 integral_a^b lr(|f (x)|) thin upright(d) x . $

]

#qst(`A P121 E6`)[
  设 $f (x)$ 在 $[0, 1]$ 上有连续导数，且
  $f (0) = 0$，求证：
  $ integral_0^1 f^2 (x) thin upright(d) x lt.eq 1 / 2 integral_0^1 f'^2 (x) thin upright(d) x . $
]

#qset("判断敛散性，若收敛，计算反常积分")[
  #show math.equation.where(block: false): math.display
  #qg2c(
    [
      #qst(`A P123 E1`)[
        $integral_0^(+ oo) e^(- x^2) thin upright(d) x$.
      ]
    ],
    [
      #qst(`A P126 E3`)[
        $integral_0^(+ oo) frac(x e^(- x), (1 + e^(- x))^2) thin upright(d) x$.
      ]
    ],
  )
]


#qst(`A P123 E2`)[
  设 $m , n$ 均是正整数，判断反常积分 $integral_0^1 root(m, ln^2 (1 - x)) / root(n, x) thin upright(d) x$ 的收敛性与 $m, n$ 的取值是否有关.
]

#qst(`A P124 E3`)[
  若反常积分 $integral_e^(+ oo) frac(1, x ln^(a + 1) x) thin upright(d) x$ 收敛，求 $a$ 的取值范围。
]

#qst(`A P126 E4`)[
  求证：
  $integral_0^(+ oo) frac(x^2, 1 + x^4) thin upright(d) x = integral_0^(+ infinity) frac(1, 1 + x^4) thin upright(d) x$，并求其值。
]

#qst(`R 2 88 lyf-p151-e2`)[
  若 $f (x)$ 与 $g (x)$ 在 $(- oo, + oo)$ 上皆可导，且 $f (x) < g (x)$，判断 #v(0.2em) $integral_0^x f (t) thin upright(d) t < integral_0^x g (t) thin upright(d) t$ 是否正确。
]

#qst(`R 2 87 lyf-p159-e16`)[
  在第一象限内求曲线 $y = - x^2 + 1$
  上的一点，使该点处的切线与所给曲线及两坐标轴所围成的图形面积最小，并求此最小面积。
]

#qst(`R 2 90 lyf-p176-e10`)[
  设 $f (x) = integral_1^x frac(ln t, 1 + t) thin upright(d) t$，其中
  $x > 0$，求 $f (x) + f (1 / x)$.
]



#qst(`R 2 00 lyf-p184-e24`)[
  设函数 $S (x) = integral_0^x lr(|cos t|) thin upright(d) t$.

  + 当 $n$ 为正整数，且 $n pi lt.eq x < (n + 1) pi$
    时，证明：$2 n lt.eq S (x) < 2 (n + 1)$.

  + 求 $lim_(x arrow.r + oo) frac(S (x), x)$.

]

#qst(`R 2 98 lyf-p188-e8`)[
  设 $f (x)$ 连续，求
  $frac(upright(d), upright(d) x) integral_0^x t f (x^2 - t^2) thin upright(d) t$.
]


== 定积分的应用
#qst(`A P128 E1`)[
  设
  $f (x) = integral_(- 1)^x (1 - lr(|t|)) d t thin (x gt.eq - 1)$，求曲线
  $y = f (x)$ 与 $x$ 轴所围图形的面积。
]

#qst(`A P129 E2`)[
  设平面图形 $A$ 由 $x^2 + y^2 lt.eq 2 x$ 与
  $y gt.eq x$ 所确定，求图形 $A$ 绕 $x = 2$ 旋转一周所得旋转体的体积。
]

#qst(`A P130 E3`)[
  过点 $(1 , 0)$ 作曲线 $y = x^2$
  的切线，该切线与曲线 $y = x^2$ 及 $x$ 轴围成平面图形 $D$。
  + 求 $D$ 的面积 $A$；

  + 求 $D$ 绕 $x$ 轴旋转一周所得旋转体的体积 $V$；

  + 求 $D$ 绕 $y$ 轴旋转一周所得旋转体的体积 $V$；

  + 求 $D$ 绕直线 $y = 4$ 旋转一周所得旋转体的体积 $V$。
]


#qst(`A P130 E4`)[
  设对数螺线
  $r = e^theta thin (0 lt.eq theta lt.eq pi)$ 及射线 $theta = 0$ 和
  $theta = pi$ 围成平面图形 $D$。

  + 求 $D$ 的面积 $A$；

  + 求 $D$ 绕极轴旋转一周所得旋转体的体积 $V$。
]

#qst(`A P130 E5`)[
  设星形线 $cases(
    x = a cos^3 t, ,
    y = a sin^3 t
  )$ 求：

  + 它所围的面积；

  + 它的周长；

  + 它绕 $x$ 轴旋转而成旋转体的体积和侧面积。
]

#qst(`A P131 E1`)[
  某闸门的形状与大小如下图所示，闸门的上部为矩形
  $A B C D$，其中 $D E = E C = 1 m$，下部由二次抛物线与线段 $A B$
  所围成。当水面与闸门的上端相平时，欲使闸门矩形部分承受的水压力与闸门下部承受的水压力之比为
  $5 : 4$，闸门矩形部分的高 $h$ 应为多少（米）？
]

#qst(`A P131 E2`)[
  一容器的内侧是由曲线 $y = x^2$ 绕 $y$
  轴旋转而成的曲面，其容积为
  $72 pi upright("cm")^3$，其中盛满水，若将容器中的水从容器的顶部抽出
  $64 pi upright("cm")^3$，至少需做多少功？（长度单位：m，重力加速度为
  $g thin upright("m/s")^2$，水的密度为 $10^3 thin upright("kg/m")^3$）
]


#pagebreak()

= 常微分方程

#qset("求解微分方程")[
  #qst(`A P141 E1.5`)[
    求 $y' sec^2 y + frac(x, 1 + x^2) tan y = x$ 满足条件
    $y \|_(x = 0) = 0$ 的特解.
  ]

  #qst(`A P142 E2`)[
    + 求方程 $(x + 1) y'' + y' = ln (x + 1)$ 的通解;

    + 求方程 $cases(
        2 y y'' = y'^2 + y^2,
        y (0) = 1\, y' (0) = - 1
      )$ 的特解.
  ]
]

#qset(`A P143 E3`)[
  #qst(`e5`)[
    已知 $y_1 = x e^x + e^(2 x), y_2 = x e^x - e^(- x), y_3 = x e^x + e^(2 x) + e^(- x)$ 为某二阶线性常系数非齐次方程的特解，求此方程.
  ]

  #qst(`e7`)[
    已知 $y_1 = 3 , y_2 = 3 + x^2 , y_3 = 3 + e^x$
    是某二阶线性非齐次方程的三个特解，求该微分方程及通解.
  ]

  #qst(`e8`)[
    求方程 $y'' + a^2 y = sin x$ 的通解，其中常数 $a > 0$.
  ]
]

#qst(`A P145 E2`)[
  设 $f (x) = sin x - integral_0^x (x - t) f (t) upright(d) t$，其中 $f (x)$ 为连续函数. 求 $f (x)$.
]

#qst(`A P146 E4`)[
  设 $f (x)$ 在 $(- oo , + oo)$ 上有定义，$f^(') (0) = 2$，对任意的 $x , y$，有 $f (x + y) = e^x f (y) + e^y f (x)$，求 $f (x)$.
]

#qst(`A P147 E6`)[
  设函数 $y (x)$ 满足方程 $y'' + 2 y' + k y = 0$，其中 $0 < k < 1$. (1) 证明: 反常积分 #v(0.1em) $integral_0^(+ oo) y (x) upright(d) x$ 收敛; (2) 若 $y (0) = 1 , y' (0) = 1$，求 $integral_0^(+ oo) y (x) upright(d) x$ 的值.
]


#qst(`A P148 E3`)[
  设 $y (x) (x gt.eq 0)$ 二阶可导，且 $y^(') (x) > 0 , y (0) = 1$。过 $y = y (x)$ 上任意点 $P (x , y)$ 作该曲线的切线及 $x$ 轴的垂线，上述两直线与 $x$ 轴所围三角形面积记为 $S_1$，区间 $[0 , x]$ 上以 $y = y (x)$ 为曲边的曲边梯形面积记为 $S_2$，且 $2 S_1 - S_2 = 1$，求 $y (x)$.
]

#qst(`A P149 E4`)[
  已知高温物体置于低温介质中，任一时刻该物体温度对时间的变化率与该时刻物体和介质的温差成正比，现将一初始温度为 $120^circle.stroked.tiny C$ 的物体在 $20^circle.stroked.tiny C$ 的恒温介质中冷却，$30 upright(m i n)$ 后该物体降至 $30^circle.stroked.tiny C$，若要将该物体的温度继续降至 $21^circle.stroked.tiny C$，还需冷却多长时间?
]

#pagebreak()
= 多元函数微分学

#qst(`A P155 E1`)[
  证明 $f (x , y) = cases(
    frac(x^2 y, x^2 + y^2) quad &(x , y) eq.not (0 , 0),
    0 quad &(x , y) = (0 , 0)
  )$， 在 $(0 , 0)$ 点偏导数存在但不可微.
]

#qst(`A P156 E3`)[
  二元函数 $f (x , y)$ 在点 $(0 , 0)$ 处可微的一个充分条件是（ ）
  #set enum(numbering: "A.")

  + $lim_(x arrow.r 0 \ y arrow.r 0) [f (x , y) - f (0 , 0)] = 0$.

  + $lim_(x arrow.r 0) frac(f (x , 0) - f (0 , 0), x) = 0$，且
    $lim_(y arrow.r 0) frac(f (0 , y) - f (0 , 0), y) = 0$.

  + $lim_(x arrow.r 0 \ y arrow.r 0) frac(f (x , y) - f (0 , 0), sqrt(x^2 + y^2)) = 0$.

  + $lim_(x arrow.r 0) [f '_x (x , 0) - f '_x (0 , 0)] = 0$，且
    $lim_(y arrow.r 0) [f '_y (0 , y) - f '_y (0 , 0)] = 0$.
]

#qst(`A P157 E4`)[
  如果函数 $f (x , y)$ 在 $(0 , 0)$
  处连续，那么下列命题正确的是（ ）

  #set enum(numbering: "A.")
  + 若极限 $lim_(x arrow.r 0\
    y arrow.r 0) frac(f (x , y), lr(|x|) + lr(|y|))$ 存在，则 $f (x , y)$ 在 $(0 , 0)$ 处可微.

  + 若极限 $lim_(x arrow.r 0 \
    y arrow.r 0) frac(f (x , y), x^2 + y^2)$ 存在，则 $f (x , y)$ 在 $(0 , 0)$ 处可微.

  + 若 $f (x , y)$ 在 $(0 , 0)$ 处可微，则极限 $lim_(x arrow.r 0\
    y arrow.r 0) frac(f (x , y), lr(|x|) + lr(|y|))$ 存在.

  + 若 $f (x , y)$ 在 $(0 , 0)$ 处可微，则极限 $lim_(x arrow.r 0\
    y arrow.r 0) frac(f (x , y), x^2 + y^2)$ 存在.

]

#qst(`A P158 E6`)[
  设 $f (x , y) = lr(|x - y|) phi (x , y)$，其中
  $phi (x , y)$ 在点 $(0 , 0)$ 的某邻域内连续，问

  + $phi (x , y)$ 应满足什么条件才能使 $f_x' (0 , 0)$ 和 $f_y' (0 , 0)$ 都存在？

  + 在上述条件下 $f (x , y)$ 在 $(0 , 0)$ 点是否可微？


]

#qst(`A P158 E7`)[
  设 $f_x' (x_0 , y_0)$ 存在，$f_y' (x , y)$ 在点 $(x_0 , y_0)$ 处连续，证明：$f (x , y)$ 在点 $(x_0 , y_0)$ 处可微.
]

#qst(`A P167 E9`)[
  设 $(r , theta)$ 为极坐标，$u = u (r , theta)$
  具有二阶连续偏导数，并满足 $frac(partial u, partial theta) = 0$，且
  $frac(partial^2 u, partial x^2) + frac(partial^2 u, partial y^2) = 0$，求
  $u (r , theta)$.
]

#qst(`A P168 E10`)[
  若对任意 $t > 0$ 有 $f (t x , t y) = t^n f (x , y)$，则称函数 $f (x , y)$ 是 $n$
  次齐次函数，#v(0em) 试证：若 $f (x , y)$ 可微，则 $f (x , y)$ 是 $n$ 次齐次函数
  $arrow.l.r.double x frac(partial f, partial x) + y frac(partial f, partial y) = n f (x , y)$.
]

#qst(`A P171 E6`)[
  设 $f (x , y)$ 有二阶连续偏导数，且
  $f'_y eq.not 0$。证明：对任意常数 $C , f (x , y) = C$ 为一条直线
  $arrow.l.r.double f''_2 f''_11 - 2 f'_1 f''_2 f''_12 + f''_1 f''_22 = 0$.
]
