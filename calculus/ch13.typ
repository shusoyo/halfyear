#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project.with(language: "ch")

= 多元函数微分学

== 基本概念

=== 极限与连续

#annotation("多元函数的极限")[
  例如在二元函数中，函数在二维临域内，自变量 $x, y$ 趋于临域中心点的路径有无穷多个, 如 $(x, y)$ 趋于 $(0, 0)$ 的路径就可以为 $(x, x)$ 或 $(x, x^2)$.

  #remark[在求极限时，不能使用洛必达和单调有界准则, 可以使用等价无穷小替换！]
]

#annotation("连续")[
  多元函数的连续判断和一元函数类似，本质计算方法还是求极限。
]

=== 偏导数

#properties[
  + 多元函数 $f(x, y)$ 的 $(diff^2 f)/(diff^2 x diff y)$ 与 $(diff f) / (diff y diff x)$ 都在区域 $D$ 内连续，则在区域 $D$ 内 ，$(diff^2 f)/(diff x diff y) = (diff^2 f) / (diff y diff x)$.
]

=== 可微

#annotation("可微的判别")[]

=== 隐函数存在定理

=== 极值
