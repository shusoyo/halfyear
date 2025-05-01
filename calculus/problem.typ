#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project.with(language: "ch")
#show math.equation.where(block: false): math.display

+ `A` : 《武忠祥高数强化讲义》
+ `B` : 《张宇三十讲》- 26
+ `C` : 《张宇 1000 题基础篇》- 26， 用 § 来表示章节
+ `R 2 08 a:xxx` : 指真题，数二，08 年，答案是 xxx 的答案

// #set par(leading: 2em)

= 函数、极限、连续

#qst(`?`)[
  有一种给一个三角函数，但是定义域并非都在反三角函数的主值区间内，然后求其反三角函数.
]

#qst(`A P6 E1`)[
  已知函数 $ f \( x \) = (integral_0^x ln( 1 + t^2 ) dif t) / (x^alpha)$ 在 $( 0 , + oo )$ 上有界，求 $alpha$ 的取值范围.
]

#qst(`A P13 E5`)[
  证明：
  + 若 $lim_(n arrow.r oo) a_(n + 1) / a_n = a$，且 $\| a \| < 1$，则 $lim_(n arrow.r oo) a_n = 0$；

  + $lim_(n arrow.r oo) frac(2^n n !, n^n) = 0 \, lim_(n arrow.r oo) frac(3^n n !, n^n) = + oo$.
]


#qst(`A P14 E6`)[
  + 证明：对任意的正整数 $n$，都有 $1/(n + 1) < ln(1 + 1/n) < n$ 成立。

  + 设 $a_n = 1 + 1/2 + ... + 1/n - ln n, (n = 1, 2, ...)$ ，证明数列 ${ a_n }$ 收敛。
]

#qst(`A P17 E1`)[

  + $lim_(x -> 1) (ln cos(x - 1)) / (1 - sin pi / 2 x)$
]

#qst(`A P36 E4`)[
  设 $x_1 = 2 \, x_(n + 1) = 2 + 1 / x_n med \( n = 1 \, 2 \, dots.h.c \)$，求极限 $lim_(n arrow.r oo) x_n$.
]



#qst(`A P36 E5`)[
  设 $f \( x \)$ 可微，且 $0 < f' \( x \) lt.eq frac(1, 2 + x^2)$，数列 $x_0 = A \, x_n = f \( x_(n - 1) \) \, n = 1 \, 2 \, dots.h.c$. 证明 $lim_(n arrow.r oo) x_n$ 存在且是方程 $f \( x \) = x$ 的唯一实根.
]

#qst(`A P44 E1`)[
  设函数 $f \( x \) = frac(x, a + e^(b x))$ 在 $\( - oo \, + oo \)$ 内连续，且 $lim_(x arrow.r - oo) f \( x \) = 0$，则常数 $a\, b$ 应满足什么条件 ？
]

#qst(`A P45 E2`)[
  设 $f \( x \)$ 和 $phi \( x \)$ 在 $\( - oo \, + oo \)$ 上有定义，$f \( x \)$ 为连续函数，且 $f \( x \) eq.not 0 \, phi \( x \)$ 有间断点，判断 $phi ( f ( x ) ), \[ phi \( x \) \]^2f, \( phi \( x \) \), frac(phi \( x \), f \( x \))$ 是否有间断点。
]

#qst(`A P46 E5`)[
  求极限
  $lim_(t arrow.r x) (frac(sin t, sin x))^(x \/ (sin t - sin x))$，记此极限为
  $f \( x \)$，求函数 $f \( x \)$ 的间断点并指出类型。
]

#qst(`A P48 E4`)[
  设 $f \( x \)$ 在 $\( - oo \, + oo \)$ 上连续，且 $lim_(x arrow.r oo) frac(f \( x \), x) = 0$，试证存在 $xi in \( - oo \, + oo \)$，使 $f \( xi \) + xi = 0$.
]

#qst(`B P129 E5`)[
  已知 $a_n = 1 - frac(\( - 1 \)^n, n) med \( n = 1 \, 2 \, dots.h.c \)$，判断 ${ a_n }$ 是否有最大最小值.
]

#qst(`B P131 E7`)[
  当 $x arrow.r 0$ 时，判断 $1 / x sin 1 / x$ 是无界变量还是无穷大量.
]

