#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *
#import "./lib.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project

= 特征值与矩阵相似

== 特征值与特征向量
#definition("特征值与特征向量")[ 设 $bold(A)$ 是 $n$ 阶矩阵, 如果 $n$ 维向量
  $bold(eta)$ 不是零向量, 并且 $bold(A) bold(eta)$ 与 $bold(eta)$
  线性相关, 就称为 $bold(A)$ 的特征向量.
  此时, 存在唯一数 $lambda$, 使得
  $ bold(A) bold(eta) = lambda bold(eta) $ 称 $lambda$ 为 $bold(eta)$
  的特征值. (也常常说 $bold(eta)$ 是属于特征值 $lambda$ 的特征向量.)
]

=== 计算特征值和特征向量的一般公式

#proposition()[
  $bold(eta)$ 是 $bold(A)$ 的特征向量, 特征值为
  $lambda arrow.l.r.double bold(eta)$ 是齐次方程组
  $(bold(A) - lambda bold(E)) bold(x) = bold(0)$ 的非零解,
  从而有
  + $lambda$ 是 $bold(A)$ 的特征值
    $arrow.l.r.double lr(|bold(A) - lambda bold(E)|) = 0$;

  + $bold(eta)$ 是属于特征值 $lambda$ 的特征向量
    $arrow.l.r.double bold(eta)$ 是齐次方程组
    $(bold(A) - lambda bold(E)) bold(x) = bold(0)$ 的非零解.

  称 $lr(|lambda bold(E) - bold(A)|)$ 为 $bold(A)$ 的特征值多项式, 则
  $bold(A)$ 的特征值就是它的特征值多项式的根.
]<特征值与特征向量th-1>

#proposition()[
  $
    |lambda bold(E) - bold(A) | = lambda^n + a_(n - 1) lambda^(n - 1) + ... + a_1 lambda + a_0 = f(lambda)
  $
]

#proposition()[
  计算特征值和特征向量的具体步骤为:

  + 计算 $bold(A)$ 的特征多项式.

  + 求出它的根, 即 $bold(A)$ 的特征值.

  然后对每个特征值 $lambda$, 求齐次方程组
  $(bold(A) - lambda bold(E)) bold(x) = bold(0)$ 的非零解, 即属于 $lambda$
  的特征向量.
]

#proposition()[ $n$ 阶矩阵的特征值多项式是一个 $n$ 次多项式,
  一般来说求它的根是困难的, 因此上述计算步骤只能用在少数特殊矩阵上.
  例如对于对角矩阵和三角矩阵, 它们的特征值就是对角线上的元素. $n$
  次多项式有 $n$ 个根, 因此 $n$ 阶矩阵 $bold(A)$ 的特征值共有 $n$ 个
  (其中有的相同, 有的是虚数). 规定特征值 $lambda$ 的重数: 即 $lambda$
  作为特征多项式的根的重数. 于是 $bold(A)$ 的全体不同特征值的重数和等于
  $n$.
]

#proposition()[
  从 @特征值与特征向量th-1 :

  + $bold(A) - lambda bold(E)$ 可逆 $arrow.l.r.double lambda$ 不是
    $bold(A)$ 的特征值.

  + 特别的, $bold(A)$ 可逆 $arrow.l.r.double 0$ 不是 $bold(A)$ 的特征值.
]

#proposition("特征向量与特征值的性质")[

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

  + 若 $r (bA) = 1$，即 $bA = bold(alpha) bold(beta)^T$，其中
    $bold(alpha) , bold(beta)$ 为 $n$ 维非零列向量，则 $bA$ 的特征值为
    $
      lambda_1 = upright("tr") (bA) = bold(alpha)^T bold(beta) = bold(beta)^T bold(alpha) ， lambda_2 = dots.h.c = lambda_n = 0
    $



]

#corollary()[
  如果 $bold(A)$ 的一个多项式 $f (bold(A)) = bold(0)$, 则 $bold(A)$
  的每个特征值 $lambda$ 都满足 $f (lambda) = 0$.

  (于是, 如果 $f (lambda) eq.not 0$, 则 $lambda$ 不是 $bold(A)$ 的特征值,
  即 $bold(A) - lambda bold(E)$ 可逆.)
]

#annotation()[
  请注意 $f (lambda) = 0$ 时不能推出 $lambda$ 是 $bold(A)$ 的特征值.
]

