#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project.with(language: "ch")

= 二重积分
== 二重积分的定义与性质

#definition()[设函数 $z = f (x , y)$ 在有界闭区域 $D$ 上有界，将 $D$
  任意分成 $n$ 个小闭区域 $ Delta sigma_1 , Delta sigma_2 , dots.h.c , Delta sigma_n , $ 其中 $Delta sigma_i$ 表示第 $i$ 个小区域，也表示它的面积。在每个 $Delta sigma_i$ 上任取一点 $(xi , eta_i)$，作乘积 $f (xi , eta_i) Delta sigma_i$，并求和 $sum_(i = 1)^n f (xi , eta_i) Delta sigma_i$，记 $lambda$ 为 $n$ 个小区域 $Delta sigma_1 , Delta sigma_2 , dots.h.c , Delta sigma_n$ 中的最大直径，如果 $lim_(lambda arrow.r 0) sum_(i = 1)^n f (xi , eta_i) Delta sigma_i$ 存在，则称此极限值为函数 $f (x , y)$ 在区域 $D$ 上的二重积分，记为
  $ integral.double_D f (x , y) dif sigma = lim_(lambda arrow.r 0) sum_(i = 1)^n f (xi , eta_i) Delta sigma_i . $
]

#proposition("二重积分的几何意义")[
  二重积分 $integral.double_D f (x , y) thin dif sigma$ 是一个数。当
  $f (x , y) gt.eq 0$ 时，其值等于以积分域 $D$ 为底，以曲面
  $z = f (x , y)$ 为曲顶的曲顶柱体的体积。

]

#proposition("二重积分的中值定理")[
  设函数 $f (x , y)$ 在闭区域 $D$
  上连续，$sigma$ 是 $D$ 的面积，则在 $D$ 上至少存在一点
  $(xi , eta)$，使得
  $ integral.double_D f (x , y) thin dif sigma = f (xi , eta) sigma . $
]

== 二重积分的计算

#proposition("二重积分到累次积分的转化")[

  $
    integral.double_D f(x, y) dif sigma = integral_a^b dif x integral_(phi_1(x))^(phi_2(x)) f(x, y) dif y = integral_a^b [integral_(phi_1(x))^(phi_2(x)) f(x, y) dif y] dif x
  $

  令 $Phi(x) = integral_(phi_1(x))^(phi_2(x)) f(x, y) dif y$ 则二重积分也等同于对被积函数为 $Phi(x)$ 的单重积分：
  $
    integral_a^b Phi(x) dif x .
  $

]

== 二重积分的对称性
#proposition("利用对称性计算的一般结论")[
  + 若区域 $D$ 关于直线 $x = c$ 对称，且
    $f (x , y) = - f (2 c - x , y)$，则
    $integral.double_D f (x , y) dif x dif y = 0$。

  + 若区域 $D$ 关于直线 $y = c$ 对称，且
    $f (x , y) = - f (x , 2 c - y)$，则
    $integral.double_D f (x , y) dif x dif y = 0$。

  + 若区域 $D$ 关于直线 $y = x$ 对称，则
    $integral.double_D f (x , y) dif x dif y = integral.double_D f (y , x) dif x dif y$。
]

#annotation()[
  在讨论对称性时，可以将对称的积分区域分成两个独立的区域，然后做变量代换将两个不同的区域转换成同一区域，再对变量代换后的被积函数进行加和即可。
]

#definition("轮换对称性")[
  在 $x O y$ 直角坐标轴上给定某个区域
  $D_(x y)$。若交换 $x$ 轴和 $y$ 轴，原区域 $D_(x y)$ 现记为
  $D_(y x)$，同时交换被积函数的自变量，则积分结果不变，即
  $ integral.double_(D_(x y)) f (x , y) d x d y = integral.double_(D_(y x)) f (y , x) d x d y . $
  若 $D_(x y) = D_(y x)$，则称区域 $D_(x y)$
  具有 #hilight[轮换对称性]，那么此时仅交换被积函数的自变量，积分结果不变，即
  $
    integral.double_(D_(x y)) f (x , y) d x d y = integral.double_(D_(x y)) f (y , x) d x d y = 1/2 integral.double_(D_(x y)) f (y , x) + f(x, y) thin dif x dif y.
  $
]

#proposition("平面区域轮换对称性判定")[
  若区域 $D_(x y)$ 关于
  $y = x$ 对称，那么区域 $D_(x y)$ 具有轮换对称性。

  #proof[考虑 $D_(x y)$ 中任意一点 $(x_0 , y_0)$，下面来求它关于 $y = x$
    的对称点。过 $(x_0 , y_0)$ 垂直于 $y = x$ 的直线方程 $l$ 为
    $ y - y_0 = - (x - x_0) , $ $l$ 和 $y = x$ 的交点为

    $
      cases(
        y = x,
        y - y_0 = - (x - x_0)
      )
      =>
      cases(
        x_1 = frac(x_0 + y_0, 2),
        y_1 = frac(x_0 + y_0, 2)
      )
    $
    因此 $(x_0 , y_0)$ 对称点为

    $
      cases(
        x_2 = frac(x_0 + y_0, 2) - (x_0 - frac(x_0 + y_0, 2)) = y_0,
        y_2 = frac(x_0 + y_0, 2) - (y_0 - frac(x_0 + y_0, 2)) = x_0
      )
    $
    因此
    $(x_0 , y_0)$ 和 $(y_0 , x_0)$ 在区域 $D_(x y)$ 里面，所以 $D_(x y)$
    具有轮换对称性。
  ]
]
