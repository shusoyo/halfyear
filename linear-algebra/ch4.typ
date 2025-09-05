#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *
#import "./lib.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project

= 特征值与矩阵相似

#proposition([特征值与特征向量的性质])[
  + 不同特征值的特征向量线性无关；

  + 不同值特征的特征向量之和不是特征向量；

  + $k$ 重特征值最多有 $k$ 个线性无关的特征向量；

  + 设 $bA$ 的特征值为 $lambda_1 , lambda_2 , dots.h.c , lambda_n$，则
    $sum_(i = 1)^n lambda_i = sum_(i = 1)^n a_(i i) = upright("tr") (bA)$，$product_(i = 1)^n lambda_i = lr(|bA|)$；

  + 若 $r (bA) = 1$，即 $bA = bold(alpha) bold(beta)^T$，其中
    $bold(alpha) , bold(beta)$ 为 $n$ 维非零列向量，则 $bA$ 的特征值为
    $
      lambda_1 = upright("tr") (bA) = bold(alpha)^T bold(beta) = bold(beta)^T bold(alpha) ， lambda_2 = dots.h.c = lambda_n = 0
    $

  + 设 $bold(alpha)$ 为矩阵 $bA$ 属于特征值 $lambda$ 的特征向量，则
  #align(center)[
    #table(
      inset: 10pt,
      columns: (auto, auto, auto, auto, auto, auto),
      align: (center, center, center, center, center),
      [$bA$], [$f(bA)$], [$bA^(-1)$], $bA^\*$, $bA^tsp$, $bold(P)^(-1) bA bold(P)$,
      $lambda$, $f(lambda)$, $1/lambda$, $(|bA|)/lambda$, $lambda$, $lambda$,
      $va$, $va$, $va$, $va$, $$, $bold(P)^(-1) va$,
    )
  ]
]

#proposition("特征方程")[
  $
    |lambda bold(E) - bold(A) | = lambda^n + a_(n - 1) lambda^(n - 1) + ... + a_1 lambda + a_0 = f(lambda)
  $
]


