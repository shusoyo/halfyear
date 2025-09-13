#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *
#import "./lib.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project

= 二次型

== 二次型与二次型矩阵

#definition()[ $n$ 元的二次型是 $n$ 个变量
  $x_1 , x_2 , dots.h.c , x_n$ 的齐次多项式函数，一般形式为
  $
    f (x_1 , x_2 , dots.h.c , x_n) = a_11 x_1^2 + 2 a_12 x_1 x_2 + 2 a_13 x_1 x_3 + dots.h.c + 2 a_(1 n) x_1 x_n + & \
                                                      a_22 x_2^2 + 2 a_23 x_2 x_3 + dots.h.c + 2 a_(2 n) x_2 x_n + & \
                                                                                                          dots.h.c & \
                                                                                                   + a_(n n) x_n^2 & \
                                              = sum_(i = 1)^n a_(i i) x_i^2 + 2 sum_(i eq.not j) a_(i j) x_i x_j .
  $
  称其中含 $x_i^2$ 的项为平方项，称含 $x_i x_j (i eq.not j)$
  的项为交叉项。它可以矩阵乘积的形式写出：构造对称矩阵
  $
    bold(A) = mat(delim: "[", a_11, a_12, dots.h.c, a_(1 n); a_12, a_22, dots.h.c, a_(2 n); dots.v, dots.v, dots.down, dots.v; a_(1 n), a_(2 n), dots.h.c, a_(n n))
  $
  记 $bold(x) = (x_1 , x_2 , dots.h.c , x_n)^tsp$，则
  $ f (x_1 , x_2 , dots.h.c , x_n) = bold(x)^tsp bold(A) bold(x) . $ 称
  $bold(A)$ 为 $f (x_1 , x_2 , dots.h.c , x_n)$ 的矩阵，称 $bold(A)$
  的秩为 $f (x_1 , x_2 , dots.h.c , x_n)$ 的秩。

  #ps[二次型的矩阵是对称矩阵，它和二次型是互相决定的。]
]

#proposition([实二次型])[ 如果二次型的系数都是实数，并且变量
  $x_1 , x_2 , dots.h.c , x_n$ 的变化范围也限定为实数，则称为实二次型。
]

#proposition([标准二次型])[
  交叉项的系数都为0的二次型，也就是矩阵为对角矩阵的二次型。
]

#proposition([规范二次型])[ 形如
  $x_1^2 + dots.h.c + x_p^2 - x_(p + 1)^2 - dots.h.c - x_(p + q)^2$
  的二次型，它的矩阵是规范对角矩阵：
  $ mat(delim: "[", bold(E)_p, 0, 0; 0, - bold(E)_q, 0; 0, 0, 0) . $
  它由阶数 $n$ 和 $p , q$ 决定 ($p , q$ 的意义就是正负惯性指数)。
]

== 可逆线性变量替换和矩阵的合同关系
#definition()[ 对二次型 $f (x_1 , x_2 , dots.h.c , x_n)$
  引进新变量 $y_1 , y_2 , dots.h.c , y_n$，并且把
  $x_1 , x_2 , dots.h.c , x_n$ 表示为它们的齐一次线性函数
  $ cases(
    x_1 = c_11 y_1 + c_12 y_2 + dots.h.c + c_(1 n) y_n,
    x_2 = c_21 y_1 + c_22 y_2 + dots.h.c + c_(2 n) y_n,
    quad dots.v,
    x_n = c_(n 1) y_1 + c_(n 2) y_2 + dots.h.c + c_(n n) y_n
  ) $ 代入
  $f (x_1 , x_2 , dots.h.c , x_n)$ 得到 $y_1 , y_2 , dots.h.c , y_n$
  的二次型 $g (y_1 , y_2 , dots.h.c , y_n)$。把上述过程称为对二次型
  $f (x_1 , x_2 , dots.h.c , x_n)$ 作了线性变量替换，如果其中的系数矩阵
  $
    bold(C) = mat(delim: "[", c_11, c_12, dots.h.c, c_(1 n); c_21, c_22, dots.h.c, c_(2 n); dots.v, dots.v, dots.down, dots.v; c_(n 1), c_(n 2), dots.h.c, c_(n n))
  $
  是可逆矩阵，则称为可逆线性变量替换。下面讲的都是可逆线性变量替换。变换式可用矩阵乘积写出：
  $ bold(x) = bold(C) bold(y) . $ 设 $f (x_1 , x_2 , dots.h.c , x_n)$
  的矩阵为 $bold(A)$，则
  $
    g (y_1 , y_2 , dots.h.c , y_n) = f (x_1 , x_2 , dots.h.c , x_n) = bold(y)^tsp bold(C)^tsp bold(A) bold(C) bold(y) .
  $
  于是 $g (y_1 , y_2 , dots.h.c , y_n)$ 的矩阵为
  $bold(C)^tsp bold(A) bold(C)$。

]

#proposition("矩阵合同")[ 两个 $n$ 阶实对称矩阵 $bold(A)$ 和
  $bold(B)$，如果存在可逆实矩阵 $bold(C)$，使得
  $bold(B) = bold(C)^tsp bold(A) bold(C)$，则称 $bold(A)$ 和 $bold(B)$
  合同。
]

#proposition()[
  两个二次型可以用可逆线性变量替换互相转化的充分必要条件为它们的矩阵合同。
]

== 二次型的标准化

#definition()[
  二次型的标准化（规范化）就是用可逆线性变量替换把一个给定的二次型化为的标准（规范）二次型。
]