#qst(`B P142 E17`)[
  判断 “存在正整数 $N$，当 $n gt.eq N$ 时，恒有
  $\| x_n - a \| lt.eq 1 / n$ ” 是否与数列 ${ x_n }$ 收敛于 $a$ 等价。
]

#qst(`C §2 E3`)[
  设 ${ a_n }$ 非负有界，$b_n = sum_(k = 1)^n frac(k, a_n + n^2)$，求
  $lim_(n arrow.r oo) 1 / b_n$.
]

#qst(`R 2 08 a:lyf-p33`)[
  设函数 $f \( x \)$ 在 $\( - oo \, + oo \)$
  内单调有界，${ x_n }$ 为数列，下列命题正确的是（#h(1cm)）.
  #grid(
    columns: (1fr, 1fr),
    [
      + 若 ${ x_n }$ 收敛，则 ${ f \( x_n \) }$ 收敛.

      + 若 ${ x_n }$ 单调，则 ${ f \( x_n \) }$ 收敛.
    ],
    [
      3. 若 ${ f \( x_n \) }$ 收敛，则 ${ x_n }$ 收敛.

      + 若 ${ f \( x_n \) }$ 单调，则 ${ x_n }$ 收敛.],
  )
]

#qst(`B P140 E15`)[
  已知方程 $x = cos x$ 在 $(0 \, pi / 3)$ 内有唯一实根 $a$，设 $- 1 lt.eq x_1 lt.eq 1$，定义 $x_(n + 1) = cos x_n\, n = 1\, 2\, dots.h.c$，证明 $lim_(n arrow.r oo) x_n$ 存在，且极限值就是 (1) 中的 $a$。
]

#qst(`R 2 06 a:lyf-p36`)[
  设数列 ${ x_n }$ 满足
  $0 < x_1 < pi \, x_(n + 1) = sin x_n med \( n = 1 \, 2 \, dots.h.c \)$, 证明 $lim_(n arrow.r oo) x_n$ 存在，并求该极限.
]

#qst(`R 2 02 a:lyf-p45`)[
  设函数 $f \( x \)$ 在 $x = 0$ 的某邻域内具有二阶连续导数，且 $f (0) != 0, $$ f' \( 0 \) eq.not 0 \, f'' \( 0 \) eq.not 0$。证明：存在唯一的一组实数 $lambda_1 \, lambda_2 \, lambda_3$，使得当 $h arrow.r 0$ 时，$lambda_1 f \( h \) + lambda_2 f \( 2 h \) + lambda_3 f \( 3 h \) - f \( 0 \)$ 是比 $h^2$ 高阶的无穷小。
]

#qst(`R 2 06 a:lyf-p46`)[
  试确定常数 $A \, B \, C$ 的值, 使得
  $e^x \( 1 + B x + C x^2 \) = 1 + A x + o \( x^3 \)$，其中 $o \( x^3 \)$
  是当 $x arrow.r 0$ 时比 $x^3$ 高阶的无穷小量。
]

// #qst(``)[

// ]

= 一元函数微分学

#annotation[
  + $f(x)$ 与 $|f(x)|$ 的在连续与可导上关系。

  + WCND 记住 $sqrt(x^2) = |x|$

  + 罗尔定理的推论

  + 实系数奇次方程至少有一个根

  + $(x - a)^alpha (x - b)^beta ... $ 形式的方程的极值点与拐点个数的推论

  + 物理应用！！！
]

#qst(`A P55 E3`)[
  设函数 $f \( x \)$ 在 $x = 0$ 处连续，且 $lim_(x arrow.r 0) [frac(f \( x \), x) + frac(ln \( 1 + x \), x^2)] = 3 / 2$，求 $f(0), f'(0)$.
]

#qst(`A P56 E2`)[
  设 $f \( 0 \) = 0$，判断以下是否为 $f \( x \)$ 在点 $x = 0$ 可导的充要条件.
  #grid(
    columns: (1fr, 1fr),
    [+ $lim_(h arrow.r 0) 1 / h^2 f \( 1 - cos h \)$ 存在.], [ 2. $lim_(h arrow.r 0) 1 / h^2 f \( h - sin h \)$ 存在.],
  )
]

#qst(`A P58 E5`)[
  函数 $|f( x )|$ 在点 $x = a$ 处的可导性与 $f(x)$ 的关系。
]

