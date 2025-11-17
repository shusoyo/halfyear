#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project.with(language: "ch")

= 常微分方程

== 一阶微分方程
#definition("一阶微分方程")[
  形如 $ y' = f (x , y) $ 的微分方程，称为一阶微分方程. 也可以写作
  $ frac(dif y, dif x) = f (x , y) . $
]

#definition("可分离变量的微分方程")[
  若一阶方程可以写作 $ g (y) dif y = f (x) dif x , $
  则原方程称为可分离变量的微分方程.
  若 $g (y) , f (x)$，此时两边同时积分，原方程的解与 $G (Y) = F (x) + C$ 同解，这个方程对应的隐函数就是原方程的解.
]

#annotation()[
  为什么上述等式两边不同的微分变量却可以同时微分？
  其中假定了 $g (y)$ 和 $f (x)$ 是连续的，设 $y = phi (x)$ 是方程的一个解，那么
  $ g (phi (x)) phi' (x) dif x = f (x) dif x arrow.r.double integral g (y) dif y = integral f (x) dif x . $
]

#definition("齐次微分方程")[
  形如 $ frac(dif y, dif x) = phi (y / x) $ 的微分方程，称为齐次微分方程.
  此时令 $u = y / x$，则 $y' = u + x u'$，从而原方程化为
  $ x u' = phi (u) - u arrow.r.double frac(dif u, phi (u) - u) = x dif x $
  此方程为可分离变量的方程.
]

#annotation()[
  #hl[可分离变量的方程中出现无理数的因子，切不可直接去绝对值.]
]

#definition("一阶线性微分方程")[
  形如 $ y' + P (x) y = Q (x) $ 的微分方程，称为一阶线性微分方程. 其通解为
  $ y = C e^(- integral P (x) dif x) + e^(- integral P (x) dif x) integral Q (x) e^(integral P (x) dif x) dif x . $
  其中 $C e^(- integral P (x) dif x)$ 是齐次线性方程 $y' + P (x) y = 0$ 的通解，而 $e^(- integral P (x) dif x) integral Q (x) e^(integral P (x) dif x)$ 是 $y' + P (x) y = Q (x)$ 的一个特解.

  #annotation("一阶线性方程通项绝对值是否去掉")[
    若 $- integral P (x) dif x = lr(|g (x , y)|)$，这里能否去掉绝对值取决于 $P (x)$ 中的常数系数 $a$.
    若 $a$ 是无理数，或者 $a$ 是 $plus.minus 1 / 2 , plus.minus 1 / 4 , dots.h.c$ 等偶分母分数时，积分结果出现了 $ln$ 时，绝对值不可省去.
  ]

  #annotation()[
    由于 $integral P (x) dif x$ 与
    $integral Q (x) e^(integral P (x) dif x) dif x$
    均应理解为某一不含任意常数的原函数，故公式法亦可写成
    $
      y = C e^(- integral_(x_0)^x P (t) dif t) + e^(- integral_(x_0)^x P (t) dif t) integral_(x_0)^x Q (t) e^(integral_(x_0)^t P (s) dif s) dif t ,
    $
    这里的 $x_0$ 在题设未提出定值要求时，可按方便解题的原则来取。此写法在研究解的性质时颇为有用。#hl()[除此之外，此写法在无法完全求出微分方程时，例如当只能写出公式中所给形式时，] #hl[对此时 $y$ 的计算也很有用。]
  ]
]



#definition("伯努利方程")[
  形如 $ y' + P (x) y = Q (x) y^n $ 的微分方程，称为伯努利微分方程.
  将方程两端除以 $y^n$，有
  $ y^(- n) frac(dif y, dif x) + P (x) y^(1 - n) = Q (x) . $
  此时令 $u = y^(1 - n)$，那么 $dif u = (1 - n) y' y^(- n) dif x$，于是有
  $ frac(dif u, dif x) + (1 - n) P (x) u = (1 - n) Q (x) . $
  从而化为一阶线性方程.

]

#definition("全微分方程")[
  如果方程 $ P (x , y) dif x + Q (x , y) dif y = 0 $
  的左端是某个函数 $u (x , y)$ 的全微分
  $ dif u (x , y) = P (x , y) dif x + Q (x , y) dif y , $ 则称该方程为.
  此方程的通解为 $ u (x , y) = C . $
]