#proposition()[
  设 $bold(A)$ 是 $n$ 阶矩阵, 记 $bold(A)$ 的全体特征值为
  $lambda_1 , lambda_2 , dots.h.c , lambda_n$, 则

  + $lambda_1 , lambda_2 , dots.h.c , lambda_n = lr(|bold(A)|)$.

  + $lambda_1 + lambda_2 + dots.h.c + lambda_n = tr(bold(A))$.

  这里 $upright("tr") (bold(A)) = a_11 + a_222 + dots.h.c + a_(n n)$, 称为
  $bold(A)$ 的迹数.
]

#proposition[ 设 $bold(A)$ 是 $n$ 阶矩阵 $bold(A)$ 的特征值,
  则它的重数 $gt.eq n - r (bold(A) - lambda bold(E))$.
]

#example()[ 如果 $n$ 阶矩阵 $bold(A)$ 的秩
  $r (bold(A)) lt.eq 1 , (n > 1)$, 则 $bold(A)$ 的特征值为
  $0 , 0 , dots.h.c , 0 , upright("tr") (bold(A))$.

  #solution[ 因为 $r (bold(A)) < n$, 所以 $0$ 是 $bold(A)$
    的特征值, 并且根据定理 5.4, 特征值 $0$ 的重数
    $gt.eq n - r (bold(A)) gt.eq n - 1$. 即 $bold(A)$ 的特征值中至少有
    $n - 1$ 个是 $0$. 又根据定理 5.3 的 (2), 另外一个特征值为
    $upright("tr") (bold(A))$.
  ]
  #annotation()[ 这个例的结论很有实用价值, 它给出了除对角,
    三角矩阵外又一类直接可写出特征值的矩阵, 应该记住并且用好.
  ]
]

#example()[
  设 $bold(alpha) , bold(beta)$ 都是 $n$ 维列向量时,
  证明

  + $bold(alpha) bold(beta)^tack.b$ 的特征值为
    $0 , 0 , dots.h.c , 0 , bold(beta)^tack.b bold(alpha)$.

  + 如果 $bold(alpha)$ 不是零向量, 则 $bold(alpha) bold(beta)^tack.b$
    的特征向量, 特征值为 $bold(beta)^tack.b bold(alpha)$.

  #solution()[

    + 方法一 用上例的结论. $r (bold(alpha) bold(beta)^tack.b) lt.eq 1$, 因此
      $bold(alpha) bold(beta)^tack.b$ 的特征值为
      $0 , 0 , dots.h.c , 0 , upright("tr") (bold(alpha) bold(beta)^tack.b)$.
      设
      $bold(alpha) = (a_1 , a_2 , dots.h.c , a_n)^tack.b , bold(beta) = (b_1 , b_2 , dots.h.c , b_n)^tack.b$,
      则 $bold(alpha) bold(beta)^tack.b$ 的对角线元素为
      $a_1 b_1 , a_2 b_2 , dots.h.c , a_n b_n$, 于是
      $upright("tr") (bold(alpha) bold(beta)^tack.b) = a_1 b_1 + a_2 b_2 + dots.h.c + a_n b_n = dots.h.c$.

    + 方法二 记 $bold(A) = bold(alpha) bold(beta)^tack.b$, 则
      $bold(A)^tack.b = bold(alpha) bold(beta)^tack.b = (bold(beta)^tack.b bold(alpha)) bold(A)$,
      于是根据定理 5.2 的推论, $bold(A)$ 的特征值都满足等式
      $lambda^2 = (bold(beta)^tack.b bold(alpha)) lambda$, 即只可能是 $0$ 和
      $bold(beta)^tack.b bold(alpha)$.

    如果 $bold(beta)^tack.b bold(alpha) = 0$, 则 $bold(A)$ 的特征值都是 $0$.

    如果 $bold(beta)^tack.b bold(alpha) eq.not 0$, 则根据定理 5.3 的 (2),
    $bold(A)$ 的所有特征值之和为
    $upright("tr") (bold(A)) = bold(beta)^tack.b bold(alpha)$, 它们一定是
    $n - 1$ 个为 $0$, 一个为 $bold(beta)^tack.b bold(alpha)$.
  ]
]

