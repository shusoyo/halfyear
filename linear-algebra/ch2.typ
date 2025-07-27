#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *
#import "./lib.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project

= 线性空间

#lemma("以少表多，多必相关")[
  向量组 $va_1, va_2, ..., va_s$ 可被向量组 $vb_1, vb_2, ..., vb_t$ 线性表示，且 $s>t$ ，则向量组 $va_1, va_2, ..., va_s$ 线性相关。

  一共有两种证明方式：

  #proof("1")[
    设 $exists x_1, x_2, ..., x_s, f = x_1 va_1 + x_2 va_2 + ... + x_s va_s$, 再由向量组 $va_1, va_2, ..., va_s$ 可被向量组 $vb_1, vb_2, ..., vb_t$ 线性表示得：
    $
      cases(
        & va_1 = & k_11 vb_1 + & k_12 vb_2 + ... + & k_(1 t) vb_t,
        & va_2 = & k_21 vb_1 + & k_22 vb_2 + ... + & k_(2 t) vb_t,
        & dots.v & dots.v & dots.v & dots.v,
        & va_s = & k_(s 1) vb_1 + & k_(s 2) vb_2 + ... + & k_(s t) vb_t,
      )
    $

    带入 $f$ 得:
    $
      f = & x_1(k_11 vb_1 + k_12 vb_2 + ... + k_(1 t) vb_t)       & + \
          & x_2(k_21 vb_1 + k_22 vb_2 + ... + k_(2 t) vb_t)       & + \
          & ......                                                & + \
          & x_s (k_(s 1)vb_1 + k_(s 2) vb_2 + ... + k_(s t) vb_t)     \
        = & vb_1(x_1 k_11 + x_2 k_21 + ... + x_s k_(s 1))         & + \
          & vb_2(x_1 k_12 + x_2 k_22 + ... + x_s k_(s 2))         & + \
          & ......                                                & + \
          & vb_t (x_1 k_(1t) + x_2 k_(2t) + ... + x_s k_(s t))        \
    $

    要证向量组 $va_1, va_2, ..., va_s$ 线性相关，即证 $f = 0$, 即证 $f$ 中 $vb$ 的系数全为 $0$, 即：
    $
      cases(
        & x_1 k_11 + & x_2 k_21 + ... + & x_s k_(s 1) = & 0,
        & x_1 k_12 + & x_2 k_22 + ... + & x_s k_(s 2) = & 0,
        & dots.v & dots.v & dots.v & dots.v,
        & x_1 k_(1t) + & x_2 k_(2t) + ... + & x_s k_(s t) = & 0
      )
    $

    将问题转化为求齐次方程组的解的问题，其中 $bold(K) = (k_(i j))_(t times s)$ 为系数矩阵，$bold(X) = x_i$ 为未知量向量，未知量个数为 $s$ 个，方程个数为 $t$ 个，因为 $s > t$ 所以该齐次方程组有非零解.

    即 $exists bold(X) = (x_1, x_2, ..., x_s)^T$ 为满足齐次方程组的非零解，也即满足 $f = x_1 va_1 + x_2 va_2 + ... + x_s va_s = 0$, 故向量组 $va_1, va_2, ..., va_s$ 线性相关。
  ]

  \

  #proof("2")[
    向量组 $va_1, va_2, ..., va_s$ 可被向量组 $vb_1, vb_2, ..., vb_t$ 线性表示, 那么
    $
      op("span")
      (va_1, va_2, ..., va_s) subset.eq op("span") (vb_1, vb_2, ..., vb_t)
    $
    于是 $dim upright("span")(va_1, va_2, ..., va_s) lt.eq dim op("span")(vb_1, vb_2, ..., vb_t) lt.eq m$。因此当
    $n > m$ 时，$va_1, va_2, ..., va_s$ 是线性相关的。

  ]
]


== 线性相关与线性无关

#proposition("正交向量组线性无关")[
  设 $va_1, va_2, ..., va_n$ 是 $n$ 个两两正交的非零向量组，那么 $va_1, va_2, ..., va_n$ 线性无关。

  #proof[
    用反证法，假设向量组正交，不失一般性，设至少 $exists k_i != 0$ 使 $k_1 va_1 + k_2 va_2 + ... + k_i va_i + ... + k_n va_n = 0$，等式两边同时乘 $va_i$ 得

    $
      k_1 va_1 dot.op va_i + k_2 va_2 dot.op va_i + ... + k_i va_i dot.op va_i + ... + k_n va_n dot.op va_i = 0
    $
    因为向量两两正交，即 $va_i dot.op va_j = 0$ 得
    $
      k_i va_i dot.op va_i = k_i lr(||va_i||)^2 = 0
    $
    因为 $lr(|| va_i ||) > 0$ 故 $k_i = 0$ 与假设矛盾。
  ]
]

== 线性方程组的解

#proposition([齐次线性方程组解的判定])[

  $
    bA bx & = 0 "只有零解" arrow.l.r.double r (bA) = n \
    bA bx & = 0 "有非零解" arrow.l.r.double r (bA) < n \
  $

  #corollary[$m < n => bA bx = 0$ 有非零解。]
]

#proposition("非齐次线性方程组解的判定")[
  $overline(bA)$ 为增广矩阵。
  $
    bA bx = b quad cases(
      "无解" & arrow.l.r.double r (bA) < r (overline(bA)) arrow.l.r.double r (bA) = r (overline(bA)) - 1,
      "有唯一解" & arrow.l.r.double r (bA) = r (overline(bA)) = n,
      "有无穷多解" & arrow.l.r.double r (bA) = r (overline(bA)) < n
    )
  $

  #corollary()[

    + $bA bx = b$ 有解 $arrow.l.r.double r (bA) = r (overline(bA))$;

    + $bA bx = b$ 有解的充分条件为 $r (bA) = m$.
  ]

  #annotation()[
    + 若 $bA bx = b$ 有唯一解，则 $bA bx = 0$ 只有零解；若 $bA bx = b$
      有无穷多解，则 $bA bx = 0$ 有非零解;

    + 若 $bA$ 为 $n$ 阶矩阵，则线性方程组解的判定或求解可以利用 Cramer 法则.
  ]
]
