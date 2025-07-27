#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *
#import "./lib.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project

= 矩阵

== 可逆矩阵

#proposition("可逆的充要条件")[
  $n$ 阶矩阵 $bA$ 可逆

  $arrow.l.r.double lr(|bA|) eq.not 0$

  $arrow.l.r.double r (bA) = n$

  $arrow.l.r.double bA$ 的列（或行）向量组线性无关

  $arrow.l.r.double$ 齐次线性方程组 $bA x = 0$ 只有零解

  $arrow.l.r.double$ 非齐次线性方程组 $bA x = b$ 有唯一解

  $arrow.l.r.double bA$ 的特征值均不为零
]

== 初等变换与初等矩阵

#proposition("初等矩阵的行列式")[
  + $lr(|bE_(i j)|) = - 1$.

  + $lr(|bE_i (k)|) = k (k eq.not 0)$.

  + $lr(|bE_(i j) (c)|) = 1$.
]

#proposition("初等矩阵的逆矩阵")[
  + $bE_(i j)^(- 1) = bE_(i j)$.

  + $bE_i^(-1)(k) = bE_i (1/k)$.

  + $bE_(i j)^(- 1) (c) = bE_(i j) (- c)$.
]

#proposition("初等矩阵的转置矩阵")[
  + $bE^tsp_(i j) = bE_(i j)$.

  + $bE^tsp_(i) (k) = bE_(i) (k)$.

  + $bE^tsp_(i j) (c) = bE_(j i)^tsp (c)$.
]
#annotation[ 三种初等矩阵都是可逆矩阵.]
