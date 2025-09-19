#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *
#import "./lib.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project

= 矩阵

== 可逆矩阵

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

