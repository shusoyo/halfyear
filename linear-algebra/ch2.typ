#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Basic Knoweledge",
  language: "ch",
)

#let vb = $bold(beta)$
#let va = $bold(alpha)$
#let ve = $bold(e)$

#let mbb = $bold(B)$
#let mba = $bold(A)$


= 线性空间

#lemma("以少表多，多必相关")[
  向量组 $va_1, va_2, ..., va_s$ 可被向量组 $vb_1, vb_2, ..., vb_t$ 线性表示，且 $s>t$ ，则向量组 $va_1, va_2, ..., va_s$ 线性相关。

  一共有两种证明方式：

  #proof("1")[
    设 $exists x_1, x_2, ..., x_s, f = x_1 va_1 + x_2 va_2 + ... + x_s va_s$, 再由向量组 $va_1, va_2, ..., va_s$ 可被向量组 $vb_1, vb_2, ..., vb_t$ 线性表示得：
    $
      cases(
        &va_1 = &k_11 vb_1 + &k_12 vb_2 + ... + &k_(1 t) vb_t,
        &va_2 = &k_21 vb_1 + &k_22 vb_2 + ... + &k_(2 t) vb_t,
        &dots.v &dots.v &dots.v &dots.v,
        &va_s = &k_(s 1) vb_1 + &k_(s 2) vb_2 + ... + &k_(s t) vb_t,
      )
    $

    带入 $f$ 得:
    $
      f = &x_1(k_11 vb_1 + k_12 vb_2 + ... + k_(1 t) vb_t) &+ \
      &x_2(k_21 vb_1 + k_22 vb_2 + ... + k_(2 t) vb_t) &+\
      & ...... &+ \
      &x_s (k_(s 1)vb_1 + k_(s 2) vb_2 + ... + k_(s t) vb_t)
      \
      = &vb_1(x_1 k_11 + x_2 k_21 + ... + x_s k_(s 1)) &+ \
      &vb_2(x_1 k_12 + x_2 k_22 + ... + x_s k_(s 2)) &+\
      & ...... &+ \
      &vb_t (x_1 k_(1t) + x_2 k_(2t) + ... + x_s k_(s t)) \
    $

    要证向量组 $va_1, va_2, ..., va_s$ 线性相关，即证 $f = 0$, 即证 $f$ 中 $vb$ 的系数全为 $0$, 即：
    $
      cases(
        &x_1 k_11 + &x_2 k_21 + ... + &x_s k_(s 1) = &0,
        &x_1 k_12 + &x_2 k_22 + ... + &x_s k_(s 2) = &0,
        &dots.v &dots.v &dots.v &dots.v,
        &x_1 k_(1t) + &x_2 k_(2t) + ... + &x_s k_(s t) = &0
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

