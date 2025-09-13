#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *
#import "./lib.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project

= 向量的线性关系

== 线性表示
#definition("线性表示")[
  设 $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 是一个 $n$
  维向量组。
  $n$ 维向量 $bold(beta)$ 可用
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
  线性表示，即存在数组 $c_1 , c_2 , dots.h.c , c_s$ 使得
  $ c_1 bold(alpha)_1 + c_2 bold(alpha)_2 + dots.h.c + c_s bold(alpha)_s = bold(beta) . $

]

#corollary([线性表示问题和线性方程组解的情况的判断问题的关系])[
  方程组 $bold(A x) = bold(beta)$ 有解 $arrow.l.r.double bold(beta)$ 可用 $bold(A)$ 的列向量组线性表示。
]

#example()[
  设
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 是一个 $n$
  维向量组, $bold(beta)$ 和 $bold(gamma)$ 也都是 $n$ 维向量.
  判断下列命题的正确性.

  #set enum(numbering: "①")
  + 如果 $bold(beta) , bold(gamma)$ 都可用
    $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示,
    则 $bold(beta) + bold(gamma)$ 也可用
    $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示.

  + 如果 $bold(beta) , bold(gamma)$ 都不可用
    $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示,
    则 $bold(beta) + bold(gamma)$ 也不可用
    $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示.

  + 如果 $bold(beta)$ 可用
    $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示,
    而 $bold(gamma)$ 不可用
    $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示,
    则 $bold(beta) + bold(gamma)$ 可用
    $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示.

  + 如果 $bold(beta)$ 可用
    $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示,
    而 $bold(gamma)$ 不可用
    $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示,
    则 $bold(beta) + bold(gamma)$ 不可用
    $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示.

  #solution()[
    正确的是 #strong[①] 和 #strong[④];，#strong[②] 和 #strong[③] 都不对.

    + 显然.

    + 不对, 可用一个反例说明. \
      取 $bold(beta)$ 不可用
      $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示,
      $bold(gamma) = - bold(beta)$, 则 $bold(gamma)$ 也不可用
      $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示,
      但是 $bold(beta) + bold(gamma) = bold(0)$, 是可用
      $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示.

    用反证法说明 ③ 不对 ④ 对. 如果
    $bold(beta) + bold(gamma)$ 可用
    $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示,
    则因为 $bold(beta)$ 可用
    $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示,
    所以 $bold(gamma) = (bold(beta) + bold(gamma)) - bold(beta)$ 也可用
    $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示,
    与条件矛盾.
  ]
]

#proposition()[
  $n$ 维向量组 $bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r$
  可以用 $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
  线性表示, 即 $bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r$
  中的每一个都可以用
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示.
]

#annotation("线性表示与矩阵乘法的关系")[
  ：乘积矩阵 $bold(A B)$
  的列向量组可以用 $bold(A)$ 的列向量组线性表示，而 $bold(A B)$
  的行向量组可以用 $bold(B)$ 的行向量组线性表示。

  反过来，如果向量组
  $bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r$ 可以用
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
  线性表示，则矩阵
  $(bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r)$ 可分解为矩阵
  $(bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s)$ 和一个矩阵
  $bold(C)$ 的乘积。（$bold(C)$ 这样构造：它的第 $i$ 个列向量就是
  $bold(beta)_i$ 对
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
  的分解系数。）称 $bold(C)$ 为
  $bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r$ 对
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
  的表示矩阵。（$bold(C)$ 不一定是唯一的，唯一的充分必要条件是
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性无关。）

  #hl[向量组的线性表示关系有传递性]，即如果向量组
  $bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r$ 可以用
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示，而
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 可以用
  $bold(gamma)_1 , bold(gamma)_2 , dots.h.c , bold(gamma)_t$ 线性表示，则
  $bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r$ 可以用
  $bold(gamma)_1 , bold(gamma)_2 , dots.h.c , bold(gamma)_t$ 线性表示。
]

