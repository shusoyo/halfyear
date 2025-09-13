#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project.with(language: "ch")

= 多元函数微分学

== 多元函数的极限
#definition("二元函数的极限")[
  设二元函数 $f (P) = f (x , y)$ 的定义域为
  $D$，$P_0 (x_0 , y_0)$ 是 $D$ 的聚点。如果存在常数
  $A$，对于任意给定的正数 $epsilon$，总存在正数 $delta$，使得当点
  $P (x , y) in D inter accent(U, circle)(P_0 , delta)$ 时，都有
  $ lr(|f (P) - A|) = lr(|f (x , y) - A|) < epsilon $ 成立，那么就称常数
  $A$ 为函数 $f (x , y)$ 当 $(x , y) arrow.r (x_0 , y_0)$ 时的极限，记作
  $
    lim_((x , y) arrow.r (x_0 , y_0)) f (x , y) = A
  $
  也记作 $lim_(P arrow.r P_0) f (P) = A$，为了区别于一元函数的极限，把二元函数的极限叫做二重极限。
]

#properties("保号性")[]
#properties("局部有界性")[]

#proposition("二元函数极限存在的充要条件")[
  极限 $lim_((x , y) arrow.r (x_0 , y_0)) f (x , y) = A$
  （存在）的充要条件是当点 $P (x , y)$
  在定义域内沿任何路径以任何方式趋于点 $P_0 (x_0 , y_0)$ 时，均有
  $lim_((x , y) arrow.r (x_0 , y_0)) f (x , y)$ 存在，且等于 $A$。
]<二元函数极限存在的充要条件>

#proposition("极限与无穷小的关系")[
  $ lim_((x , y) arrow.r (x_0 , y_0)) f (x , y) = A arrow.l.r.double f (x , y) = A + alpha , $
  其中当 $(x , y) arrow.r (x_0 , y_0)$ 时，$alpha$ 是无穷小量。
]

#proposition("二元函数与一元函数有相同的极限运算法则与极限性质")[
  求二元函数的极限常用的方法：直接用极限运算法则，或通过适当放大缩小法，变量替换法转化为求简单的极限或一元函数的极限。

  #annotation()[
    不可以用洛必达法则和单调有界准则来求极限。
  ]
]


#proposition([二元函数 $z = f (x , y)$
  极限存在性])[
  在二元函数的极限中，由 @二元函数极限存在的充要条件，可以总结出以下证明二元函数极限不存在的有效方法。

  + 若在定义域内沿某两条不同路径（如直线 $y = k x$，抛物线 $y^2 = x$）极限 $lim_((x , y) arrow.r (x_0 , y_0)) f (x , y)$ 的值不相等.

  + 或沿某一路径极限 $lim_((x , y) arrow.r (x_0 , y_0)) f (x , y)$ 不存在，则可断言极限 $lim_((x , y) arrow.r (x_0 , y_0)) f (x , y)$ 不存在。
]

#definition([二元函数连续性定义])[
  设 $z = f (x , y)$
  定义在区域 $D$ 上, $P_0 (x_0 , y_0)$ 是 $D$ 的聚点。若
  $ lim_((x , y) arrow.r (x_0 , y_0)) f (x , y) = f (x_0 , y_0) , $ 则称
  $f (x , y)$ 在点 $P_0 (x_0 , y_0)$ 处连续；若 $f (x , y)$ 在 $D$
  上每一点连续，则称 $f (x , y)$ 在 $D$ 上连续。
]

== 偏导数
#definition("偏导数")[
  $
    f'_x (x_0 , y_0) & = lim_(Delta x arrow.r 0) frac(f (x_0 + Delta x , y_0) - f (x_0 , y_0), Delta x) = lr(diff/(diff x) f (x , y_0) |_(x = x_0)) ,\
    f'_y (x_0 , y_0) & = lim_(Delta y arrow.r 0) frac(f (x_0 , y_0 + Delta y) - f (x_0 , y_0), Delta y) = lr(frac(partial, partial y) f (x_0 , y)|_(y = y_0)) .
  $
]

#annotation[$f'_x (x_0 , y_0)$ 就是一元函数 $f (x , y_0)$ 在 $x_0$
  处的导数；$f'_y (x_0 , y_0)$ 就是一元函数 $f (x_0 , y)$ 在 $y_0$
  处的导数。
]

#proposition("几何意义")[
  + $f'_x (x_0 , y_0)$ 表示曲线 $z = f (x , y_0)$ 在点 $(x_0 , y_0 , f (x_0 , y_0))$ 处的切线对 $x$ 轴的斜率；
  + $f'_y (x_0 , y_0)$ 表示曲线 $z = f (x_0 , y)$ 在点 $(x_0 , y_0 , f (x_0 , y_0))$ 处的切线对 $y$ 轴的斜率。
]

