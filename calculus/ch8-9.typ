#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(language: "ch")


= 一元函数积分学

== 不定积分

#definition("原函数与不定积分")[
  对于函数 $f(x)$ 有 $F(x)$ 使得 $F(x)' = f(x)$， 其中 $F(x)$ 为 $f(x)$ 的原函数，$F(x) + C$ 为其不定积分。
]

#theorem("原函数存在定理")[
  + 连续函数必有原函数.
    #proof[
      思路为构造出变上限积分函数 $Phi(x)$ 然后求出 $Delta Phi(x)$, 对其由积分中值定理，构造出 $(Delta Phi(x)) / (Delta x) = f(xi)$, 等式两边同时取极限即可。
    ]

  + 在含有第一类间断点和无穷间断点的区间内，一定不存在原函数。
]

#pagebreak()
=== 分部积分法
// #annotation("凑微分法")[
//   $ integral f[g(x)] g'(x) dif x = integral f[g(x)] dif [g(x)] $
// ]

#proposition("分部积分法")[
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
    &integral u' v^((n)) thin dif x &&= u' v^((n - 1)) - integral u'' v^((n - 1)) thin dif x,\
    &integral u'' v^((n - 1)) thin dif x &&= u'' v^((n - 2)) - integral u''' v^((n - 2)) thin dif x,\
    &&dots.v\
    &integral u^((n)) v' thin dif x &&= u^((n)) v - integral u^((n + 1)) v thin dif x,
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



== 定积分
#definition("定积分")[
  对于 $f(x)$ 在积分区间 $[a, b]$ 上的定积分 $integral_a^b f(x) dif x$，当其存在时，可在积分区间任意取 $n - 1$ 个分点，在被划分的每个小区域内，任取 $xi$，则其定积分为
  $
    integral_a^b f(x) dif x = lim_(n -> oo) sum_(i = 1)^n f(xi_i) Delta x_i
  $
]

#theorem("定积分存在定理（黎曼 / 常义可积性）")[
  设 $f(x)$ 在积分区间 $[a, b]$ 上的定积分为 $integral_a^b f(x) dif x$.
  + 若 $f(x)$ 在积分区间上连续，
  + 若 $f(x)$ 在积分区间上单调，
  + 若 $f(x)$ 在积分区间上有界，且只有有限个间断点，则其定积分存在。这三个条件是定积分存在的充分条件。
  + 定积分存在的必要条件是，$f(x)$ 在积分区间有界。
] <integrability>

#properties[
  + 积分的保号性：若区间 $[a, b]$ 上 $f(x) <= g(x)$， 则有 $integral_a^b f(x) dif x <= integral_a^b g(x) dif x$.

  + 估值定理：$x in [a, b], M = f(x)_max, m = f(x)_min, L = b - a$ 有 $m L <= integral_a^b f(x) dif x <= M L$.
  + 中值定理：$f(x)$ 在 $[a, b]$ 上连续，$exists xi in (a, b), integral_a^b f(x) dif x = f(xi) (b - a)$.
]

=== 定积分的计算
#annotation("求定积分时的一些常见结论总结")[
  + 奇偶性
  + 华里士公式、点火公式
  + 区间再现
]


#proposition("区间再现")[
  $
    integral_a^b f(x) thin dif x &= integral_a^b f(a + b - x) thin dif x \ &= 1 / 2 integral_a^b [f(x) + f(a + b - x)] thin dif x \
    &= integral_a^((a + b) / 2) [f(x) + f(a + b - x)] thin dif x
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
  + $integral_0^(pi / 2) f (sin x) thin d x & = integral_0^(pi / 2) f (cos x) thin d x$

  + $integral_0^(pi / 2) f (sin x , cos x) thin d x & = integral_0^(pi / 2) f (cos x , sin x) thin d x$

  + $integral_0^pi x f (sin x) thin d x & = pi / 2 integral_0^pi f (sin x) thin d x = pi integral_0^(pi / 2) f (sin x) thin d x$
]

== 变限积分
#properties[
  + 函数 $f(x)$ 在 $I$ 上 #link(<integrability>)[可积]，则函数 $F(x) = integral_a^x f(t) dif t$ 在 $I$ 上连续。

  + $f(x)$ 连续，则 $F(X) = integral_a^x f(t) dif t$ 可导，且 $F'(x) = f(x)$.

  + $F(x) = integral_a^x f(t) dif t$ 在 $f(x)$ 唯一间断点 $x_0$ 处 不可导，且 $cases(F'_-(x_0) = lim_(x -> x_0^-) f(x), F'_+(x_0) = lim_(x -> x_0^+) f(x))$，

  + 在 $f(x)$ 唯一的可去间断点 $x_1$ 处可导，且 $F'(x_1) = lim(x -> x_1) f(x)$.
]

=== 变限积分的计算

#theorem[
  有 $F(x) = integral_(phi_1 (x))^(phi_2 (x)) f(t) dif t$ 则
  $ F'(x) = f[phi_1 (x)] phi'(x) - f[phi_2 (x)] phi'(x) $
]

== 反常积分
#theorem("敛散性的判别")[ 见 《高等数学辅导讲义》 P121.]

#proposition("两个重要结论")[
  + $ integral_0^1 1 / x^p dif x med cases("收敛"\, 0 < p < 1, "发散"\, p >= 1) . $

  + $ integral_0^(+oo) 1 / x^p dif x med cases("收敛"\, p > 1, "发散"\, p <= 1) . $

]<improper-p-integ>

#proposition([常见的 $p$ 函数相关的敛散性判别])[
  + $integral_0^1 1 / (x^alpha (1 - x)^beta) dif x , alpha < 1, beta < 1 "收敛"$
    #proof[
      $exists xi in (0, 1):$
      $
        I &= integral_0^xi 1 / (x^alpha (1 - x)^beta) dif x + integral_xi^1 1 / (x^alpha (1 - x)^beta) dif x \
      $
      对于第一项，$0$ 是其瑕点，由比值判别法可知 $lim_(x -> 0^+) 1 / x^alpha \/ 1 / (x^alpha (1 - x)^beta) > 0$ 即两函数同敛散，由 @improper-p-integ 可知，当 $alpha < 1$ 时，第一项积分收敛。同理易证 $beta < 1$ 第二项积分收敛。
    ]

  + $integral_0^1 (ln x) / (x^alpha (1 - x)^beta) dif x , alpha < 1, beta < 2 "收敛"$
    #proof[
      $exists xi in (0, 1):$
      $
        I &= integral_0^xi (ln x) / (x^alpha (1 - x)^beta) dif x + integral_xi^1 (ln x) / (x^alpha (1 - x)^beta) dif x \
      $
      对于第一项积分，假设 $alpha < 1, exists epsilon > 0, alpha + epsilon < 1$, 由比值审敛法 $lim_(x -> 0^+) (x^epsilon ln x) / (x^(alpha + epsilon) (1 - x)^beta) \/ 1 / x^(alpha + epsilon) = 0$, 可知若 $integral_0^xi 1 / x^(alpha + epsilon) dif x$ 收敛，则第一项积分也收敛，根据 @improper-p-integ 可知，$alpha < 1$.

      对于第二项积分，由比值审敛法 $lim_(x -> 1^-) 1 / (1 - x)^(beta - 1) \/ (ln x) / (x^alpha (1 - x)^beta) = 1$ 可知，两个函数积分同敛散，由 @improper-p-integ 可知，此时需满足 $beta < 2$.
    ]


  + $integral_0^1 (ln (1 - x)) / (x^alpha (1 - x)^beta) dif x , alpha < 2, beta < 1 "收敛"$

  + $integral_1^(+oo) 1 / x^p dif x , p > 1 "收敛"$

  + $integral_1^(+oo) (ln x) / x^p dif x , p > 1 "收敛"$
]