#proposition("向量组等价")[当向量组 $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
  和 $bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r$
  互相都可以线性表示时，就说它们等价，并记作
  $lr(|bold(alpha)_1, bold(alpha)_2, dots.h.c, bold(alpha)_s|) tilde.equiv lr(|bold(beta)_1, bold(beta)_2, dots.h.c, bold(beta)_r|)$。

  #hl[等价关系也有传递性。]
]

#example()[
  设 $bold(A B) = bold(C)$，证明：

  + 如果 $bold(B)$ 是可逆矩阵，则 $bold(A)$ 的列向量和 $bold(C)$
    的列向量组等价。

  + 如果 $bold(A)$ 是可逆矩阵，则 $bold(B)$ 的行向量组和 $bold(C)$
    的行向量组等价。

  #solution()[
    + 由上面的说明，$bold(C)$ 的列向量组可以用 $bold(A)$
      的列向量组线性表示。当 $bold(B)$ 是可逆矩阵时，有
      $bold(C) bold(B)^(- 1) = bold(A)$，于是 $bold(A)$ 的列向量组又可以用
      $bold(C)$ 的列向量组线性表示。

    + $bold(C)$ 的行向量组可以用 $bold(B)$ 的行向量组线性表示。当 $bold(A)$
      是可逆矩阵时，$bold(A)^(- 1) bold(C) = bold(B)$，于是 $bold(B)$
      的行向量组又可以用 $bold(C)$ 的行向量组线性表示。
  ]
]<向量组等价-01>


#example()[
  + 如果矩阵 $bold(A)$ 用初等列变换化为 $bold(B)$，则 $bold(A)$
    的列向量组和 $bold(B)$ 的列向量组等价。

  + 如果矩阵 $bold(A)$ 用初等行变换化为 $bold(B)$，则 $bold(A)$
    的行向量组和 $bold(B)$ 的行向量组等价。


  #solution()[
    + 利用初等变换与初等矩阵的关系，设矩阵 $bold(A)$ 用初等列变换化为
      $bold(B)$ 时，存在一系列初等矩阵
      $bold(P)_1 , bold(P)_2 , dots.h.c , bold(P)_r$，使得
      $ bold(A) bold(P)_1 bold(P)_2 dots.h.c bold(P)_r = bold(B) . $ 由于
      $bold(P) , bold(P)_2 , dots.h.c , bold(P)_r$
      是可逆矩阵，于是用 @向量组等价-01 的 (1)，$bold(A)$ 的列向量组和 $bold(B)$
      的列向量组等价。

    + 当矩阵 $bold(A)$ 用初等行变换化为 $bold(B)$ 时，存在一系列初等矩阵
      $bold(P)_1 , bold(P)_2 , dots.h.c , bold(P)_r$，使得
      $ bold(P)_r dots.h.c bold(P)_2 bold(P)_1 bold(A) = bold(B) . $ 由于
      $bold(P)_1 , bold(P)_2 , bold(P)_r$
      是可逆矩阵，于是用 @向量组等价-01 的 (2)，$bold(A)$ 的行向量组和 $bold(B)$
      的行向量组等价。
  ]
]

== 线性相关与线性无关
#definition("线性无关与线性相关")[
  如果存在不全为 $0$ 的一组数
  $c_1 , c_2 , dots.h , c_s$ 使得
  $ c_1 va_1 + c_2 va_2 + dots.h + c_s va_s = 0 , $ 则称向量组
  $va_1 , va_2 , dots.h , va_s$ 线性相关；否则称它们线性无关。
  （即：要使 $c_1 va_1 + c_2 va_2 + dots.h + c_s va_s = 0 ,$
  必须且只需 $c_1 = c_2 = dots.h = c_s = 0$。）
]

#proposition()[ 令
  $bold(A) = (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s)$，则
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
  线性相关（无关）$arrow.l.r.double$ 齐次方程组 $bold(A x) = bold(0)$
  有非零解（无非零解）。
]

