#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(language: "ch")


= 一元函数积分学

== 不定积分
#definition("原函数与不定积分")[
  设函数 $f (x)$ 定义在某区间 $I$ 上，若存在可导函数
  $F (x)$，对于该区间上任意一点都有 $F' (x) = f (x)$ 成立，则称 $F (x)$ 是
  $f (x)$ 在区间 $I$ 上的一个原函数。称
  $integral f (x) thin dif x = F (x) + C$ 为 $f (x)$ 在区间 $I$
  上的不定积分。
]<不定积分的定义>

#theorem("原函数存在定理")[
  + 连续函数必有原函数.
    #proof[
      思路为构造出变上限积分函数 $Phi(x)$ 然后求出 $Delta Phi(x)$, 对其由积分中值定理，构造出 $(Delta Phi(x)) / (Delta x) = f(xi)$, 等式两边同时取极限即可。
    ]

  + 在含有第一类间断点和无穷间断点的区间内，一定不存在原函数。
    #proof[
      同 @导数无第一类间断点和无穷间断点 等价.
    ]
]

== 不定积分的计算

#annotation([积不出的函数])[
  原函数存在但无法用初等函数表达的函数有
  $
    integral (dif x)/sqrt(1 + x^4), integral e^(plus.minus x^2) dif x, integral (sin x) / x dif x, integral (cos x)/ x dif x .
  $
]

=== 第一类换元法
#proposition()[
  若 $integral f (u) thin d u = F (u) + C$, 且 $phi (x)$ 可导, 则
  $ integral f (phi (x)) phi' (x) thin dif x = integral f (phi (x)) thin d phi (x) = F (phi (x)) + C . $
]
=== 第二类换元法
#proposition()[
  设函数 $x = phi (t)$ 可导, 且 $phi' (t) eq.not 0$, 又设
  $integral f (phi (t)) phi' (t) thin d t = F (t) + C$, 则
  $ integral f (x) thin dif x = integral f (phi (t)) phi' (t) thin d t = F (phi^(- 1) (x)) + C . $
]

#annotation("三种常用的变量代换")[
  + 被积函数中含有 $sqrt(a^2 - x^2)$ 时, 令 $x = a sin t$, 或
    $x = a cos t$;

  + 被积函数中含有 $sqrt(a^2 + x^2)$ 时, 令 $x = a tan t$;

  + 被积函数中含有 $sqrt(x^2 - a^2)$ 时, 令 $x = a sec t$.
]

#pagebreak()
=== 分部积分法
// #annotation("凑微分法")[
//   $ integral f[g(x)] g'(x) dif x = integral f[g(x)] dif [g(x)] $
// ]

#proposition("分部积分法")[设 $u, v$ 有连续⼀阶导数，则
  $ integral u dif v = u v - integral v dif u $
  #annotation("分部积分的优先级")[
    #align(center)[反、对、幂、指、三]
    $ u <-- #h(4em) --> v $
  ]
]

