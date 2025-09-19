#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *
#import "./lib.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project


= 线性方程组的解

== 线性方程组解的判定
#proposition("线性方程组的解的形式")[
  1. 矩阵式 $bold(A x) = bold(beta)$ (齐次方程组 $bold(A x) = bold(0)$).
    于是 $n$ 维向量 $bold(xi)$ 是 $bold(A x) = bold(beta)$ 解 $arrow.l.r.double bold(A) bold(xi) = bold(beta)$; $n$ 维向量 $bold(eta)$ 是 $bold(A x) = bold(0)$ 的解 $arrow.l.r.double bold(A) bold(eta) = bold(0)$.

  2. 向量式
    $x_1 bold(alpha)_1 + x_2 bold(alpha)_2 + dots.h.c + x_v bold(alpha)_v = bold(beta)$
    (齐次方程组 $x_1 bold(alpha)_1 + x_2 bold(alpha)_2 + dots.h.c + x_v bold(alpha)_v = bold(0)$).
]

#proposition([齐次线性方程组解的判定])[
  $bA_(m times n) bold(x) = bold(0)$ 为 $n$ 元线性方程组
  $
    bA bx & = 0 "只有零解" arrow.l.r.double r (bA) = n \
    bA bx & = 0 "有非零解" arrow.l.r.double r (bA) < n \
  $

  #corollary[$m < n => bA bx = 0$ 有非零解。]
]

#proposition("非齐次线性方程组解的判定")[ $bA_(m times n) bold(x) = bold(b)$ 为 $n$ 元线性方程组
  $
    bA bx = bold(b) quad cases(
      "无解" & arrow.l.r.double r (bA) < r (bA, bold(b)) arrow.l.r.double r (bA) = r (bA, bold(b)) - 1,
      "有唯一解" & arrow.l.r.double r (bA) = r (bA, bold(b)) = n,
      "有无穷多解" & arrow.l.r.double r (bA) = r (bA, bold(b)) < n
    )
  $

  #corollary()[

    + $bA bx = bold(b)$ 有解 $arrow.l.r.double r (bA) = r (bA, bold(b))$;

    + $bA bx = bold(b)$ 有解的充分条件为 $r (bA) = m$.
  ]

  #annotation()[
    + 若 $bA bx = b$ 有唯一解，则 $bA bx = 0$ 只有零解；若 $bA bx = b$
      有无穷多解，则 $bA bx = 0$ 有非零解;

    + 若 $bA$ 为 $n$ 阶矩阵，则线性方程组解的判定或求解可以利用 Cramer 法则.
  ]
]

== 齐次线性方程组解的结构

#proposition([$bold(A x) = bold(0)$ 解性质])[ 如果
  $bold(eta)_1 , bold(eta)_2 , dots.h.c , bold(eta)_r$ 是齐次方程组
  $bold(A x) = bold(0)$ 的一组解，则它们的任何线性组合
  $c_1 bold(eta)_1 + c_2 bold(eta)_2 + dots.h.c + c_r bold(eta)_r$
  也都是解。
]

#definition([$bold(A x) = bold(0)$ 的基础解系和通解])[
  如果齐次方程组 $bold(A x) = bold(0)$
  有非零解，则它的解集 $bold(J)$（全部解的集合）是无穷集，称 $bold(J)$
  的最大无关组为 $bold(A x) = bold(0)$ 的基础解系。

  当 $bold(eta)_1 , bold(eta)_2 , dots.h.c , bold(eta)_r$ 是 $bold(A x) = bold(0)$ 的基础解系时：向量 $bold(eta)$ 是 $bold(A x) = bold(0)$ 的解 $arrow.l.r.double bold(eta)$ 可用 $bold(eta)_1 , bold(eta)_2 , dots.h.c , bold(eta)_r$ 线性表示。于是，$bold(A x) = bold(0)$ 的通解为：
  $ c_1 bold(eta)_1 + c_2 bold(eta)_2 + dots.h.c + c_r bold(eta)_r , quad c_i in RR $
]