#proposition("性质")[
  + 一个向量 $bold(alpha)$（个数 $s = 1$）线性相关
    $arrow.l.r.double bold(alpha) = bold(0)$。

  + 两个向量相关 $arrow.l.r.double$ 它们的分量对应成比例。

  + 线性无关向量组的每个部分组都无关。

  + 若向量的个数 $s$ 等于维数 $n$，则：
    $
      bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_n upright(" 线性相关") arrow.l.r.double lr(|bold(alpha)_1, bold(alpha)_2, dots.h.c, bold(alpha)_n|) = 0 .
    $

  + 当向量的个数 $s$ 大于维数 $n$
    时，$bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
    一定线性相关。
]

#proposition("与线性表示的关系")[
  如果
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
  线性无关，则：
  $
    bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s , bold(beta) upright("线性相关") &<=> bold(beta) upright("可用 ") bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s upright("线性表示") .
    \
    bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s , bold(beta) upright("线性无关") &arrow.l.r.double bold(beta) upright("不可用") bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s upright("线性表示") .
  $
]

#proposition()[
  如果 $bold(beta)$ 可用
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
  线性表示，且表示方式唯一 $arrow.l.r.double bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
  线性无关。
]


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
          & x_s (k_(s 1)vb_1 + k_(s 2) vb_2 + ... + k_(s t) vb_t) \
        = & vb_1(x_1 k_11 + x_2 k_21 + ... + x_s k_(s 1))         & + \
          & vb_2(x_1 k_12 + x_2 k_22 + ... + x_s k_(s 2))         & + \
          & ......                                                & + \
          & vb_t (x_1 k_(1t) + x_2 k_(2t) + ... + x_s k_(s t)) \
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

    将问题转化为求齐次方程组的解的问题，其中 $bold(K) = (k_(i j))_(t times s)$ 为系数矩阵，$bold(x) = x_i$ 为未知量向量，未知量个数为 $s$ 个，方程个数为 $t$ 个，因为 $s > t$ 所以该齐次方程组有非零解.

    即 $exists bold(x) = (x_1, x_2, ..., x_s)^T$ 为满足齐次方程组的非零解，也即满足 $f = x_1 va_1 + x_2 va_2 + ... + x_s va_s = 0$, 故向量组 $va_1, va_2, ..., va_s$ 线性相关。
  ]

  \

  #proof("2")[
    向量组 $va_1, va_2, ..., va_n$ 可被向量组 $vb_1, vb_2, ..., vb_m$ 线性表示, 那么
    $
      op("span")
      (va_1, va_2, ..., va_s) subset.eq op("span") (vb_1, vb_2, ..., vb_t)
    $
    于是 $dim upright("span")(va_1, va_2, ..., va_s) lt.eq dim op("span")(vb_1, vb_2, ..., vb_t) lt.eq m$。因此当
    $n > m$ 时，$va_1, va_2, ..., va_s$ 是线性相关的。

  ]
]


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


== 向量组的秩和极大无关组

向量组的秩是刻画向量组相关"程度"的一个数量概念。

#definition([矩阵的秩])[设
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 是 $n$
  维向量组。

  + 如果 $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
    不全是零向量（此时它们有线性无关的部分组）, 则规定它的秩
    $r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s)$
    是其线性无关部分组包含向量个数的最大值。

  + 如果 $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
    的一个线性无关部分组包含向量个数达到秩, 就称为它的一个最大无关组。

  + 如果 $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
    全是零向量, 则规定
    $r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s) = 0$.
    （此时没有最大无关组。）
]

#proposition()[
  许多教材上规定了极大无关组的概念：$bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
  的一个部分组称为极大无关组, 如果它本身无关, 再扩大就相关.
  极大无关组和最大无关组虽然定义的字面上有些不同, 但是实质是一样的.

  于是
  $0 lt.eq r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s) lt.eq min { s , n }$

  并且
  $r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s) = 0 arrow.l.r.double bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
  全是零向量.
]

=== ⽤秩判断线性相关性

#proposition()[ 如果 $(bold(I))$ 是
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 的最大无关组,
  则
  $(bold(I)) tilde.equiv bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$.
]
#proposition("用秩判断线性相关性")[
  $r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s) = s arrow.l.r.double bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
  线性无关.
]

