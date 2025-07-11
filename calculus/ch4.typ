#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Chapter 4",
  authors: ("suspen",),
  language: "ch",
)

= 一元函数微分学的应用

== 微分不等式

// === 微分等式
// #theorem()[

//   1. 零点定理（证明根的存在）\
//     若 $f(x)$ 在 $[a,b]$ 上连续,且 $f(a)f(b) < 0$ ,则在 $(a,b)$ 内至少存在一根\

//   2. 单调性（证明根的唯一性） \
//     若 $f(x)$ 在 $(a,b)$ 内单调,则 $f(x) = 0$ 在区间内至多有一个根,可以是无穷区间\

//   3. 罗尔定理及其推论
//     - $f(x)$ 在区间$I$上$n$阶可导,且 $f^((n)) (x) != 0$ , 即 $f^((n)) (x) = 0$ 无实根(至多 $0$ 个根) ,于是 $f(x) = 0$ 至多有 $n$ 个根
//     - 实系数奇次方程至少有一个根
// ]



// === 微分不等式

// #theorem("证明不等式")[
//   1. 使用单调性,凹凸性,最值

//   2. 分离参数

//   3. 中值定理,凑出 $f(x)$ 或者 $g(x)$
// ]


== 极值、单调性、拐点、凹凸性
#definition("极值、单调性、拐点、凹凸性")[
  《高等数学辅导讲义》P66.
]

#annotation()[
  + 判断极值与拐点的第一充分条件均是在 #hilight[_去心临域_] 内可导。

  + @费马定理

  + 当闭区间 $[a, b]$ 上的连续函数 $f (x)$ 在 $(a, b)$ 内仅有唯一极值点，若在该点 $f (x)$ 取得极大值（或极小值），则它也是 $f (x)$ 在 $[a, b]$ 上的最大值（或最小值）。
]

#proposition("极值和拐点的相关结论")[
  + 曲线的可导点不可同时为极值点和拐点；曲线的不可导点可同时为极值点和拐点。

  + 设多项式函数 $f (x) = (x - a)^n g (x) (n > 1)$，且
    $g (a) eq.not 0$，则当 $n$ 为偶数时，$x = a$ 是 $f (x)$ 的极值点；当
    $n$ 为奇数时，点 $(a , 0)$ 是曲线 $f (x)$ 的拐点。

  + 设多项式函数
    $f (x) = (x - a_1)^(n_1) (x - a_2)^(n_2) dots.h.c dots.h.c dots.h.c (x - a_k)^(n_k)$，其中
    $n_i$ 是正整数，$a_i$ 是实数且 $a_i$
    两两不等，$i = 1 , 2 , dots.h.c , k$。

    记 $k_1$ 为 $n_i = 1$ 的个数，$k_2$ 为 $n_i > 1$ 且 $n_i$
    为偶数的个数，$k_3$ 为 $n_i > 1$ 且 $n_i$ 为奇数的个数，则 $f (x)$
    的极值点个数为 $k_1 + 2 k_2 + k_3 - 1$，拐点个数为
    $k_1 + 2 k_2 + 3 k_3 - 2$。
]

== 方程根的存在性及个数

#proposition("罗尔定理的推论")[
  若在区间 $I$ 上 $f^((n)) (x) eq.not 0$，则方程
  $f (x) = 0$ 在 $I$ 上最多 $n$ 个实根。
  #proof[反证法.]
]

== 曲率
#definition("曲率")[
  $ k = lim_(Delta s arrow.r 0) lr(|frac(Delta alpha, Delta s)|) . $

]

#proposition("曲率的参数方程表示")[
  若曲线由参数方程 $ cases(
    x = x (t),
    y = y (t)
  ) $ 给出，则曲率
  $ k = abs(y '' x ' - y ' x '') / (x '^2 + y '^2)^(3 / 2) . $
]

#proposition("曲率的直角坐标方程表示")[
  特别的，若曲线由直角坐标方程 $y = y (x)$ 给出，则 $ k = abs(y '') / (1 + y '^2)^(3 / 2) . $
]

#proposition("曲率半径")[
  $r = 1 / k$.
]