#proposition([$r(bold(J))$])[
  设 $bold(A x) = bold(0)$ 有 $n$ 个未知数，则
  $ r (bold(J)) = n - r (bold(A)) $
  即它的基础解系中包含解的个数为 $s = n - r (bold(A))$。

  于是判别一组向量 $bold(eta)_1 , bold(eta)_2 , dots.h.c , bold(eta)_r$ 是
  $bold(A x) = bold(0)$ 的基础解系的条件为：

  + $bold(eta)_1 , bold(eta)_2 , dots.h.c , bold(eta)_r$ 是
    $bold(A x) = bold(0)$ 的一组解；

  + $bold(eta)_1 , bold(eta)_2 , dots.h.c , bold(eta)_r$ 线性无关；

  + $s = n - r (bold(A))$。
]

#corollary()[
  如果 $bold(A B) = bold(0) , n$ 为 $bold(A)$ 的列数（$bold(B)$ 的行数）, 则 $r (bold(A)) + r (bold(B)) lt.eq n$.
]

== 非齐次方程组解的结构

#proposition([$bold(A x = beta)$ 解的性质])[
  如果
  $bold(xi)_1 , bold(xi)_2 , dots.h.c , bold(xi)_s$ 是
  $bold(A x) = bold(beta)$ 的一组解, 则

  + 它们的线性组合
    $c_1 bold(xi)_1 + c_2 bold(xi)_2 + dots.h.c + c_s bold(xi)_s$
    也是 $bold(A x) = bold(beta)$ 解的
    $arrow.l.r.double c_1 + c_2 + dots.h.c + c_s = 1$.

  + 它们的线性组合
    $c_1 bold(xi)_1 + c_2 bold(xi)_2 + dots.h.c + c_s bold(xi)_s$
    是 $bold(A x) = bold(0)$ 的解
    $arrow.l.r.double c_1 + c_2 + dots.h.c + c_s = 0$.

  + $bold(A x) = bold(beta)$ 的两个解的差一定是 $bold(A x) = bold(0)$
    的解.

  + 如果 $bold(xi)$ 是 $bold(A x) = bold(beta)$ 的一个解，$bold(eta)$ 是
    $bold(A x) = bold(0)$ 的解，则 $bold(xi) + bold(eta)$ 是
    $bold(A x) = bold(beta)$ 的解.
]

#proposition([非齐次方程组的通解])[

  如果 $bold(xi)_0$ 是非齐次方程组 $bold(A x) = bold(beta)$ 的解,
  $bold(eta)_1 , bold(eta)_2 , dots.h.c , bold(eta)_r$ 是导出组
  $bold(A x) = bold(0)$ 的基础解系, 则 $bold(A x) = bold(beta)$
  的通解（一般解）为
  $
    bold(xi)_0 + c_1 bold(eta)_1 + c_2 bold(eta)_2 + dots.h.c + c_r bold(eta)_r , quad c_1 , c_2 , dots.h.c , c_r in RR .
  $
]

#proposition($r(bold(J))$)[

  当非齐次方程组 $bold(A x) = bold(beta)$ 有解时,
  $r(bold(J)) = n - r (bold(A)) + 1$.
]

== 公共解与同解

#definition("公共解")[
  齐次线性方程组 $bold(A)_(m times n) bold(x) = bold(0)$ 和 $bold(B)_(m times n) bold(x) = bold(0)$ 的公共解是满足方程组 $ mat(delim: "[", bold(A); bold(B)) bold(x) = bold(0) $ 的解，即联立求解。同理，求 $bold(A x) = bold(a)$ 与 $bold(B x) = bold(beta)$ 的公共解。即求
  $
    cases(
      bold(A x) = bold(a),
      bold(B x) = bold(beta)
    ) <=> mat(delim: "[", bold(A); bold(B)) bold(x) = mat(delim: "[", bold(a); bold(beta))
  $
  的解.
]

