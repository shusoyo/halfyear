#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(language: "ch")

= 一元函数积分学的计算
ps: 要注意公式，方法适用的条件。

== 不定积分的计算
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

== 定积分的计算

#annotation("求定积分时的一些常见结论总结")[
  + 奇偶性
  + 华里士公式、点火公式
  + 区间再现
]

== 变限积分的计算

#theorem[
  有 $F(x) = integral_(phi_1 (x))^(phi_2 (x)) f(t) dif t$ 则
  $ F'(x) = f[phi_1 (x)] phi'(x) - f[phi_2 (x)] phi'(x) $
]


== 反常积分

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