#proposition("表格积分法")[
  若 $u$ 和 $v$
  在所考虑的区间上有直到 $(n + 1)$ 阶的各阶连续导数，那么可以用 $v^((n))$
  替换前式中的 $v$，则
  $
    integral u v^((n + 1)) thin dif x = integral u thin dif v^((n)) = u v^((n)) - integral v^((n)) thin dif u = u v^((n)) - integral u' v^((n)) thin dif x .
  $

  类似的
  $
    & integral u' v^((n)) thin dif x      &        & = u' v^((n - 1)) - integral u'' v^((n - 1)) thin dif x, \
    & integral u'' v^((n - 1)) thin dif x &        & = u'' v^((n - 2)) - integral u''' v^((n - 2)) thin dif x, \
    &                                     & dots.v \
    & integral u^((n)) v' thin dif x      &        & = u^((n)) v - integral u^((n + 1)) v thin dif x,
  $
  因此最终可以得到
  $
    integral u v^((n + 1)) thin dif x = u v^((n)) - u' v^((n - 1)) + u'' v^((n - 2)) - dots.h.c + (- 1)^n u^((n)) v + (- 1)^(n + 1) integral u^((n + 1)) v thin dif x.
  $
  #annotation("表格形式")[
    #table(
      stroke: none,
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: (center, center, center, center, center, center, center),
      [导], [$u$], [$u'$], [$u''$], [$dots.h.c$], [$u^((n))$], [$u^((n + 1))$],
      [积], [$v^((n + 1))$], [$v^((n))$], [$v^((n - 1))$], [$dots.h.c$], [$v'$], [$v$],
    )
    每两个对角线相乘，第一项为正，往后颠倒正负，最后一项积分是表格的最后一列，组合即可得到上式。
  ]
  #annotation("推广式中的特殊情况")[
    特别地，如果 $u$
    是 $n$ 次多项式，那么在 $n + 1$
    次求导之后就变成零了，上式子的尾巴就消失了。
  ]

  #example[
    求积分 $ I = integral x^2 ast cos 3x thin dif x . $

    #ps[这里有一个 trick 即先令 $t = 3x$ 再用表格法，以方便求积分和求导.]

    令 $t = 3x$, 故 $I = 1 / 27 integral t^2 ast cos t thin dif t = 1 / 27 (t^2 sin t - 2t cos t - 2 sin t ) = 1 / 3 x^2 sin 3x + 2 / 9 x cos 3x - 2 / 27 sin 3x + C$.
  ]
]




#pagebreak()

=== 有理函数的积分
#proposition("王谱拆项法（有理函数的积分）")[

  (step 1) “求挡代”：即将被积函数分解为几项待定系数的分数时，要求哪一项的系数，就挡住被积函数分母中和要求的这一项分母形式一致的部分，将要求的这一项的分母表达式的零点带入到“挡”后的被积函数，得到的值就是所求的系数。

  #example[
    $
      x / ((x - 1) (x - 2)) = A / (x - 1) + B / (x - 2)
    $

    求 $A$ 时，把 $x - 1$ 的零点 $x = 1$ 代入到 $x / (cancel(x - 1) (x - 2))$ 中得到 $A = - 1$, 同理 $B = 2$.
  ]

  \
  (step 2) 趋势法：当分解后的项中出现无法通过求挡代求出的系数时，可以令被积函数变量趋于无穷，然后判断。
  #example()[
    $
      1 / ((x - 1)^2 (x - 2)) = A / (x - 1) + B / (x - 1)^2 + C / (x - 2)
    $

    可以通过求挡代求出 $B = -1, C = 1$，此时令 $x->oo, 1 / ((x - 1)^2 (x - 2)) ~ 1 / x^3$ 不存在 $1 / x$，故等式右侧的 $1 / x$ 项系数应为 $0$，即 $A + C = 0, A = -C = -1$.
  ]

  #example()[
    $
      (x^2 + 2x + 1) / ((x- 1) (x^2 + 2)) = A / (x - 1) + (B x) / (x^2 + 2) + C / (x^2 + 2)
    $
    求挡代求出 $A = 4 / 3$, 趋势法 $(x^2 + 2x + 1) / ((x- 1) (x^2 + 2)) ~ 1 / x$，故 $1 / x$ 的系数为 $A + B = 1, B = 1 - A = -1 / 3$，此时仅剩一个参数，令 $x = 0$ 求解方程即可。
  ]
]

#pagebreak()

=== 三角有理式的积分

#proposition()[
  形如 $integral R(sin x, cos x) dif x$ 的积分叫做三角有理式的积分。
]

#proposition("万能公式")[
  令 $t = tan x / 2$,
  $
    integral R (sin x, cos x) thin dif x = integral R (frac(2 t, 1 + t^2), frac(1 - t^2, 1 + t^2)) frac(2, 1 + t^2) thin dif t ,
  $
  其中 $R (sin x , cos x)$ 表示自变量为 $sin x , cos x$ 的有理函数.

  #proof[
    令 $t = tan x/2$.

    (step 1) 先证明 $sin x = (2t) / (1 + t^2)$.
    $
      sin x = 2 sin x/2 cos x/2 = 2 (sin x/2)/(cos x/2) cos^2 x/2 = 2 t cos^2 x/2
    $<万能公式证明-1>

    由 $sin^2 x + cos^2 x = 1$ 得
    $
      (sin^2 x)/(cos^2 x) + (cos^2 x)/(cos^2 x) & = 1/ (cos^2 x) \
                              => quad quad quad
                              tan^2 x + 1       & =1/ (cos^2 x)
    $

    整理得 $ cos^2 x & = 1/(tan^2 x + 1) $<万能公式证明-2>

    将 @eqt:万能公式证明-2 代入 @eqt:万能公式证明-1 得
    $
      sin x = (2t) / (1 + t^2)
    $

    (step 2) 再证明 $cos x = (1 - t^2)/(1 + t^2)$,
    由万能公式得
    $
      tan^2 x/2 = (1 - cos x) / (1 + cos x)
    $
    整理得
    $ cos x = (1 - tan^2 x/2)/(1 + tan^2 x/2) = (1- t^2)/(1 + t^2) $

    又因为 $tan x/2 = t$, 即 $x/2 = arctan t$, 故 $dif x = 2/(1 + t^2) dif t$.
  ]
]

#proposition("特殊凑微分方法")[
  利用有理式的性质简化计算

  + 若 $R (- sin x, cos x) = - R (sin x, cos x)$, 则令 $u = cos x$, 即凑
    $dif cos x$;

  + 若 $R (sin x, - cos x) = - R (sin x, cos x)$, 则令 $u = sin x$, 即凑
    $dif sin x$;

  + 若 $R (- sin x, - cos x) = R (sin x, cos x)$, 则令 $u = tan x$, 即凑
    $dif tan x$.
]

=== 简单无理函数积分

#proposition()[
  $ integral R (x, root(n, frac(a x + b, c x + d))) dif x $

  令 $root(n, frac(a x + b, c x + d)) = t,$
  将其化为有理函数积分进行计算.
]

#pagebreak()

== 定积分
#definition("定积分")[
  设函数 $f (x)$ 在区间 $[a , b]$ 上有定义，在区间 $[a , b]$ 内任意插入
  $n - 1$ 个分点 $a = x_0 < x_1 < x_2 < dots.h.c < x_(n - 1) < x_n = b$.

  将区间 $[a , b]$ 分成 $n$ 个小区间
  $[x_(i - 1) , x_i] , i = 1 , 2 , dots.h.c , n$，记
  $Delta x_i = x_i - x_(i - 1)$ 表示第 $i$ 个小区间的长度。

  在 $[x_(i - 1) , x_i]$ 上任取一点 $xi_i$，作和式
  $sum_(i = 1)^n f (xi_i) Delta x_i$，记
  $ lambda = max { Delta x_1 , Delta x_2 , dots.h.c , Delta x_n } , $ 若
  $lim_(lambda arrow.r 0) sum_(i = 1)^n f (xi_i) Delta x_i$
  存在，且此极限值不依赖于区间 $[a , b]$ 的分法，也不依赖于点 $xi_i$
  的取法，则称此极限值为 $f (x)$ 在区间 $[a , b]$ 上的定积分，记为
  $integral_a^b f (x) dif x$，即
  $ integral_a^b f (x) dif x = lim_(lambda arrow.r 0) sum_(i = 1)^n f (xi_i) Delta x_i . $

]

#proposition()[
  若 $f (x)$ 在区间 $[0 , 1]$ 上连续，则积分 $integral_0^1 f (x) dif x$
  存在。将 $[0 , 1]$ 区间 $n$ 等分，此时 $Delta x_i = 1 / n$，取 $xi_i = i / n$，由定积分的定义得
  $
    integral_0^1 f (x) dif x = lim_(lambda arrow.r 0) sum_(i = 1)^n f (xi_i) Delta x_i = lim_(n arrow.r oo) 1 / n sum_(i = 1)^n f (i / n) .
  $
  等式右端的极限可通过等式左端的积分来计算。

  #corollary()[ 在 $[a, b]$ 上
    $
      integral_a^b f (x) thin dif x = lim_(n arrow.r oo) sum_(k = 1)^n f (a + k dot.op frac(b - a, n)) dot.op frac(b - a, n) .
    $
  ]
]

#theorem("定积分存在的充分条件")[
  设 $f(x)$ 在积分区间 $[a, b]$ 上的定积分为 $integral_a^b f(x) dif x$.
  + 若 $f(x)$ 在积分区间上连续，则其定积分存在。

  + 若 $f(x)$ 在积分区间上单调，则其定积分存在。
  + 若 $f(x)$ 在积分区间上有界，且只有有限个间断点，则其定积分存在。
] <integrability>

#theorem("定积分存在的必要条件")[$f(x)$ 在 $[a, b]$ 上可积，则 $f(x)$ 在 $[a, b]$ 上有界。
]

#properties("积分的保号性")[
  若区间 $[a, b]$ 上 $f(x) <= g(x)$， 则有 $ integral_a^b f(x) dif x <= integral_a^b g(x) dif x. $
]

#properties("估值定理")[
  设 $M, m$ 分别是 $f(x)$ 在 $[a, b]$ 上的最大值与最小值，则 $ m (b - a) <= integral_a^b f(x) dif x <= M (b - a) . $
]

#properties("绝对值不等式")[
  $ abs(integral_a^b f(x) dif x) <= integral_a^b abs(f(x)) dif x . $
]

#theorem("积分中值定理")[
  $f(x)$ 在 $[a, b]$ 上连续，$exists xi in [a, b]$, 使 $ integral_a^b f(x) dif x = f(xi) (b - a) . $
  #annotation()[
    $xi$ 在 $(a, b)$ 上也成立。
  ]
]

#theorem("广义积分中值定理")[
  若 $f(x), g(x)$ 在 $[a, b]$ 上连续，且 $g(x)$ 不变号，则 $exists xi in [a, b]$ 使得
  $
    integral_a^b f(x) g(x) dif x = f(xi) integral_a^b g(x) dif x.
  $
]

=== 变限积分
#definition()[
  若函数 $f(x)$ 在区间 $[a,b]$ 上可积，则它在区间 $[a,x]$ 上也是可积的，其中 $x in [a,b]$. 用变量
  $x$ 替换定积分的积分上限 $b$ 之后，得到表达式
  $
    Phi(x) = integral_a^x f(t) dif t.
  $
]
#properties("连续性")[
  函数 $f(x)$ 在 $I$ 上 #link(<integrability>)[_可积（定积分存在）_]，则函数 $F(x) = integral_a^x f(t) dif t$ 在 $I$ 上连续。
]

#properties("可导性")[
  + 若 $f(x)$ 连续，则 $F(x) = integral_a^x f(t) dif t$ 可导，且 $F'(x) = f(x)$.

  + $F(x) = integral_a^x f(t) dif t$ 在 $f(x)$ 唯一跳跃间断点 $x_0$ 处 不可导，且 $F'_-(x_0) = lim_(x -> x_0^-) f(x), F'_+(x_0) = lim_(x -> x_0^+) f(x)$。

  + $F(x) = integral_a^x f(t) dif t$ 在 $f(x)$ 唯一的可去间断点 $x_1$ 处可导，且 $F'(x_1) = lim_(x -> x_1) f(x)$.
]

#proposition("变限积分求导")[
  有 $F(x) = integral_(phi_1 (x))^(phi_2 (x)) f(t) dif t$ 则
  $ F'(x) = f[phi_1 (x)] phi'(x) - f[phi_2 (x)] phi'(x) . $
]

== 定积分的计算

=== 积分学的基本公式
#theorem([牛顿--莱布尼茨公式 ])[
  如果函数 $F (x)$ 是连续函数 $f (x)$ 在区间 $[a , b]$ 上的一个原函数，则
  $ integral_a^b f (x) thin dif x = F (b) - F (a) . $
  通常记为 $F(x)|_a^b$.
]

=== 华里士公式

#proposition()[
  $
    integral_0^(pi / 2) sin^n x thin dif x = integral_0^(pi / 2) cos^n x thin dif x = cases(delim: "{", frac(n - 1, n) dot.op frac(n - 3, n - 2) dot.op dots.h dot.op 1 / 2 dot.op pi / 2\, space space & n "为偶数", , frac(n - 1, n) dot.op frac(n - 3, n - 2) dot.op dots.h dot.op 2 / 3\, & n "为大于 1 的奇数")
  $
]

=== 区间再现
#proposition()[
  $
    integral_a^b f(x) thin dif x & = integral_a^b f(a + b - x) thin dif x \
                                 & = 1 / 2 integral_a^b [f(x) + f(a + b - x)] thin dif x \
                                 & = integral_a^((a + b) / 2) [f(x) + f(a + b - x)] thin dif x
  $

  对于前两行的公式，只需要进行 $t = a + b - x$ 的换元即可证明，对于第三行公式证明如下：
  #proof[
    $
      integral_a^((a + b) / 2) [f(x) + f(a + b - x)] thin dif x = integral_a^((a + b) / 2) f(x) thin dif x + integral_a^((a + b) / 2) f(a + b - x) thin dif x
    $ <rehere-eq1>
    对第二项进行 $t = a + b - x$ 换元可得 $ integral_a^((a + b) / 2) f(a + b - x) thin dif x = integral_((a + b) / 2)^b f(t) thin dif t $
    代入到 @eqt:rehere-eq1 得
    $
      integral_a^((a + b) / 2) [f(x) + f(a + b - x)] thin dif x = integral_a^b f(x) thin dif x
    $
  ]
]

#proposition("常用的区间再现的引申公式")[
  + $integral_0^(pi / 2) f (sin x) thin dif x & = integral_0^(pi / 2) f (cos x) thin dif x$

  + $integral_0^(pi / 2) f (sin x , cos x) thin dif x & = integral_0^(pi / 2) f (cos x , sin x) thin dif x$

  + $integral_0^pi x f (sin x) thin dif x & = pi / 2 integral_0^pi f (sin x) thin dif x = pi integral_0^(pi / 2) f (sin x) thin dif x$
]


== 反常积分

=== 无穷区间上的反常积分
#definition()[
  设 $f (x)$ 为 $\[ a, + oo \)$ 上的连续函数，如果极限
  $lim_(t arrow.r + oo) integral_a^t f (x) thin dif x$
  存在，则称此极限为函数 $f (x)$ 在无穷区间 $\[ a, + oo \)$
  上的反常积分，记作 $integral_a^(+ oo) f (x) thin dif x$，即
  $ integral_a^(+ oo) f (x) thin dif x = lim_(t arrow.r + oo) integral_a^t f (x) thin dif x $
  这时也称反常积分 $integral_a^(+ oo) f (x) thin dif x$
  收敛。如果上述极限不存在，则称反常积分
  $integral_a^(+ oo) f (x) thin dif x$ 发散。

  该定义在 $(-oo, b]$ 以及 $(-oo, +oo)$ 上也适用。
]
=== 无界函数的反常积分

#definition()[设定义在 $\[ a, b \)$ 上的无界函数
  $f (x)$，其在任一区间 $[a, b - eta], (0 < eta < b - a)$
  上有界而且可积，而在 $\[ b - eta, b \)$ 无界，这种情况下称点 $b$ 为
  $f (x)$ 的瑕点或者奇点。无界函数的反常积分又称为瑕积分，记为
  $ integral_a^b f (x) dif x = lim_(eta arrow.r 0) integral_a^(b - eta) f (x) dif x . $
  若上述极限存在，则说反常积分 $integral_a^b f (x) dif x$
  收敛。反之，反常积分 $integral_a^b f (x) dif x$
  发散。为了让上述极限式更简单一些，我们通常取 $t in \[ a , b \)$，使得
  $ lim_(t arrow.r b^(-)) integral_a^t f (x) dif x . $
]

=== 敛散性的判别


#proposition("无穷区间上的反常积分的比值审敛法")[
  设函数$f (x)$, $g (x)$ 在区间 $\[ a , + oo \)$
  上连续，并且 $0 lt.eq f (x) lt.eq g (x) (a lt.eq x < + oo)$，则

  + 当 $integral_a^(+ oo) g (x) thin dif x$
    收敛时，$integral_a^(+ oo) f (x) thin dif x$ 收敛；

  + 当 $integral_a^(+ oo) f (x) thin dif x$
    发散时，$integral_a^(+ oo) g (x) thin dif x$ 发散。
]

#corollary("极限形式")[设函数$f (x)$, $g (x)$ 在区间
  $\[ a , + oo \)$ 上连续, 且 $f (x) gt.eq 0$, $g (x) > 0$,
  $lim_(x arrow.r + oo) frac(f (x), g (x)) = lambda$ (有限或 $oo$)，则

  + 当 $lambda eq.not 0$ 且 $lambda eq.not oo$
    时，$integral_a^(+ oo) f (x) thin dif x$ 与
    $integral_a^(+ oo) g (x) thin dif x$ 有相同的敛散性；

  + 当 $lambda = 0$ 时，若 $integral_a^(+ oo) g (x) thin dif x$ 收敛，则
    $integral_a^(+ oo) f (x) thin dif x$ 也收敛；

  + 当 $lambda = oo$ 时，若 $integral_a^(+ oo) g (x) thin dif x$ 发散，则
    $integral_a^(+ oo) f (x) thin dif x$ 也发散。
]


#proposition("无界函数反常积分的比值审敛法")[
  设$f (x)$, $g (x)$ 在 $\( a , b \]$ 上连续，瑕点同为
  $x = a$，并且 $f (x) lt.eq g (x) (a < x lt.eq b)$，则

  + 当 $integral_a^b g (x) thin dif x$ 收敛时，$integral_a^b f (x) thin dif x$
    收敛；

  + 当 $integral_a^b f (x) thin dif x$ 发散时，$integral_a^b g (x) thin dif x$
    发散。
]

#corollary("极限形式")[设$f (x)$, $g (x)$ 在 $\( a , b \]$
  上连续，瑕点同为 $x = a$，并且 $f (x) gt.eq 0$,
  $g (x) > 0 (a < x lt.eq b)$,
  $lim_(x arrow.r a^(+)) frac(f (x), g (x)) = lambda$ (有限或 $oo$)，则

  + 当 $lambda eq.not 0$ 且 $lambda eq.not oo$
    时，$integral_a^b f (x) thin dif x$ 和 $integral_a^b g (x) thin dif x$
    有相同的敛散性；

  + 当 $lambda = 0$ 时，若 $integral_a^b g (x) thin dif x$ 收敛，则
    $integral_a^b f (x) thin dif x$ 也收敛；

  + 当 $lambda = oo$ 时，若 $integral_a^b g (x) thin dif x$ 发散，则
    $integral_a^b f (x) thin dif x$ 也发散。
]

#proposition("两个重要结论")[
  + $ integral_a^(b) 1 / (x - a)^p dif x med cases(p < 1\, &"收敛", p >= 1\, quad & "发散") , quad (b > a) . $

  + $ integral_a^(+oo) 1 / x^p dif x med cases(p > 1\, &"收敛", p <= 1\, quad & "发散") , quad (a > 0). $
]<improper-p-integ>

#proposition()[
  $ integral_0^1 1 / (x^alpha (1 - x)^beta) dif x , alpha < 1, beta < 1 "收敛" $
  #proof[
    $exists xi in (0, 1):$
    $
      I & = integral_0^xi 1 / (x^alpha (1 - x)^beta) dif x + integral_xi^1 1 / (x^alpha (1 - x)^beta) dif x \
    $
    对于第一项，$0$ 是其瑕点，由比值判别法可知 $lim_(x -> 0^+) 1 / x^alpha \/ 1 / (x^alpha (1 - x)^beta) > 0$ 即两函数同敛散，由 @improper-p-integ 可知，当 $alpha < 1$ 时，第一项积分收敛。同理易证 $beta < 1$ 第二项积分收敛。

  ]
]

#proposition()[
  $ integral_0^1 (ln x) / (x^alpha (1 - x)^beta) dif x , alpha < 1, beta < 2 "收敛" $
  #proof[
    $exists xi in (0, 1):$
    $
      I & = integral_0^xi (ln x) / (x^alpha (1 - x)^beta) dif x + integral_xi^1 (ln x) / (x^alpha (1 - x)^beta) dif x \
    $
    对于第一项积分，假设 $alpha < 1, exists epsilon > 0, alpha + epsilon < 1$, 由比值审敛法 $lim_(x -> 0^+) (x^epsilon ln x) / (x^(alpha + epsilon) (1 - x)^beta) \/ 1 / x^(alpha + epsilon) = 0$, 可知若 $integral_0^xi 1 / x^(alpha + epsilon) dif x$ 收敛，则第一项积分也收敛，根据 @improper-p-integ 可知，$alpha < 1$.

    对于第二项积分，由比值审敛法 $lim_(x -> 1^-) 1 / (1 - x)^(beta - 1) \/ (ln x) / (x^alpha (1 - x)^beta) = 1$ 可知，两个函数积分同敛散，由 @improper-p-integ 可知，此时需满足 $beta < 2$.
  ]
]

#proposition()[
  $ integral_0^1 (ln (1 - x)) / (x^alpha (1 - x)^beta) dif x , alpha < 2, beta < 1 "收敛" $
]

#proposition()[
  $ integral_1^(+oo) 1 / x^p dif x , p > 1 "收敛" $
]

#proposition()[
  $ integral_1^(+oo) (ln x) / x^p dif x , p > 1 "收敛" $
]

=== Gamma 函数