#proposition("一般情况下常微分方程是否加绝对值")[
  例如方程 $frac(dif y, dif x) = y / x$, 我们有
  $ integral frac(dif y, y) = integral frac(dif x, x) arrow.r.double ln lr(|y|) = ln lr(|x|) + C_1 . $
  我们可以来分情况讨论 $x$ 和 $y$ 的取值，即

  + 当 $x > 0 , y > 0$ 时，我们有
    $ ln y = ln x + C_1 arrow.r.double y = C_2 x . $

  + 当 $x < 0 , y > 0$ 时，我们有
    $ ln y = ln - x + C_1 arrow.r.double y = C_3 x . $

  + 当 $x > 0 , y < 0$ 时，我们有
    $ ln - y = ln x + C_1 arrow.r.double y = C_4 x . $

  + 当 $x < 0 , y < 0$ 时，我们有
    $ ln - y = ln - 1 x + C_1 arrow.r.double y = C_5 x . $

  + 当 $y = 0$ 时，我们有 $ y = 0 arrow.r.double y = 0 dot.op x . $

  因此所有情况的解函数都可以写成 $y = C x$，相当于这个常数 $C$ 把绝对值抵消掉了.

  例如 $2 frac(dif y, dif x) = y / x$，其可以化为 $ y^2 = C lr(|X|) , $
  当 $x > 0 , y > 0$ 时，有 $y = C_1 sqrt(X)$;
  当 $x < 0 , y > 0$ 时，有 $y = C_1 sqrt(- X)$.
  显然两者的区别并不是一个常数因子.

]

== 可降阶的高阶微分方程

#proposition([$y^((n)) = f (x , y)$ 型])[
  形如 $ y^((n)) = f (x , y) $
  的微分方程，将 $y^((n - 1))$ 作为未知函数，就化为了一阶微分方程.
  此时只需要两边同时 $n$ 次积分，即可得带有 $n$ 个任意常数的通解.
]

#proposition([$y'' = f (x , y ')$ 型])[
  形如 $ y'' = f (x , y ') $ 的微分方程. 此时令 $p = y'$，则有
  $ p' = f (x , p) , $ 就化为了一个一阶微分方程.
]

#proposition([$y'' = f (y , y ')$ 型])[
  形如 $ y'' = f (y , y ') $ 的微分方程，此时令 $p = y'$ ，那么
  $ y'' = frac(dif (y '), dif x) = frac(dif p, dif y) dot.op frac(dif y, dif x) = p frac(dif p, dif y) . $
  于是则有 $ p frac(dif p, dif y) = f (y , p) , $
  这是一个关于 $y , p$ 的一阶微方程.
]


== 高阶线性方程解的结构

#proposition("二阶线性微分方程的齐次与非齐次")[
  二阶线性微分方程的一般形式为 $ y'' + P (x) y' + Q (x) y = f(x) $ 当 $f(x) equiv 0$ 时，为 #hl[二阶齐次线性微分方程]，否则为 #hl[二阶非齐次线性微分方程] .
]

#proposition()[
  若函数 $y_1 (x)$ 与 $y_2 (x)$ 是 #hl[二阶齐次线性微分方程]  的两个解，那么
  $ y = C_1 y_1 (x) + C_2 y_2 (x) $
  也是方程的解，其中 $C_1 , C_2$ 是任意常数.

]
#definition("线性相关与线性无关")[
  设 $y_1 (x) , y_2 (x) , dots.h.c , y_n (x)$ 为定义在区间 $I$ 上的 $n$ 个函数，如果存在 $n$ 个不全为零的常数 $k_1 , k_2 , dots.h.c , k_n$，使得当 $x in I$ 时恒有
  $ k_1 y_1 + k_2 y_2 + dots.h.c + k_n y_n equiv 0 $
  成立，那么称这 $n$ 个函数在区间 $I$ 上线性相关; 否则线性无关.
]

#proposition("如何判定两个函数是不是线性的")[
  两个函数之比不为常数则它们是线性无关的.

]
#proposition()[
  如果 $y_1 (x)$ 与 $y_2 (x)$ 是 #hl[二阶齐次线性微分方程] 的两个 #hl[线性无关] 的特解，那么
  $ y = C_1 y_1 (x) + C_2 y_2 (x) $ 就是方程的通解.

]
#proposition("齐次线性方程的通解")[
  如果 $y_1 (x) , y_2 (x) , dots.h.c , y_n (x)$ 是 $n$ 阶齐次线性方程
  $ y^((n)) + a_1 (x) y^((n - 1)) + dots.h.c + a_(n - 1) y' + a_n (x) y = 0 $
  的 $n$ 个线性无关的解，那么，此方程的通解为
  $ y = C_1 y_1 (x) + C_2 y_2 (x) + dots.h.c + C_n y_n (x) , $
  其中 $C_1 , C_2 , dots.h.c , C_n$ 为任意常数.

]
#proposition("非齐次线性方程的通解")[
  设 $y^(\*) (x)$ 是 #hl[二阶非齐次线性方程组] 的一个特解.
  $Y (x)$ 是其导出二阶齐次线性方程组的通解，则 $ y = Y (x) + y^(\*) (x) $
  是二阶非齐次线性微分方程的通解.

]
#proposition("叠加原理")[
  设非齐次线性方程的右端 $f (x)$ 是两个函数之和，即
  $ y'' + P (x) y' + Q (x) y = f_1 (x) + f_2 (x) , $
  而 $y_1^(\*) (x)$ 与 $y_2^(\*) (x)$ 分别是方程
  $ y'' + P (x) y' + Q (x) y = f_1 (x) $ 与
  $ y'' + P (x) y' + Q (x) y = f_2 (x) $
  的特解，则 $y_1^(\*) (x) + y_2^(\*) (x)$ 就是原方程的特解.

]

