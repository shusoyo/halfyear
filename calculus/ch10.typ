#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project.with(language: "ch")

= 一元函数积分学的应用（一）几何应用

== 平面图形的面积
#theorem("两曲线所围图形的面积")[
  + 直角坐标系两曲线所围图形的面积：
    $ S = integral_a^b |f(x) - g(x)| dif x $
    PS: 弧长公式 $L = r theta$
  + 极坐标系两曲线所围图形面积：
    $ S = 1 / 2 integral_a^b |r_1^2(theta) - r_2^2(theta)| dif theta $
]

== 旋转体的体积

#theorem("绕坐标轴旋转体的体积")[
  + 绕 $x$ 轴
    $ V_x = pi integral_a^b f(x)^2 dif x $
  + 绕 $y$ 轴
    $ V_y = 2 pi integral_a^b x |f(x)| dif x $
  + 绕 $A x + B y + C = 0$ 旋转
    $ V = pi / (A^2 + B^2)^(3 / 2) integral_a^b [A x + B f(x) C]^2 |A f'(x) - B | dif x $
]

== 平均值

#theorem("平均值")[
  $ accent(y, -) = 1 / (b - a) integral_a^b f(x) dif x $
]

== 其他几何应用

#theorem("平面上曲边梯形的形心坐标")[
  $
    accent(x, -) = (integral_a^b x f(x) dif x) / (integral_a^b f(x) dif x),
    accent(y, -) = (1 / 2 integral_a^b f^2(x) dif x) / (integral_a^b f(x) dif x)
  $
]

#theorem("平面曲线的弧长")[
  + 直角坐标系
    $ x $
  + 极坐标系
    $ x $
  + 参数方程
    $ x $
]

#theorem("旋转曲面的面积")[
  Tips: 将旋转曲面微分成小园片，小园片的面积等于弧长乘以园的周长 \
  Q: 为什么要乘以弧长的微分而不是 而不是 $dif x$
]
