#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Chapter 4",
  authors: ("suspen",),
  language: "ch",
)

= 一元函数微分学的应用（一）几何应用

== 极值
#definition("极值的定义")[
  函数$f(x)$,存在$x_0$的某个邻域，该邻域的每一个点都符合

  $ f(x) <= f(x_0) "或" f(x) >= f(x_0) $

  #align(center)[
    则$x_0$是极大(小)值点，$f(x_0)$是极大(小)值, 极值点可以是间断点.
  ]
]