#definition("二阶常系数齐次线性微分方程")[
  在二阶齐次线性微分方程 $ y'' + P (x) y' + Q (x) y = 0 $
  中，如果 $y' , y$ 的系数 $P (x) , Q (x)$ 均为常数，即
  $ y'' + p y' + q y = 0 , $ 其中 $p , q$ 均为常数，那么称为二阶常系数齐次线性微分方程.
  如果 $p , q$ 不全为常数，称为二阶变系数齐次线性微分方程.
]

#definition("特征方程")[
  设 $y = e^(r x)$，其中 $r$ 为常数. 将 $y$ 带入二阶常系数齐次微分方程
  $ (r^2 + p r + q) e^(r x) = 0 . $
  若 $r$ 满足方程 $r^2 + p r + q$，则 $e^(r x)$ 就是微分方程的解，我们称方程 $r^2 + p r + q$ 叫做原微分方程的特征方程.
]

#proposition("特征方程的解与原微分方程通解的关系")[
  如下
  + 若 $r_1 eq.not r_2$，则通解为 $y = C_1 e^(r_1 x) + C_2 e^(r_2 x)$.

  + 若 $r_1 = r_2$，则通解为 $y = (C_1 + C_2 x) e^(r_1 x)$.

  + 若 $r_1 = alpha + beta i , r_2 = alpha - beta i$，则通解为 $y = e^(alpha x) (C_1 cos beta x + C_2 sin beta x)$.

  #proof[
    当 $r_1 eq.not r_2$，那么 $e^(r_1 x)$ 和 $e^(r_2 x)$ 是原方程的两个线性无关的解，根据齐次线性方程解集的组成，因此 $C_1 e^(r_1 x) + C_2 e^(r_2 x)$ 是它的一个通解.

    当 $r_1 = r_2$ 时，我们设另一个线性无关的解为 $f (x) e^(r_1 x)$，其中 $f (x)$ 不为常数，带入到原方程中有
    $ e^(r_1 x) (f '' (x) + (2 r_1 + p) f ' (x) + (r_1^2 + p r_1 + q) f (x)) = 0 arrow.r.double e^(r_1 x) f'' (x) = 0 $
    因此我们只需要让取 $f'' (x) = 0$ 的 $f (x)$ 即可，这里取 $f (x) = x$.
    最终原方程组的一个通解为 $(C_1 + C_2 x) e^(r_1 x)$.

    当 $r_1 = alpha + beta i , r_2 = alpha - beta i$ 时.
    此时应当是可以根据第一种情况确定原方程的通解为 $C_1 e^((alpha + beta i) x) + C_2 e^((alpha - beta i) x)$，但是为了结果不带复数，我们通过欧拉公式做一些变换.
    由欧拉公式有
    $
      e^(alpha x + beta x i) = e^(a x) (cos beta x + i sin beta x)\
      e^(alpha x - beta x i) = e^(a x) (cos beta x - i sin beta x) med
    $
    这样我们可以通过对这两个等式做线性的变换导出两个新的线性无关的解
    $
      y_1 = e^(a x) cos beta x\
      y_2 = e^(a x) sin beta x
    $
    因此原方程的通解为 $e^(a x) (C_1 cos beta x + C_2 sin beta x)$.
    这里可能有一点小疑问在我们在取第二个解的时候，需要除或者乘上 $i$，这个 $i$ 在复数域上我们默认是常数.
  ]
]

#corollary()[
  $n$ 阶常系数齐次线性微分方程，不同根对应的解如下

  + 单个实根 $r$ : 给出一项 $C e^(r x)$;

  + 一对单复根 $r_(1 , 2) = alpha plus.minus beta i$ :
    给出两项 $e^(alpha x) (C_1 cos beta x + C_2 sin beta x)$;

  + $k$ 重实根 $r$ :
    给出 $k$ 项 $e^(r x) (C_1 + C_2 x + dots.h.c + C_k x^(k - 1))$;

  + 一对 $k$ 重复根 $r_(1 , 2) = alpha plus.minus beta i$ :
    给出 $2 k$ 项 $e^(alpha x) [(C_1 + C_2 x + dots.h.c + C_k x^(k - 1)) cos beta x + (D_1 + D_2 x + dots.h.c + D_k x^(k - 1)) sin beta x]$
]