#proposition()[二次型的标准化（规范化）从代数的方面说，就是将所对应的实对称矩阵
  $bold(A)$ 合同的变为对角矩阵，即构造可逆实矩阵 $bold(C)$，使得
  $bold(C)^tsp bold(A) bold(C)$ 是对角矩阵（规范对角矩阵）。

  任何二次型都可标准化和规范化的，即任何实对称矩阵都合同于对角矩阵（规范对角矩阵）。

  比如作正交矩阵 $bold(Q)$，使得 $bold(Q)^tsp bold(A) bold(Q)$
  是对角矩阵。由于
  $bold(Q)^(- 1) = bold(Q)^tsp , bold(Q)^tsp bold(A) bold(Q) = bold(Q)^(- 1) bold(A) bold(Q)$。$bold(A)$
  和 $bold(Q)^(- 1) bold(A) bold(Q)$ 既相似又合同。

  于是不同于相似对角化，二次型的标准化没有判断能不能的问题，只有方法问题。
]

#proposition("正交变换法")[ 对二次型的矩阵 $bold(A)$，作正交矩阵 $bold(Q)$，使得
  $bold(Q)^tsp bold(A) bold(Q)$ 是对角矩阵，于是可逆线性变量替换
  $bold(x) = bold(Q) bold(y)$，把原二次型化为标准二次型。

  以上变换中变换矩阵 $bold(Q)$ 是正交矩阵，所以称为正交变换。

  请注意，由于 $bold(A) = bold(Q)^(- 1) bold(A) bold(Q)$ 和 $bold(A)$
  相似，其对角线上的元素是 $bold(A)$
  特征值，因此一般地它只是对角矩阵，不是规范对角矩阵。于是正交变换法只是将二次型标准化，而不是规范化。
]

#proposition("配方法")[
  本质上这不是代数方法，而是初等数学方法。
]


== 惯性定理和惯性指数实对称矩阵合同的判断
#proposition("惯性定理")[一个二次型 $f$
  所化得的标准二次型虽然不唯一，但是它们的平方项的系数中，正的个数和负的个数是由
  $f$ 确定的。一个二次型所化得的规范二次型在形式上是唯一的，称为其规范形。
]

#definition("惯性指数")[ 把二次型 $f$
  所化得的标准二次型的平方项的系数中，正的个数 $p$ 和负的个数 $q$ 分别称为 $f$ 的正惯性指数和负惯性指数。

  #proposition()[
    $ r(f) = p + q $

    用矩阵的语言来表述：与一个给定的实对称矩阵 $bold(A)$
    合同的对角矩阵的对角线元素中，正的个数和负的个数是由 $bold(A)$
    确定的，把这两个数分别称为 $bold(A)$ 的正惯性指数和负惯性指数。合同于
    $bold(A)$ 的规范对角矩阵是唯一的，其中的自然数 $p , q$ 就是 $bold(A)$
    的正，负惯性指数。
  ]
]

#proposition()[
  两个二次型可以用可逆线性变量替换互相转化的充分必要条件为它们的正，负惯性指数都相等。（即两个实对称矩阵合同的充分必要条件为它们的正，负惯性指数都相等。）
]

#proposition()[ 实对称矩阵 $bold(A)$
  的正（负）惯性指数就是它的正（负）特征值的个数。
]

#corollary()[两个实对称矩阵合同的充分必要条件是它们的正（负）特征值的个数都相等。]

== 正定二次型和正定矩阵
#definition()[
  如果当 $x_1 , x_2 , dots.h.c , x_n$ 不全为 0
  时，一定有 $f (x_1 , x_2 , dots.h.c , x_n) > 0$，则称二次型
  $f (x_1 , x_2 , dots.h.c , x_n)$ #hl[为正定二次型]。 例如标准二次型正定的充分必要条件是平方项的系数都大于 0。

  如果实对称矩阵 $bold(A)$ 所决定的二次型正定，则称 $bold(A)$ 为 #hl[正定矩阵]。$bold(A)$ 为正定矩阵也就是满足性质：当 $n$ 维列向量 $bold(eta) eq.not bold(0)$ 时，一定有 $bold(eta)^tsp bold(A) bold(eta) > 0$。

  实对称矩阵正定的充分必要条件是对角线上的元素都大于 0。
]

#proposition("合同变换保持正定性")[
  和正定矩阵合同的实对称矩阵也正定。
]

#proposition()[
  + 实对称矩阵 $bold(A)$ 正定 $arrow.l.r.double bold(A)$ 的正惯性指数等于其阶数 $n$。

  + 实对称矩阵 $bold(A)$ 正定 $arrow.l.r.double bold(A)$ 的特征值都是正数。

  + 实对称矩阵 $bold(A)$ 正定 $arrow.l.r.double bold(A)$ 合同于单位矩阵。

  + 实对称矩阵 $bold(A)$ 正定 $arrow.l.r.double$ 存在可逆矩阵 $bold(C)$，使得 $bold(A) = bold(C)^tsp bold(C)$。
]

#proposition("顺序主子式")[
  把实对称矩阵 $bold(A)$ 左上角的 $r$ 阶子矩阵行列式称为 $bold(A)$ 的 $r$ 阶顺序主子式。
  $n$ 阶实对称矩阵 $bold(A)$ 有 $n$ 个顺序主子式，其中 $1$ 阶的为 $a_(1 1)$，$n$ 阶的为 $|bold(A)|$.
]

#proposition()[实对称矩阵 $bold(A)$ 正定
  $arrow.l.r.double bold(A)$ 的所有顺序主子式全大于 $0$。
]

#annotation()[
  + 判断实对称矩阵正定性的常用思路：用顺序主子式，用特征值，用定义。
  + 判断二次型正定除了转化为对它的矩阵进行外，还可用惯性指数（可用配方法求得）。
]