#qst(`A P61 E1'`)[
  设 $f \( x \) = ln (x + sqrt(1 + x^2))$，求 $f''' \( 0 \) $.

  #ps[泰勒展开]
  #ps[等价无穷小代换的改写]
]

#qst(`A P61 E4`)[
  $lim_(x -> 0) (f(x^3 sin 1 / x) - f(0)) / (x^3 sin 1 / x)$ 是否存在.
]

#qst(`A P71 E5`)[
  设 $f \( x \)$ 二阶可导，且 $lim_(h arrow.r 0) frac(f \( x_0 + h \) - f \( x_0 \) - f' \( x_0 \), h^2) = a eq.not 0$，试讨论 $f \( x \)$ 在 $x_0$ 点的极值。

  #ps[函数和常数还分不清真有点闹麻了]
]

#qst(`A P73 E3`)[
  曲线 $y = frac(\( 1 + x \)^(3 / 2), sqrt(x))$ 的斜渐近线方程为
  #ps[渐近线的定义的推论]
]

#qst(`A P79 E2`)[
  求证： $ln b / a > frac(2 \( b - a \), b + a) quad \( 0 < a < b \)$.
]

#qst(`A P85 E6`)[
  设函数 $f \( x \) \, g \( x \)$ 在 $\[ a \, b \]$
  上二阶可导，且
  $g'' \( x \) eq.not 0 \, f \( a \) = f \( b \) = g \( a \) = g \( b \) = 0$。试证

  + 在 $\( a \, b \)$ 内 $g \( x \) eq.not 0$；

  + 在 $\( a \, b \)$ 内至少有一点 $xi$，使
    $frac(f \( xi \), g \( xi \)) = frac(f'' \( xi \), g'' \( xi \))$。
]

#qst(`A P86 E9`)[
  设 $f(x)$ 在 $[ 0, 1]$
  上连续，$f(0) = 0 , integral_0^1 f \( x \) thin d x = 0$。求证：存在
  $xi in (0, 1)$，使
  $integral_0^xi f \( x \) thin d x = x f \( xi \)$.
]

#qst(`A P89 E5`)[
  设 $f \( x \)$ 在 $\[ 0, 1 \]$ 上连续，在
  $\( 0, 1 \)$ 内可导，且
  $f \( 0 \) = 0 \, f \( 1 \) = 1$，试证对任意给定的正数 $a \, b$，在
  $\( 0, 1 \)$ 内一定存在互不相同的 $xi \, eta$，使
  $frac(a, f' \( xi \)) + frac(b, f' \( eta \)) = a + b$.
]

#qst(`A P89 E2`)[
  设 $f \( x \)$ 在 $\[ 0 \, 1 \]$ 上三阶可导，$f \( 0 \) = 0 \, f \( 1 \) = 1 \, f' (1 / 2) = 0$。求证：存在 $xi in \( 0, 1 \)$，使 $\| f''' \( xi \) \| gt.eq 24$。
  #ps[函数在一点的泰勒展开的自变量不同取值时的拉格朗日余项不同]
]