#proposition("二阶常系数非齐次线性微分方程的一般形式")[
  二阶常系数非齐次线性微分方程的一般形式是 $ y'' + p y' + q y = f (x) , $ 其中 $p , q$ 均为常数.
]

#proposition("待定系数法")[
  形如 $ y'' + p y' + q y = e^(lambda x) P_m (x) $
  的方程，其中 $lambda$ 为常数.
  设 $y^(\*) = R (x) e^(lambda x)$，求 $y^(\*)'$ 及 $y^(\*)''$ 带入原方程，则有
  $ R'' (x) + (2 lambda + p) R' (x) + (lambda^2 + p lambda + q) R (x) = P_m (x) . $
  分三种情况讨论

  + 若 $lambda$ 不是特征方程 $r^2 + p r + q$ 的根，要是两端相等则 $R (x) = R_m (x)$，即
    $ R_m (x) = b_0 x^m + dots.h.c + b_(m - 1) x + b_m , $
    带入上式，比较等式两端相同幂系数的项系数，就可以得到一个 $m + 1$ 个方程组，从而求得一个特解 $y^(\*) = R_m (x) e^(lambda x)$.

  + 若 $lambda$ 是特征方程 $r^2 + p r + q$ 的单根，即 $lambda^2 + p lambda + q = 0$，但 $2 lambda + p eq.not 0$，此时要使原方程两端相等，则 $R' (x)$ 必须是 $m$ 次多项式，此时有
    $ R (x) = x R_m (x) . $

  + 若 $lambda$ 是特征方程 $r^2 + p r + q$ 的重根，此时要使原方程两端相等，则 $R'' (x)$ 必须是 $m$ 次多项式，此时有
    $ R (x) = x^2 R_m (x) . $

  综上原方程具有形如 $ y^(\*) = x^k R_m (x) e^(lambda x) . $
  的特解，其中 $k$ 是按 $lambda$ 不是特征方程的根，是特征方程的单根或者特征方程的重根依次取 $0 , 1 , 2$.
]

#proposition("待定系数法")[
  形如
  $ y'' + p y' + q y = e^(lambda x) [P_l (x) cos omega x + Q_n (x) sin omega x] $
  的方程，其中 $lambda , omega$ 均为常数，$omega eq.not 0$，且 $P_l (x) , Q_n (x)$ 不全为零.
  则原方程的特解可设为
  $ y^(\*) = x^k e^(lambda x) [R_m^((1)) (x) cos omega x + R_m^((2)) (x) sin omega x] , $
  其中 $R_m^((1)) (x) , R_m^((2)) (x)$ 是 $m$ 次多项式，$m = max { l , n }$，而 $k$ 按 $lambda + i omega$ (或者 $lambda - i omega$) 不是特征方程的根，或是特征方程的单根依次取 $0$ 和 $1$.
]

#definition("欧拉方程")[
  形如
  $ x^n y^((n)) + p_1 x^((n - 1)) y^((n - 1)) + dots.h.c + p_(n - 1) x y' + p_n y = f (x) . $
  的方程，其中 $p_1 , p_2 , dots.h.c , p_n$ 均为常数，叫做欧拉方程.

]
#annotation()[
  作变换 $x = e^t$ 或者 $t = ln x$ (与 $x < 0$ 时所得结果一致)，则有
  $
    frac(dif y, dif x) &= frac(dif y, dif t) frac(dif t, dif x) = 1 / x frac(dif y, dif t)\
    frac(d^2 y, dif x^2) &= frac(d, dif x) (1 / x frac(dif y, dif t)) = - 1 / x^2 frac(dif y, dif t) + 1 / x frac(dif (frac(dif y, dif x)), dif t) frac(dif t, dif x) &= 1 / x^2 (frac(d^2 y, dif x^2) - frac(dif y, dif t)) .\
    frac(d^3 y, dif x^3) &= 1 / x^3 (frac(d^3 y, dif t^3) - 3 frac(d^2 y, dif t^2) + 2 frac(dif y, dif t)) .
  $
  采用记号 $D$ 表示对 $t$ 求导的运算 $frac(d, dif t)$，于是有
  $
           x y' & = D y \
          x y'' & = D^2 y - D y = D (D - 1) y \
         x y''' & = D^3 y - 3 D^2 y + 2 D y = D (D - 1) (D - 2) y \
       dots.h.c \
    x^k y^((k)) & = D (D - 1) dots.h.c D (D - k + 1) y .
  $
  将它们带入欧拉方程，便得到一个以 $t$ 为自变量的常系数线性微分方程.
  在求出一个方程的解后，把 $t$ 换成 $ln x$，即可得到原方程的解.
]
