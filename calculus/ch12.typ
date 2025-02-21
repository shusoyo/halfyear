#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project.with(language: "ch")

= 一元函数积分学的应用（二）物理应用

#annotation("基本物理公式")[
  + 力与位移方向相同时，做功 $W = F d$.
]

#formula("常用积分公式")[
  + 变力沿直线做功
    $ W = integral_a^b F(x) dif x $

  + 抽水做功
    $ W = rho g integral_a^b x A(x) dif x $

  + 静水压力
    $ P = rho g integral_a^b x [f(x) - h(x)] dif x $

  + 引力
    $ F = integral_(-l)^0 (G m mu) / (a - x)^2 dif x $
]