#qst(`A P90 E3`)[
  设 $f \( x \)$ 在 $\[ 0 \, 1 \]$
  上三阶可导，$f \( 0 \) = 0 \, f \( 1 \) = 1 \, f' (1 / 2) = 0$。求证：存在
  $xi in \( 0 \, 1 \)$，使 $\|f''' \( xi \)| gt.eq 24$。
]

#qst(`B P151 E3`)[
  设 $f \( x \)$ 在 $x = 0$ 的某邻域内有定义，并且
  $\|f(x)| lt.eq 1 - cos x$，证明 $f \( x \)$ 在 $x = 0$ 处可导且 $f' \( 0 \) = 0$.
]

#qst(`B P175 E11`)[
  设函数 $y = y \( x \)$ 由方程
  $x e^(f \( y \)) = e^y ln 2$ 确定，其中 $f$ 具有二阶导数，且
  $f' eq.not 1$，求
  $frac(upright(d)^2 y, upright(d) x^2)$.
]

#qst(`B P221 E12`)[
  设函数 $f \( x \)$ 在 $\[0,1]$ 上二阶可导，且 $integral_0^1 f \( x \) thin d x = 0$，则当 $f(1/2) < 0$ 时，$f'(x)$ 或 $f''(x)$ 需满足什么条件.
]

#qst(`B P227 E20`)[
  证明 $(ln frac(1 + x, x) - frac(1, 1 + x))^2 < frac(1, x \( 1 + x \)^2) quad \( x > 0 \)$.
]

#qst(`R 2 02 a:{B-p228-e21, lyf-p133-e10}`)[
  设 $0 < a < b \, $ 证明不等式 $frac(2 a, a^2 + b^2) < frac(ln b - ln a, b - a) < 1 / sqrt(a b) .$
  #ps[不要在一棵树上吊死]
]

#qst(`B P229 e2`)[
  若函数 $f \( x \) = frac(1, x e^(- x) - a)$ 在
  $\( - oo \, + oo \)$ 内处处连续，求常数 $a$ 的取值范围。
]

#qst(`B P229 e8`)[
  设 $f(x)$ 在 $\[0,1]$ 上具有二阶导数，且满足条件 $abs(f(x)) lt.eq a, abs(f''(x)) lt.eq b$，其中 $a, b$ 都是非负常数，$c$ 是 $\(0,1)$ 内任意一点。

  + 写出 $f(x)$ 在点 $x = c$ 处带拉格朗日型余项的一阶泰勒公式；

  + 证明 $|f'(x)| lt.eq 2 a + b / 2$。
]

#qst(`R 2 01 a:lyf-p87-e16`)[
  设 $rho = rho \( x \)$ 是抛物线 $y = sqrt(x)$ 上任一点 $M \( x \, y \)$
  $(x gt.eq 1)$ 处的曲率半径，$s = s (x)$ 是该抛物线上介于点
  $A(1, 1)$ 与 $M$ 之间的弧长, 计算 $3 rho frac(dif^2 rho, dif s^2) - (frac(dif rho, dif s))^2$ 的值.
]

#qst(`R 2 04 a:lyf-p93-e8`)[
  设 $f \( x \) = integral_x^(x + pi / 2) \| sin t \| thin d t$，求 $f \( x \)$ 的值域。
]

#qst(`R 2 98 a:lyf-p96-e11`)[
  设函数 $f (x)$ 在 $x = a$ 的某个邻域内连续，且 $f (a)$
  为其极大值，则存在 $delta > 0$，当 $x in (a - delta , a + delta)$
  时，证明：$ lim_(t arrow.r a) frac(f \( t \) - f \( x \), \( t - x \)^2) gt.eq 0 thin \( x eq.not a \) $

  #ps[我知道你知道怎么写，但是你的想法不是正确的想法]
]

#qst(`R 2 01 a:lyf-p107-e4`)[
  曲线 $y = (x - 1)^2 (x - 3)^2$ 的拐点个数为()
  #ps[我知道有结论，但是想想为啥那样，顺便背背结论]
]<题目-4-2001年试题>

#qst(`R 2 90 a:lyf-p109-e7`)[
  求曲线 $y = frac(1, 1 + x^2)$ $(x > 0)$ 的拐点。
  #ps[计算]
]

#qst(`R 2 96 a:lyf-p122-e3`)[
  在区间 $(- oo , + oo)$ 内，方程
  $lr(|x|)^(1 / 4) + lr(|x|)^(1 / 2) - cos x = 0$ 根的分布情况。
]

#qst(`R 2 94 a:lyf-p130-e6`)[
  设 $f(x)$ 在 $[0,1]$ 上连续且递减，证明：当 $0 < lambda < 1$ 时，有 $integral_0^lambda f (x) thin upright(d) x gt.eq lambda integral_0^1 f (x) thin dif x . $
  #ps[想想别的做法]
]

#qst(`R 2 95 a:lyf-p131-e7`)[
  设 $lim_(x arrow.r 0) frac(f (x), x) = 1$，且 $f'' (x) > 0$，证明
  $f (x) gt.eq x$。
  #ps[想想别的做法，中值定理，泰勒公式]
]


#qst(`R 2 98 a:lyf-p131-e8`)[
  设 $x in (0 , 1)$，证明：

  + $(1 + x) ln^2 (1 + x) < x^2$.

  + $frac(1, ln 2) - 1 < frac(1, ln (1 + x)) - 1 / x < 1 / 2$.
]
#qst(`R 2 98 a:lyf-p132-e9`)[
  函数 $f (x)$ 在 $\[ 0 , + oo \)$ 上可导，$f (0) = 1$，且满足等式
  $ f' (x) + f (x) - frac(1, x + 1) integral_0^x f (t) thin upright(d) t = 0 . $
  + 求导数 $f' (x)$.

  + 证明：当 $x gt.eq 0$ 时，不等式 $e^(- x) lt.eq f (x) lt.eq 1$ 成立.
]

#qst(`R 2 02 a:lyf-p133-e10`)[
  设 $0 < a < b$，证明不等式
  $frac(2 a, a^2 + b^2) < frac(ln b - ln a, b - a) < 1 / sqrt(a b) .$
]

#qst(`R 2 02 a:lyf-p137-e4`)[
  设函数 $y = f (x)$ 在 $(0 , + oo)$ 内有界且可导，判断下列命题是否正确。
  #grid(
    columns: (1fr, 1fr),
    [
      + 当 $lim_(x arrow.r + oo) f (x) = 0$ 时，必有 $lim_(x arrow.r + oo) f' (x) = 0$.
    ],
    [
      2. 若 $lim_(x arrow.r + oo) f' (x)$ 存在，必有 $lim_(x arrow.r + oo) f'(x) = 0$.
    ],
  )
]

#qst(`R 2 00 a:lyf-p143-e11`)[
  设函数 $f (x)$ 在 $[0 , pi]$ 上连续，且
  $ integral_0^pi f (x) thin upright(d) x = 0 , integral_0^pi f (x) cos x thin upright(d) x = 0 . $
  证明：在 $(0 , pi)$ 内至少存在两个不同的点 $xi_1 , xi_2$，使
  $f (xi_1) = f (xi_2) = 0$。

]


#qst(`R 2 07 a:lyf-p146-e15`)[
  设函数 $f (x) , g (x)$ 在 $[a , b]$ 上连续，在 $(a , b)$
  内具有二阶导数且存在相等的最大值，$f (a) = g (a) , f (b) = g (b)$，证明：存在
  $xi in (a , b)$，使得 $f'' (xi) = g'' (xi)$。

]


#qst(`R 2 08 a:lyf-p147-e16`)[
  + 证明积分中值定理：若函数 $f (x)$ 在闭区间 $[a , b]$
    上连续，则至少存在一点 $eta in [a , b]$，使得
    $ integral_a^b f (x) thin upright(d) x = f (eta) (b - a) . $

  + 若函数 $phi (x)$ 具有二阶导数，且满足
    $phi (2) > phi (1) , phi (2) > integral_2^3 phi (x) thin upright(d) x$，则至少存在一点
    $xi in (1 , 3)$，使得 $phi'' (xi) < 0$.
]

#pagebreak()
= 一元函数积分学

#grid(
  columns: (1fr, 1fr),
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

  ],
  [
    #qst(`A P98 E11`)[
      $ I = integral frac(upright(d) x, sin x dot.op cos^4 x)$.
      #ps[ $1$ 的妙用]
    ]

    #qst(`A P109 E8`)[
      $I = integral_0^(pi / 2) frac(sin x, sin x + cos x) thin upright(d) x .$
    ]
  ],
)



#qst(`A P115 E7`)[
  证明 $F (x) = integral_x^(x + 2 pi) e^(sin t) sin t thin upright(d) t $ 为正常数.
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

#qst("判断敛散性，若收敛，计算反常积分")[
  #grid(
    columns: (1fr, 1fr),
    [
      #qstnn(`A P123 E1`)[
        $integral_0^(+ oo) e^(- x^2) thin upright(d) x$.
      ]
    ],
    [
      #qstnn(`A P126 E3`)[
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

#qst(`R 2 88 a:lyf-p151-e2`)[
  若 $f (x)$ 与 $g (x)$ 在 $(- oo, + oo)$ 上皆可导，且 $f (x) < g (x)$，判断 #v(0.2em) $integral_0^x f (t) thin upright(d) t < integral_0^x g (t) thin upright(d) t$ 是否正确。
]

#qst(`R 2 87 a:lyf-p159-e6`)[
  在第一象限内求曲线 $y = - x^2 + 1$
  上的一点，使该点处的切线与所给曲线及两坐标轴所围成的图形面积最小，并求此最小面积。
]

#qst(``)[

]
