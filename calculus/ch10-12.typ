#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project.with(language: "ch")

= 一元函数积分学的应用
== 几何应用

=== 平面图形的面积
#formula("两曲线所围图形的面积")[
  对区域 $D$ 由二重积分的几何意义可得 $
   S = limits(integral.double)_D 1 dif sigma

  $

  + 直角坐标系两曲线所围图形的面积：
    $ S = integral_a^b |f(x) - g(x)| dif x $
    PS: 弧长公式 $L = r theta$
  + 极坐标系两曲线所围图形面积：
    $ S = 1 / 2 integral_a^b |r_1^2(theta) - r_2^2(theta)| dif theta $
]

=== 旋转体的体积

#formula("绕坐标轴旋转体的体积")[
  对区域 $D$ 与旋转轴 $L: a x + b y + c = 0$ 利用二重积分的微元法将旋转体体积看作以积分区域的微元区域为截面的圆环，可以将其近似看作一个圆柱体，底面积为微元区域的面积，高为圆环的周长 $2 pi r(x, y)$ 其中 $r(x, y)$ 为微元区域到旋转轴的距离。 由二重积分的几何意义可得
  $
    V = 2 pi limits(integral.double)_D r(x, y) dif sigma
  $

  + 绕 $x$ 轴
    $ V_x = pi integral_a^b f(x)^2 dif x $
  + 绕 $y$ 轴
    $ V_y = 2 pi integral_a^b x |f(x)| dif x $
  + 绕 $A x + B y + C = 0$ 旋转
    $ V = pi / (A^2 + B^2)^(3 / 2) integral_a^b [A x + B f(x) C]^2 |A f'(x) - B | dif x $
]

=== 平均值

#formula("平均值")[
  $ accent(y, -) = 1 / (b - a) integral_a^b f(x) dif x $
]

=== 其他几何应用

#formula("平面上曲边梯形的形心坐标")[
  $
    accent(x, -) = (integral_a^b x f(x) dif x) / (integral_a^b f(x) dif x),
    accent(y, -) = (1 / 2 integral_a^b f^2(x) dif x) / (integral_a^b f(x) dif x)
  $
]

#formula("平面曲线的弧长")[
  + 直角坐标系
    $ s = integral_a^b sqrt(1 + [f'(x)]^2) dif x $
  + 极坐标系
    $ s = integral_alpha^beta sqrt([x'(t)]^2 + [y'(t)]^2) dif x $
  + 参数方程
    $ s = integral_alpha^beta sqrt([r(theta)]^2 + [r'(theta)]^2) dif x $
]

#formula("旋转曲面的面积")[
  Tips: 将旋转曲面微分成小园片，小园片的面积等于弧长乘以园的周长 \
  Q: 为什么要乘以弧长的微分而不是 而不是 $dif x$
]

== 积分等式与不等式问题
=== 积分等式

#theorem("积分中值定理的推广")[
  有函数 $f(x), g(x)$ 在 $[a, b]$ 上连续，#text(yellow.negate(space: rgb))[$g(x)$ 在 $[a, b]$ 上不变号], $exists xi in (a, b), integral_b^a f(x) g(x) dif x = f(xi) integral_b^a g(x) dif x.$
]

== 物理应用

#annotation("基本物理公式")[
  + 力与位移方向相同时，做功 $W = F d$.
]

#formula("常用积分公式")[
  + 变力沿直线做功
    $ W = integral_a^b F(x) dif x $

  + 抽水做功
    $ W = rho g integral_a^b x A(x) dif x $

  + 静水压力
    $ P = rho g integral_a^b x [f(x) - h(x)] dif x $

  + 引力
    $ F = integral_(-l)^0 (G m mu) / (a - x)^2 dif x $
]