#annotation()[方程组求解的思维比较简单，但对计算能力要求高，平时要勤做练习，加强计算能力.]

#proposition()[还有两种考查 $bold(A x) = bold(0)$ 与
  $bold(B x) = bold(0)$ 公共解的角度:

  + 若给出 $bold(A)_(m times n) bold(x) = bold(0)$ 的基础解系
    $bold(xi)_1 , bold(xi)_2 , dots.h.c , bold(xi)_s$ 和
    $bold(B)_(m times n) bold(x) = bold(0)$ 的具体表达式, 则先写出
    $bold(A x) = bold(0)$ 的通解
    $k_1 bold(xi)_1 + k_2 bold(xi)_2 + dots.h.c + k_s bold(xi)_s$, 代回
    $bold(A)_(m times n) bold(x) = bold(0)$ 的通解, 即可得
    $bold(A x) = bold(0)$ 与 $bold(B x) = bold(0)$ 的公共解.

  + 若给出 $bold(A)_(m times n) bold(x) = bold(0)$ 的基础解系
    $bold(xi)_1 , bold(xi)_2 , dots.h.c , bold(xi)_s$ 与
    $bold(B)_(m times n) bold(x) = bold(0)$ 的基础解系
    $bold(eta)_1 , bold(eta)_2 , dots.h.c , bold(eta)_t$, 则
    $bold(A x) = bold(0)$ 与 $bold(B x) = bold(0)$ 的公共解
    $bold(y) = k_1 bold(xi)_1 + k_2 bold(xi)_2 + dots.h.c + k_s bold(xi)_s = l_1 bold(eta)_1 + l_2 bold(eta)_2 + dots.h.c + l_t bold(eta)_t$,
    即
    $
      k_1 bold(xi)_1 + k_2 bold(xi)_2 + dots.h.c + k_s bold(xi)_s - l_1 bold(eta)_1 - l_2 bold(eta)_2 - dots.h.c - l_t bold(eta)_t = bold(0) ,
    $
    解此式, 求出 $k_i$ 或 $l_j$,
    $i = 1 , 2 , dots.h.c , s ; j = 1 , 2 , dots.h.c , t$, 即可求出
    $bold(y)$.
]

#definition("同解")[
  若两个方程组 $bold(A)_(m times n) bold(x) = bold(0)$ 和
  $bold(B)_(s times n) bold(x) = bold(0)$
  有完全相同的解，则称它们为同解方程组。

  于是， $     & bold(A x) = bold(0) , bold(B x) = bold(0) "是同解方程组" \
  <=> & bold(A x) =bold(0) "的解满足" bold(B x) =bold(0),
        "且" bold(B x) =bold(0) "的解满足" bold(A x) =bold(0) \
  <=> & r (bold(A)) = r (bold(B)) , "且" bold(A x) =bold(0) "的解满足" bold(B x) =bold(0) \
  <=> & r (bold(A)) = r (bold(B)) = r (mat(delim: "[", bold(A); bold(B))) $

  #annotation()[
    + 以上三条是理论分析，着眼于客观试题。
    + 对于齐次线性方程组 $bold(A x) = 0$ 和
      $bold(B x) = 0$，因其必有零公共解，故要求公共解，主要着眼于求非零公共解，联立方程组求解是基本办法。
  ]
]

#proposition("同解的几个结论")[
  + 设矩阵 $bA$，方程组 $bA^T bA bx = 0$ 与 $bA bx = 0$ 同解

  + 若矩阵 $bA$ 列满秩，则方程组 $bA bB bx = 0$ 与 $bB bx = 0$ 同解

  + 若 $bA$ 为实对称矩阵，则 $bA^k bx = 0$ 与 $bA bx = 0$ 同解

  + 若 $bA$ 是 $n$ 阶矩阵，则 $bA^n bx = 0$ 与 $bA^(n + 1) bx = 0$ 同解

  #ref[https://www.bilibili.com/video/BV1s84y1C7SA]
]
