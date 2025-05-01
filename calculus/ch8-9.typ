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

=== 不定积分的计算
#annotation("凑微分法")[
  $ integral f[g(x)] g'(x) dif x = integral f[g(x)] dif [g(x)] $
]

#formula("分部积分法")[
  $ integral u dif v = u v - integral v dif u $

]
#remark[
  #align(center)[反、对、幂、指、三]
  $ u <- #h(4em) -> v $
]

#annotation("有理函数的积分")[ ]

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
#theorem("敛散性的判别")[ ]

#annotation("两个重要结论")[
  + $ integral_0^1 1 / x^p dif x cases("收敛"\, 0 < p < 1, "发散"\, p >= 1) . $

  + $ integral_0^(+oo) 1 / x^p dif x cases("收敛"\, p > 1, "发散"\, p <= 1) . $
]<improper-p-integ>

#annotation([常见的 $p$ 函数相关的敛散性判别])[
  + $ integral_0^1 1 / (x^alpha (1 - x)^beta) dif x , alpha < 1, beta < 1 "收敛" $
    #proof[
      $exists xi in (0, 1):$
      $
        I &= integral_0^xi 1 / (x^alpha (1 - x)^beta) dif x + integral_xi^1 1 / (x^alpha (1 - x)^beta) dif x \
      $
      对于第一项，$0$ 是其瑕点，由比值判别法可知 $lim_(x -> 0^+) 1 / x^alpha \/ 1 / (x^alpha (1 - x)^beta) > 0$ 即两函数同敛散，由 @improper-p-integ 可知，当 $alpha < 1$ 时，第一项积分收敛。同理易证 $beta < 1$ 第二项积分收敛。
    ]

  + $ integral_0^1 (ln x) / (x^alpha (1 - x)^beta) dif x , alpha < 1, beta < 2 "收敛" $
    #proof[
      $exists xi in (0, 1):$
      $
        I &= integral_0^xi (ln x) / (x^alpha (1 - x)^beta) dif x + integral_xi^1 (ln x) / (x^alpha (1 - x)^beta) dif x \
      $
      对于第一项积分，假设 $alpha < 1, exists epsilon > 0, alpha + epsilon < 1$, 由比值审敛法 $lim_(x -> 0^+) (x^epsilon ln x)/(x^(alpha + epsilon) (1 - x)^beta) \/ 1/x^(alpha + epsilon) = 0$, 可知若 $integral_0^xi 1/x^(alpha + epsilon) dif x$ 收敛，则第一项积分也收敛，根据 @improper-p-integ 可知，$alpha < 1$.

      对于第二项积分，由比值审敛法 $lim_(x -> 1^-) 1 / (1 - x)^(beta - 1) \/ (ln x) / (x^alpha (1 - x)^beta) = 1$ 可知，两个函数积分同敛散，由 @improper-p-integ 可知，此时需满足 $beta < 2$.
    ]


  + $ integral_0^1 (ln (1 - x)) / (x^alpha (1 - x)^beta) dif x , alpha < 2, beta < 1 "收敛" $

  + $ integral_1^(+oo) 1 / x^p dif x , p > 1 "收敛" $

  + $ integral_1^(+oo) (ln x) / x^p dif x , p > 1 "收敛" $
]