#proposition("高阶偏导数")[
  设 $z = f (x , y)$，则
  $
    &frac(partial^2 z, partial x^2) = f''_(x x) (x , y) = frac(partial, partial x) (frac(partial z, partial x)) quad quad &&
    frac(partial^2 z, partial x partial y) = f''_(x y) (x , y) = frac(partial, partial y) (frac(partial z, partial x)) \
    & frac(partial^2 z, partial y^2) = f''_(y y) (x , y) = frac(partial, partial y) (frac(partial z, partial y)) quad quad &&
    frac(partial^2 z, partial y partial x) = f''_(y x) (x , y) = frac(partial, partial x) (frac(partial z, partial y))
  $
]
#theorem[
  如果函数 $z = f (x , y)$ 的两个二阶混合偏导数
  $f''_(x y) (x , y)$ 及 $f''_(y x) (x , y)$ 在区域 $D$ 内 #hl[连续]，则在区域
  $D$ 内恒有 #hl[ $f''_(x y) (x , y) = f''_(y x) (x , y) .$]
]

== 全微分


#definition("全微分")[
  若 $Delta z = f (x_0 + Delta x , y_0 + Delta y) - f (x_0 , y_0) = A Delta x + B Delta y + o (rho)$，则称函数
  $z = f (x , y)$ 在点 $(x_0 , y_0)$ 可微，$A Delta x + B Delta y$
  称为函数 $z = f (x , y)$ 在点 $(x_0 , y_0)$ 的全微分，记为
  $ dif z = A Delta x + B Delta y . $
]

#annotation[
  以下四条等价：

  + $ Delta z = f (x_0 + Delta x , y_0 + Delta y) - f (x_0 , y_0) = A Delta x + B Delta y + o (rho) $

  + $
      lim_(Delta x arrow.r 0 , Delta y arrow.r 0) frac(f (x_0 + Delta x , y_0 + Delta y) - f (x_0 , y_0) - (A Delta x + B Delta y), sqrt((Delta x)^2 + (Delta y)^2)) = 0
    $

  + $ Delta z = f (x , y) - f (x_0 , y_0) = A (x - x_0) + B (y - y_0) + o (rho) $

  + $
      lim_(x arrow.r x_0 , y arrow.r y_0) frac(f (x , y) - f (x_0 , y_0) - [A (x - x_0) + B (y - y_0)], sqrt((x - x_0)^2 + (y - y_0)^2)) = 0
    $

  它们是函数 $f (x , y)$ 在点 $(x_0 , y_0)$
  处可微的等价形式，由它们都可得到 $f (x , y)$ 在点 $(x_0 , y_0)$
  处可微，且 $f_x' (x_0 , y_0) = A , f_y' (x_0 , y_0) = B$。
]

#proposition("全微分存在的必要条件")[
  若函数 $z = f (x , y)$ 在点 $(x , y)$
  处可微，则该函数在该点处的偏导数 $frac(partial z, partial x) , frac(partial z, partial y)$ 必存在，且函数 $z = f (x , y)$ 在点 $(x , y)$ 处的全微分为
  $ dif z = frac(partial z, partial x) Delta x + frac(partial z, partial y) Delta y . $
  也可写为
  $ dif z = frac(partial z, partial x) dif x + frac(partial z, partial y) dif y . $

]<全微分存在的必要条件>

#proposition("全微分存在的充分条件")[
  $f'_x (x , y)$ 和 $f'_y (x , y)$ 在 $(x_0 , y_0)$ 存在且连续.
]<全微分存在的充分条件>

#proposition("可微的判别")[
  可以根据 @全微分存在的充分条件 和 @全微分存在的必要条件 来判断，也可以用定义判定：首先判断 $f_x' (x_0 , y_0)$ 与 $f_y' (x_0 , y_0)$ 是否都存在，其次判断
  $
    lim_(Delta x arrow.r 0 , Delta y arrow.r 0) frac([f (x_0 + Delta x , y_0 + Delta y) - f (x_0 , y_0)] - [f'_x (x_0 , y_0) Delta x + f'_y (x_0 , y_0) Delta y], sqrt((Delta x)^2 + (Delta y)^2))
  $
  是否为零。
]

== 多元复合函数求导法则
=== 链式法则
=== 全微分形式的不变性

#proposition("全微分形式的不变性")[设 $z = f (u , v)$, $u = u (x , y)$, $v = v (x , y)$，如果 $f (u , v)$,
  $u (x , y)$, $v (x , y)$ 分别有连续偏导数，则复合函数 $z = f (u , v)$ 在
  $(x , y)$ 处的全微分仍可表示为

  $ dif z = frac(partial z, partial u) dif u + frac(partial z, partial v) dif v , $

  即无论 $u , v$ 是自变量还是中间变量，上式总成立。
]