#proposition()[
  $
    r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s , bold(beta)) =
    cases(r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s)\, & bold(beta) upright("可用") bold(alpha)_1\, bold(alpha)_2\, dots.h.c\, bold(alpha)_s upright("表示"), , r (bold(alpha)_1 \, bold(alpha)_2 \, dots.h.c , bold(alpha)_s) + 1\, quad & bold(beta) upright("不可用") bold(alpha)_1\, bold(alpha)_2\, dots.h.c\, bold(alpha)_s upright("表示"))
  $

  用这个命题容易得到下面各个用秩判断线性表示的条件.

]<rank-02>

=== ⽤秩判断线性表示
#proposition("用秩判断线性表示")[
  + $bold(beta)$ 可用
    $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示
    $arrow.l.r.double r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s , bold(beta)) = r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s)$.

  + $bold(beta)$ 可用
    $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
    唯一线性表示
    $arrow.l.r.double r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s , bold(beta)) = r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s) = s$.

  + $bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r$ 可以用
    $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示
    $arrow.l.r.double r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s , bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r) = r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s)$.

  + $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s tilde.equiv bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r arrow.l.r.double r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s) = r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s , bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r) = r (bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r)$.

]<rank-01>

#proposition()[
  秩相等是向量组等价的必要条件，不是充要条件.
]

#example()[如果
  $bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r$ 可以用
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示,
  并且
  $
    r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s) = r (bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r) ,
  $
  则
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s tilde.equiv bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r$.

  #solution()[ 只用再说明
    $r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s , bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r) = r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s)$,
    这是 @rank-01 的 (3) 直接得出的.
  ]
]

#proposition()[如果
  $bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r$ 可以用
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示, 则
  $
    r (bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r) lt.eq r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s) .
  $
  （这也是定理 @rank-01 (3) 的直接推论。）
]

#corollary()[如果 $bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r$ 可用
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 线性表示,
  并且 $t > s$, 则 $bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_r$
  线性相关.
]

=== 秩的计算, 有相同线性关系的向量组

#proposition()[两个包含向量个数相等的有序向量组
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 和
  $bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_s$, 如果向量方程
  $
    x_1 bold(alpha)_1 + x_2 bold(alpha)_2 + dots.h.c + x_s bold(alpha)_s = bold(0) quad upright("和") quad x_1 bold(beta)_1 + x_2 bold(beta)_2 + dots.h.c + x_s bold(beta)_s = bold(0)
  $
  同解（即齐次线性方程组
  $(bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s) bold(x) = bold(0)$
  和
  $(bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_s) bold(x) = bold(0)$
  同解）, 就称它们有相同线性关系

  当 $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$ 和
  $bold(beta)_1 , bold(beta)_2 , dots.h.c , bold(beta)_s$
  有相同线性关系时,

  + 它们的对应部分组有一致的线性相关性.

  + 它们的最大无关组相对应, 从而秩相等.

  + 它们有相同的内在线性表示关系.

]

#proposition()[
  当 $bold(A)$ 经过初等行变换化为 $bold(B)$ 时, $bold(A x) = bold(0)$
  和 $bold(B x) = bold(0)$ 同解, 从而 $bold(A)$ 的列向量组和 $bold(B)$
  的列向量组有相同的线性关系. 于是它们的最大无关组相对应, 秩相等.

  计算一个向量组
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
  的秩和最大无关组的方法: 把此向量组作为列向量组构造矩阵
  $(bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s)$,
  用初等行变换把它化为阶梯形矩阵 $bold(B)$, 则 $bold(B)$ 的非零行数就是
  $r (bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s)$,
  $bold(B)$ 的各台角所在列号对应的部分组是
  $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_s$
  的一个最大无关组.
]


== 矩阵的秩
#definition()[
  每个矩阵的行向量组的秩和列向量组的秩是相等的, 于是规定:
  矩阵 $bold(A)$ 的秩 $r (bold(A))$ 就是其行（列）向量组的秩.
]

