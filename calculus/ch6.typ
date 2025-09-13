#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project.with(language: "ch")

= 一元函数积分学的应用
== 几何应用

#proposition("两曲线所围图形的面积")[
  对区域 $D$ 由二重积分的几何意义可得 $ S = limits(integral.double)_D 1 dif sigma $

  直角坐标系两曲线所围图形的面积：
  $ S = integral_a^b |f(x) - g(x)| dif x $


  极坐标系两曲线所围图形面积：
  $ S = 1 / 2 integral_a^b |r_1^2(theta) - r_2^2(theta)| dif theta $
]

#proposition("绕直线的旋转体的体积")[
  对区域 $D$ 与旋转轴 $L: a x + b y + c = 0$ 利用二重积分的微元法将旋转体体积看作以积分区域的微元区域为截面的圆环，可以将其近似看作一个圆柱体，底面积为微元区域的面积，高为圆环的周长 $2 pi r(x, y)$ 其中 $r(x, y)$ 为微元区域到旋转轴的距离。 由二重积分的几何意义可得
  $
    V = 2 pi limits(integral.double)_D r(x, y) dif sigma
  $

  + 绕 $x$ 轴
    $ V = pi integral_a^b f(x)^2 dif x $
  + 绕 $y$ 轴
    $ V = 2 pi integral_a^b x |f(x)| dif x $
  + 绕 $A x + B y + C = 0$ 旋转
    $ V = pi / (A^2 + B^2)^(3 / 2) integral_a^b [A x + B f(x) C]^2 |A f'(x) - B | dif x $
]

#proposition("平均值")[
  $ accent(y, -) = 1 / (b - a) integral_a^b f(x) dif x $
]

#proposition("平面曲线的弧长")[
  + 直角坐标系
    $ S = integral_a^b sqrt(1 + [f'(x)]^2) dif x $

  + 极坐标系
    $ S = integral_alpha^beta sqrt([r(theta)]^2 + [r'(theta)]^2) dif theta $

  + 参数方程
    $ S = integral_alpha^beta sqrt([x'(t)]^2 + [y'(t)]^2) dif t $

]

#proposition("旋转曲面的侧面积")[
  + 直角坐标系 $ S = 2 pi integral_a^b lr(|y(x)|) sqrt(1 + (y '_x)^2) thin dif x $

  + 参数方程 $ S = 2 pi integral_a^beta lr(|y (t)|) sqrt((x '_t)^2 + (y '_t)^2) thin dif t $

  + 极坐标 $ S = 2 pi integral_alpha^beta lr(|r (theta) sin theta|) sqrt(r^2 (theta) + [r ' (theta)]^2) thin dif theta $

  #ps[将旋转曲面微分成小圆片，小圆片的面积等于弧长乘以圆的周长]
  #annotation[
    为什么要乘以弧长的微分而不是而不是 $dif x$ ?
  ]
]

#proposition("质心与形心")[
  设平面曲线 $L$，其密度函数为
  $f (x , y)$，则曲线的质心 $(overline(x) , overline(y))$ 为
  $
    overline(x) = frac(integral_L x f (x , y) dif s, integral_L f (x , y) dif s) , quad overline(y) = frac(integral_L y f (x , y) dif s, integral_L f (x , y) dif s) .
  $

  类似地，可以推广到空间曲线
  $
    overline(x) = frac(integral_L x f (x , y , z) dif s, integral_L f (x , y , z) dif s) , quad overline(y) = frac(integral_L y f (x , y , z) dif s, integral_L f (x , y , z) dif s) , quad overline(z) = frac(integral_L z f (x , y , z) dif s, integral_L f (x , y , z) dif s) .
  $

  若密度函数是一个常数，即密度是均匀的，则 $L$ 的形心为
  $
    overline(x) = frac(integral_L x dif s, integral_L dif s) , quad overline(y) = frac(integral_L y dif s, integral_L dif s) , quad overline(z) = frac(integral_L z dif s, integral_L dif s) .
  $
]

== 物理应用
#proposition()[
  + 直线做功 $w = f s$.

  + 质量公式 $m = rho v$.

  + 克服重力做功的力 $f = m g$.
]
#proposition()[
  + 变力沿直线做功：$dif w = F(x) dif x$
    $ W = integral_a^b F(x) dif x $

  + 抽水做功：$dif w = x dif f = x rho g dif v = x rho g A(x) dif x$
    $ W = rho g integral_a^b x A(x) dif x $

  + 静水压力
    $ P = rho g integral_a^b x [f(x) - h(x)] dif x $

  + 引力
    $ F = integral_(-l)^0 (G m mu) / (a - x)^2 dif x $
]

== 积分等式与不等式问题
