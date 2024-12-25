#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project.with(language: "ch")

= 一元函数微分学的应用（二）—— 中值定理、微分等式与微分不等式

== 中值定理

#theorem("有界与最值定理")[
  闭连开导，$m <= f(x) <= M ,space m,M$ 为区间最小值和最大值。
]

#theorem("介值定理")[
  闭连开导，当 $m<= mu <= M$ 时, 存在 $xi in [a,b], $ 使得$f(xi) = mu$.
]

#theorem("平均值定理")[
  + 闭连开导,当 $a < x_1 < x_2 < ···< x_n < b$ 时，在 $[x_1,x_n]$ 内至少存在一点 $xi$ 使得,
    $ f(xi) = (f(x_1) + f(x_2) + ··· + f(x_n)) / n. $
  + 连续型
    $ f(xi) = 1 / (b-a). integral^b_a f(x)d x $
]

#theorem("零点定理")[
  闭连开导，当 $f(a) ·f(b) < 0$ 时, 存在 $xi in (a,b),$ 使得 $f(xi) = 0$。
  #remark()[$ f(a),f(b),a,b "为无穷大也行.同时也可以引申到导数零点定理". $]
]

#theorem("fermat 定理")[
  在 $x_0$ 处可导且取极值，则 $f'(x) = 0$. //··············待补充证明
]

#theorem("Rolle 定理")[
  $f(x)$ 在区间[a,b]闭连开导,且 $f(a) = f(b)$ , 则存在 $f'(xi) = 0$.
  #remark("推广")[
    $f(x)$ 在 $(a,b)$ 可导, $lim_(x -> a^+)f(x) = lim_(x -> b^-)f(x) = A$ 则在 $(a,b)$ 内至少存在一点 $xi 使 f'(xi) = 0$.
    （其中a,b,A均可是无穷大）.
  ]
  #remark("多个零点的罗尔定理")[
    $f(x)$ 每两个零点为一组,出现一个 $f'(alpha) = 0$ , 如果出现多个导数零点，则再次对 $f'(x)$ 进行罗尔中值定理。类似递归。
  ]
]

#remark("构造函数")[（不仅仅适用于罗尔定理）
  + 见到 $[f(x)f'(x)], F(x) = f^2(x)$.

  + 见到 $[f'(x)]^2 + f(x)f''(x), F(x) = f(x)f'(x)$.

  + 见到 $f'(x) + f(x)phi'(x), F(x) = f(x)e^(phi(x))$.

  + 见到 $ u''v + 2u'v' + 2u v'', (u v)''$.

  + 见到 $ f'(x)x - f(x), F(x) = f(x) / x$.

  + 见到 $f''(x)f(x) - [f'(x)]^2, F(x) = (f'(x)) / f(x) "或" F(x) = ln f(x)$.
]

#corollary[ ]
#theorem("Lagrange 中值定理")[]
#theorem("Cauchy 中值定理")[]
#theorem("Taylor formula")[]
#corollary("Maclaurin series")[ ]

== 微分等式

== 微分不等式