#proposition()[
  如果 $bold(A)$ 的全体特征值为
  $lambda_1 , lambda_2 , dots.h.c , lambda_n$, 则

  + $f (bold(A))$ 的特征值是
    $f (lambda_1) , f (lambda_2) , dots.h.c , f (lambda_n)$. (特别地
    $bold(A) + c bold(E)$ 的特征值是
    $lambda_1 + c , lambda_2 + c , dots.h.c , lambda_n + c$.)

  + 如果 $bold(A)$ 可逆, 则 $lambda eq.not 0$, 并且 $bold(eta)$ 也是
    $bold(A)^(- 1)$ 和 $bold(A)^(\*)$ 的特征向量, 特征值分别为
    $1 \/ lambda_1 , 1 \/ lambda_2 , dots.h.c , 1 \/ lambda_n$. ($bold(A)$
    可逆时, $bold(A) , bold(A)^(- 1)$ 和 $bold(A)^(\*)$
    的特征向量完全一样.)
]

#proposition()[ $bold(A)$ 的一组特征向量
  $bold(eta)_1 , bold(eta)_2 , dots.h.c , bold(eta)_n$, 线性无关
  $arrow.l.r.double$ $bold(eta)_1 , bold(eta)_2 , dots.h.c , bold(eta)_n$
  的每个属于同一特征值的部分组都线性无关.
]

#corollary()[ 如果 $bold(A)$ 的一组特征向量
  $bold(eta)_1 , bold(eta)_2 , dots.h.c , bold(eta)_n$ 的特征值两两两不同,
  则 $bold(eta)_1 , bold(eta)_2 , dots.h.c , bold(eta)_n$ 线性无关.

  例如一个矩阵的特征值不同的两个特征向量一定线性无关.
]

== 矩阵相似
#definition()[ 设 $bold(A) , bold(B)$ 是两个 $n$ 阶矩阵, 如果存在
  $n$ 阶可逆矩阵 $bold(P)$, 使得
  $bold(P)^(- 1) bold(A) bold(P) = bold(B)$, 则称 $bold(A)$ 与 $bold(B)$
  相似, 记作 $bold(A) tilde.op bold(B)$.

  矩阵的相似关系有对称性和传递性, 即
  $bold(A) tilde.op bold(B) arrow.l.r.double bold(B) tilde.op bold(A)$;
  如果 $bold(A) tilde.op bold(B) , bold(B) tilde.op bold(C)$, 则
  $bold(A) tilde.op bold(C)$.

  当 $bold(P)$ 和 $bold(A)$ 乘积不可交换时,
  $bold(P)^(- 1) bold(A) bold(P)$ 不等于 $bold(A)$. 但是如果 $bold(A)$
  是数量矩阵, 则任何 $bold(P)$ 和 $bold(A)$ 乘积可交换, 从而
  $bold(P)^(- 1) bold(A) bold(P) = bold(A)$, 即数量矩阵只和自己相似.
]

#proposition()[
  当 $bold(A) tilde.op bold(B)$ 时, 并且
  $bold(P)^(- 1) bold(A) bold(P) = bold(B)$, 则

  + $f (bold(A)) tilde.op f (bold(B))$, 并且
    $bold(P)^(- 1) f (bold(A)) bold(P) = f (bold(B))$

  + $bold(A)$ 可逆时 $bold(A)^(- 1) tilde.op bold(B)^(- 1)$, 并且
    $bold(P)^(- 1) bold(A)^(- 1) bold(P) = bold(B)^(- 1) , bold(P)^(- 1) bold(A)^(\*) bold(P) = bold(B)^(\*)$.
]

#proposition()[如果 $bold(A) tilde.op bold(B)$ 时, 并且
  $bold(P)^(- 1) bold(A) bold(P) = bold(B)$, 则

  + $lr(|bold(A)|) = lr(|bold(B)|)$.

  + $r (bold(A)) = r (bold(B))$.

  + $bold(A) , bold(B)$ 有相同的特征多项式, 从而特征值完全相同. 于是
    $upright("tr") (bold(A)) = upright("tr") (bold(B))$.

  + $bold(eta)$ 是 $bold(A)$ 的特征向量
    $arrow.l.r.double bold(P)^(- 1) bold(eta)$ 是 $bold(B)$ 的特征向量.
]

#proposition()[ 如果两个 $n$ 阶矩阵 $bold(A) , bold(B)$
  中有一个可逆, 则 $bold(A B)$ 和 $bold(B A)$ 相似.

  #proof[不妨设 $bold(A)$ 可逆, 则
    $bold(A)^(- 1) (bold(A B)) bold(A) = bold(B A)$, 因此 $bold(A B)$ 和
    $bold(B A)$ 相似.
  ]

  #annotation()[ 一般地, 没有"有一个可逆"的条件, 也有 $bold(A B)$ 和
    $bold(B A)$ 的特征值一样的结论, 但是它们不一定相似.
  ]
]