#proposition()[ $r (bold(A))$ 就是 $bold(A)$
  的非0子式的阶数的最大值. (即 $bold(A)$ 的每个阶数大于 $r (bold(A))$
  的子式的值都为0, 但是 $bold(A)$ 有阶数等于 $r (bold(A))$ 的非0子式.)

  如果 $bold(A)$ 是 $m times n$ 矩阵, 则

  $
    0 lt.eq r (bold(A)) lt.eq min { m , n } \ r (bold(A)) = 0 arrow.l.r.double bold(A) = bold(0)
  $

  当 $r (bold(A)) = m$ 时, 称 $bold(A)$ 为行满秩的. (即 $bold(A)$
  的行向量组线性无关)

  当 $r (bold(A)) = n$ 时, 称 $bold(A)$ 为列满秩的. (即 $bold(A)$
  的列向量组线性无关)

  对于 $n$ 阶矩阵 $bold(A)$, 则行满秩和列满秩是一样的, 此时就称 $bold(A)$
  满秩. 于是:
  $
    n upright(" 阶矩阵 ") bold(A) upright(" 满秩") arrow.l.r.double r (bold(A)) = n arrow.l.r.double bold(A) upright(" 的行(列)向量组无关") arrow.l.r.double lr(|bold(A)|) eq.not 0 arrow.l.r.double bold(A) upright(" 可逆") .
  $

]

#proposition()[
  + 初等变换保持矩阵的秩.

  + 阶梯形矩阵的秩等于它的非零行的个数.
]

#proposition([矩阵秩的计算])[
  用初等变换将其化为阶梯形矩阵,
  则此阶梯形矩阵的非零行数就是原矩阵的秩.
  #annotation()[ 这里行列变换都可以用, 并且可交替使用.]
]


=== 矩阵的性质
#proposition([矩阵秩的性质])[
  + $r (bold(A)^tsp) = r (bold(A))$.

  + $r(bold(A)^tsp bold(A)) = r(bold(A)).$

  + 如果 $c eq.not 0$, 则 $r (c bold(A)) = r (bold(A))$.

  + $r (bold(A) plus.minus bold(B)) lt.eq r (bold(A)) + r (bold(B))$.

  + $r (bold(A B)) lt.eq min { r (bold(A)) , r (bold(B)) }$.

  + 当 $bold(A)$ 可逆时, $r (bold(A B)) = r (bold(B))$; 当 $bold(B)$
    可逆时, $r (bold(A B)) = r (bold(A))$.

  + 如果 $bold(A)$ 列满秩, 则 $r (bold(A B)) = r (bold(B))$; 如果
    $bold(B)$ 行满秩, 则 $r (bold(A B)) = r (bold(A))$.

  + 如果 $bold(A B) = bold(0)$, 则 $r (bold(A)) + r (bold(B)) lt.eq n$,
    $n$ 为 $bold(A)$ 的列数 ($bold(B)$ 的行数).

  + 设 $bold(A)^(\*)$ 为 $n$ 阶矩阵 $bold(A)$ 的伴随矩阵, 则
    $
      r (bold(A)^(\*)) = cases(n\, quad & r (bold(A)) = n, , 1\, & r (bold(A)) = n - 1, , 0\, & r (bold(A)) < n - 1 .)
    $
]

=== 矩阵的等价

#definition()[两个矩阵如果可用初等变换互相转化, 就称它们等价.]

#proposition()[
  矩阵等价的 #hl[充要条件] 是它们类型相同（即行,
  列数对应相等）, 并且秩相等.
]

== 实向量的内积和正交矩阵

下面约定向量的分量和矩阵的元素都要求是实数（称为实向量和实矩阵）

=== 实向量的内积
#definition("实向量的内积")[ 两个 $n$ 维实向量
  $bold(alpha) = (a_1 , a_2 , dots.h.c , a_n)^tack.b , bold(beta) = (b_1 , b_2 , dots.h.c , b_n)^tack.b$
  的内积规定为:
  $ (bold(alpha) , bold(beta)) = a_1 b_1 + a_2 b_2 + dots.h.c + a_n b_n = bold(alpha)^tack.b bold(beta) . $
]