== 隐函数求导公式
#theorem("隐函数确定的一元函数")[
  对于由方程 $F (x , y) = 0$ 确定的隐函数 $y = f (x)$，#hl[当 $F_y' (x , y) eq.not 0$ 时]，则有
  $ frac(d y, d x) = - frac(F'_x (x , y), F'_y (x , y)) . $

  #proof[
    将 $y = f (x)$ 代入 $F (x , y) = 0$，得
    $F [x , f (x)] = 0$，在这个等式两边对 $x$ 求导，得
    $F'_x (x , y) + F'_y (x , y) dot.op frac(d y, d x) = 0$，因
    $F'_y (x , y) eq.not 0$，故
    $ frac(d y, d x) = - frac(F'_x (x , y), F'_y (x , y)) . $
  ]
]

#theorem("隐函数确定的多元函数")[
  对于由方程 $F (x , y , z) = 0$ 确定的隐函数 $z = f (x , y)$，#hl[当 $F'_z (x , y , z) eq.not 0$ 时]，则有
  $
    frac(partial z, partial x) = - frac(F'_x (x , y , z), F'_z (x , y , z)) , quad frac(partial z, partial y) = - frac(F'_y (x , y , z), F'_z (x , y , z)) .
  $

  #proof[
    将 $z = f (x , y)$ 代入
    $F (x , y , z) = 0$，得
    $F [x , y , f (x , y)] = 0$，在这个等式两边分别对 $x$ 和 $y$
    求偏导数，得
    $
      F'_x (x , y , z) + F'_z (x , y , z) dot.op frac(partial z, partial x) = 0, quad F'_y (x , y , z) + F'_z (x , y , z) dot.op frac(partial z, partial y) = 0 .
    $
    因 $F'_z (x , y , z) eq.not 0$，故
    $
      frac(partial z, partial x) = - frac(F'_x (x , y , z), F'_z (x , y , z)) , quad frac(partial z, partial y) = - frac(F'_y (x , y , z), F'_z (x , y , z)) .
    $
  ]
]

#proposition("由方程组所确定的隐函数")[
  设 $u = u (x , y) , v = v (x , y)$ 由 $ cases(
    F (x , y , u , v) = 0,
    G (x , y , u , v) = 0
  ) $ 所确定. 等式两边同时对 $x$ 求导，得到
  $
    cases(
      F'_x + F'_u frac(partial u, partial x) + F'_v frac(partial v, partial x) = 0,
      G'_x + G'_u frac(partial u, partial x) + G'_v frac(partial v, partial x) = 0
    )
  $
  解方程组便可得到 $(diff u)/(diff x)$ 与 $(diff v)/(diff x)$. $(diff u)/(diff y)$ 与 $(diff v)/(diff y)$ 同理.


]

== 极值与最值

#proposition("极值存在的必要条件")[ 设 $f (x , y)$ #hl[在点 $(x_0 , y_0)$ 处具有偏导数],
  且在点 $(x_0 , y_0)$ 处取极值, 则它在该点的偏导数必然为零, 即
  $f'_x (x_0 , y_0) = 0$, $f'_y (x_0 , y_0) = 0$.

  #annotation()[注意高亮部分很重要，对于没有偏导数的点，也有可能是极值点。即具有偏导数的极值点必然是驻点, 但驻点不一定是极值点.]
]

#theorem("极值的充分条件")[
  设 $z = f (x , y)$ 在点
  $P_0 (x_0 , y_0)$ 的某邻域内有二阶连续偏导数，又
  $f'_x (x_0 , y_0) = 0 , f'_y (x_0 , y_0) = 0$。记
  $ A = f''_(x x) (x_0 , y_0) , B = f''_(x y) (x_0 , y_0) , C = f''_(y y) (x_0 , y_0) . $
  则有下述结论：
  + 若 $A C - B^2 > 0$，则 $(x_0 , y_0)$ 为 $f (x , y)$ 的极值点。

    - $A < 0$，则 $(x_0 , y_0)$ 为 $f (x , y)$ 的极大值点；

    - $A > 0$，则 $(x_0 , y_0)$ 为 $f (x , y)$ 的极小值点。

  + 若 $A C - B^2 < 0$，则 $(x_0 , y_0)$ 不为 $f (x , y)$ 的极值点。

  + 若 $A C - B^2 = 0$，则 $(x_0 , y_0)$ 可能为 $f (x , y)$
    的极值点，也可能不为 $f (x , y)$ 的极值点（此时一般用定义判定）。
]

#proposition("条件极值")[
  可微函数 $z = f (x , y)$ 在
  $phi (x , y) = 0$（确定的隐函数可微）下的条件极值与函数
  $ L (x , y , r) = f (x , y) + r phi (x , y) $ 的极值点等价.

  #proof[
    函数 $L (x , y)$ 的全微分为
    $ d L = [f_x ' (x , y) + r phi_x ' (x , y)] d x + [f_y ' (x , y) + r phi_y ' (x , y)] d y + phi (x , y) d r . $
    因此它极值点必要条件是 $ cases(
      f_x' (x , y) + r phi_x' (x , y) = 0\
      f_y' (x , y) + r phi_y' (x , y) = 0\
      phi (x , y) = 0
    ) $ 在 $phi (x , y) = 0$ 的条件下，有 $L = f$。因此 $L$
    的极值点就是 $f$ 的极值点.
  ]
]