== 相似对角化

#definition()[
  如果一个 $n$ 阶矩阵 $bold(A)$
  相似于一个对角矩阵，就说它可以相似对角化。（简称为可对角化）
  并不是每个矩阵都可以对角化的，于是产生两个问题：

  + 判断一个 $n$ 阶矩阵 $bold(A)$ 是否可对角化。（判断问题）

  + 如果可以，怎么构造可逆矩阵 $bold(P)$，使得
    $bold(P)^(- 1) bold(A) bold(P)$ 是对角矩阵？（实现方法）
]

#proposition()[
  设 $bold(A)$ 是 $n$
  阶矩阵，$bold(P) = (bold(eta)_1 , bold(eta)_2 , dots.h.c , bold(eta)_n)$
  是可逆矩阵，则 $ bold(P)^(- 1) bold(A) bold(P) $
  是对角矩阵，并且对角线上的元素为
  $lambda_1 , lambda_2 , dots.h.c , lambda_n$。
  $
    arrow.l.r.double quad bold(A) bold(eta)_1 = lambda_1 bold(eta)_1 , bold(A) bold(eta)_2 = lambda_2 bold(eta)_2 , dots.h.c , bold(A) bold(eta)_n = lambda_n bold(eta)_n .
  $
  于是得到

  + $n$ 阶矩阵 $bold(A)$ 可对角化 $arrow.l.r.double bold(A)$ 有 $n$ 个线性无关的特征向量。

  + $bold(A)$ 可对角化 $arrow.l.r.double$ 对于 $bold(A)$ 的每个特征值 $lambda_i$，其重数 $k_i = n - upright("r") (bold(A) - lambda_i bold(E))$。
]

#annotation()[ 当 $k_i = 1$
  时，$k_i = n - upright("r") (bold(A) - lambda_i bold(E))$
  一定成立，因此用判别法则2时，只需对重数大于1的那些特征值进行，在考研真题中，$n$
  常常是 3，重数大于 1 的特征值不会多于 1 个。
]

#corollary()[
  如果 $bold(A)$ 的特征值两两不相同，则 $bold(A)$ 可以对角化。
]

#proposition()[ 对 $bold(A)$ 的每个特征值 $lambda_i$，求
  $(bold(A) - lambda_i bold(E)) bold(x) = 0$ 的基础解系，合在一起，就是 $bold(A)$ 的 $n$ 个线性无关的特征向量 $bold(eta)_1 , bold(eta)_2 , dots.h.c , bold(eta)_n$
  以它们为列向量构造矩阵  $bold(P) = (bold(eta)_1 , bold(eta)_2 , dots.h.c , bold(eta)_n)$，则 $bold(P)^(- 1) bold(A) bold(P)$ 是对角矩阵，对角线上的元素依次是 $bold(eta)_1 , bold(eta)_2 , dots.h.c , bold(eta)_n$，的特征值。
]

== 实对称矩阵的相似对角化

#proposition()[如果 $bold(A)$ 是 $n$ 阶实对称矩阵，则：
  + $bold(A)$ 的特征值都是实数。

  + 对 $bold(A)$ 的每个特征值 $lambda$，其重数
    $= n - upright("r") (bold(A) - lambda bold(E))$。

  + $bold(A)$ 的属于不同特征值的特征向量互相正交。
]

#proposition()[
  如果 $bold(A)$ 是 $n$ 阶实对称矩阵，则

  + $bold(A)$ 相似于实对角矩阵。

  + 存在正交矩阵 $bold(Q)$，使得 $bold(Q)^(- 1) bold(A) bold(Q)$
    是对角矩阵。

  #set enum(numbering: "i")
  构造正交矩阵 $bold(Q)$ 的步骤：
  + 求出 $bold(A)$ 的特征值；

  + 对每个特征 $lambda$，求 $(bold(A) - lambda bold(E)) bold(x) = 0$
    的单位正交基解系，合在一起得到 $bold(A)$ 的 $n$ 个单位正交的特征向量；

  + 用它们为列向量构造正交矩阵 $bold(Q)$。
]


// #pagebreak()