#proposition("内积的性质")[

  + 正定性: $(bold(alpha) , bold(alpha)) gt.eq 0$, 并且
    $(bold(alpha) , bold(alpha)) = 0 arrow.l.r.double bold(alpha) = bold(0)$.

  + 对称性: $(bold(alpha) , bold(beta)) = (bold(beta) , bold(alpha))$.

  + 双线性性质:
    $(bold(alpha)_1 bold(beta)_1 + bold(beta)_2) = (bold(alpha)_1 bold(beta)_1) + (bold(alpha)_2 bold(beta)_2)$;
    $(bold(alpha)_1 + bold(alpha)_2 , bold(beta)) = (bold(alpha)_1 , bold(beta)) + (bold(alpha)_2 , bold(beta))$.

  + $(c bold(alpha) , bold(beta)) = c (bold(alpha) , bold(beta)) = (bold(alpha) , c bold(beta))$.
    ($c$ 为任意实数)
]

#proposition([实向量 $bold(alpha)$ 的长度])[
  $parallel bold(alpha) parallel = sqrt((bold(alpha) , bold(alpha)))$.

  则 $parallel bold(alpha) parallel gt.eq 0$, 并且
  $parallel bold(alpha) parallel = 0 arrow.l.r.double bold(alpha) = bold(0)$.

  显然
  $parallel c bold(alpha) parallel = lr(|c|) parallel bold(alpha) parallel$.
]

#proposition([单位正交向量组])[
  长度为 1 的向量称为单位向量：

  + 如果 $bold(alpha)$ 不是零向量, 则
    $bold(alpha) / (parallel bold(alpha) parallel)$ 是单位向量, 称为
    $bold(alpha)$ 的单位化.

  + 如果 $(bold(alpha) , bold(beta)) = 0$, 则说 $bold(alpha)$ 和
    $bold(beta)$ 正交.

  + 如果向量组 $bold(alpha)_1 , bold(alpha)_2 , dots.h.c , bold(alpha)_n$
    中的每个都是单位向量, 并且两两正交, 则称它们为单位正交向量组.
]

=== 正交矩阵
#definition("正交矩阵")[ $n$ 阶矩阵 $bold(Q)$ 称为正交矩阵, 如果它是实矩阵,
  并且 $bold(Q) bold(Q)^tack.b = bold(E)$ (即
  $bold(Q)^(- 1) = bold(Q)^tack.b$).
]

#proposition()[ $bold(Q)$ 是正交矩阵 $arrow.l.r.double bold(Q)$
  的列向量组是单位正交向量组.
]

=== 施密特正交化

#proposition("施密特正交化")[这是把线性无关向量组改造为单位正交向量组的方法.

  以 3 个线性无关向量 $bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3$
  为例.

  #set enum(numbering: "step 1.")
  + 令
    $bold(beta)_1 = bold(alpha)_1 , bold(beta)_2 = bold(alpha)_2 - (bold(alpha)_2 , bold(beta)_1) / (bold(beta)_1 , bold(beta)_1) bold(beta)_1 , bold(beta)_3 = bold(alpha)_3 - (bold(alpha)_3 , bold(beta)_1) / (bold(beta)_1 , bold(beta)_1) bold(beta)_1 - (bold(alpha)_3 , bold(beta)_2) / (bold(beta)_2 , bold(beta)_2) bold(beta)_2$.

  此时 $bold(beta)_1 , bold(beta)_2 , bold(beta)_3$ 是和
  $bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3$ 等价的正交非零向量组.

  2. 作
    $bold(eta)_1 = bold(beta)_1 \/ parallel bold(beta)_1 parallel , bold(eta)_2 = bold(beta)_2 \/ parallel bold(beta)_2 parallel , bold(eta)_3 = bold(beta)_3 \/ parallel bold(beta)_3 parallel$,
    则 $bold(eta)_1 , bold(eta)_2 , bold(eta)_3$ 是和
    $bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3$ 等价的单位正交向量组.
]

