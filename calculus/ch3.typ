#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Chapter 3",
  language: "ch",
)

#let lim = $limits(lim)$

= 一元函数微分学

== 导数

#definition("导数")[
  《高等数学辅导讲义》P50；《同济》P75.
]

#proposition("常用的导数定义的等价形式")[
  $
    f' (x_0) = lim_(x arrow.r x_0) frac(f (x) - f (x_0), x - x_0) , quad f' (x_0) = lim_(h arrow.r 0) frac(f (x_0 + h) - f (x_0), h) .
  $
]

#proposition([$f'(x_0)$ 存在的充要条件])[
  $f'_- (x_0), f'_+ (x_0)$ 都存在且相等。
]

#proposition([$f'(x_0)$ 存在的必要条件])[
  $f(x_0)$ 连续.
  #remark[
    连续不一定可导：$y = |x|$ 。
  ]
]

#lemma("单侧导数极限定理")[
  设函数 $f (x)$ 在点 $x_0$ 的某邻域 $U (x_0)$ 内连续，在
  $accent(U, circle) (x_0)$ 内可导，若存在 _#redtxt[有限或无穷]_ 的极限 $lim_(x -> x_0^+) f'(x) = k$，则 $f'_+(x_0) = k.$ 导数左侧极限与左导数的关系同理。

  #proof[
    任取 $x in accent(U, circle)_+ (x_0)$，$f (x)$ 在 $[x_0 , x]$ 上满足 #link(<lagrange-midvalue-theorem>)[Lagrange
      中值定理] 的条件，则存在 $xi in (x_0 , x)$，使得

    $ frac(f (x) - f (x_0), x - x_0) = f' (xi) . $ 由于 $x_0 < xi < x$，当
    $x arrow.r x_0^(+)$ 时，有 $xi arrow.r x_0^(+)$，对上式两边取极限
    $ lim_(x arrow.r x_0^(+)) frac(f (x) - f (x_0), x - x_0) = lim_(x arrow.r x_0^(+)) f' (xi) = f' (x_0^(+)) . $

    同理可得 $f'_(-) (x_0) = f' (x_0^(-))$。
  ]
]<单侧导数极限定理>


#theorem("导数极限定理")[
  设函数 $f (x)$ 在点 $x_0$ 的某邻域 $U (x_0)$ 内连续，在
  $accent(U, circle) (x_0)$ 内可导，且极限
  $lim_(x arrow.r x_0) f' (x)$ 存在，则 $f (x)$ 在点 $x_0$ 可导，且
  $f' (x_0) = lim_(x arrow.r x_0) f' (x)$。

  #proof[
    因为 $lim_(x arrow.r x_0) f' (x) = k$ 存在，故 $f' (x_0^(+)) = f' (x_0^(-)) = k$。由 @单侧导数极限定理 得 $f'_(+) (x_0) = f'_(-) (x_0) = k$，即 $f' (x_0) = k$。
  ]

  另有一种证明方法：写出导数定义式后进行洛必达。
]<导数极限定理>


#theorem("导数无第一类间断点和无穷间断点")[
  设 $f(x)$ 在 $[a, b]$ 上连续，在 $(a, b)$ 可导，则 $f'(x)$ 在 $(a, b)$ 上不存在第一类间断点和无穷间断点。

  #proof[
    对于第一类间断点：假设 $f'(x)$ 在 $x_0$ 处存在第一类间断点，即 $lim_(x -> x_0^+) f'(x), lim_(x -> x_0^-) f'(x)$ 均存在，由 @单侧导数极限定理 可得，$f'_+(x_0) = f'(x_0^+), f'_-(x_0) = f'(x_0^-)$，因为 $f'(x_0)$ 存在，即 $f'(x_0) = f'_+(x_0) = f'_-(x_0)$. 故可得 $f'(x_0) = f'(x_0^+) = f'(x_0^-)$ 即 $f'(x)$ 在 $x_0$ 连续，与假设矛盾，故不存在第一类间断点。

    对无穷大的点同理。
  ]
  更多证明方式见 #link("https://zhuanlan.zhihu.com/p/651443880") .
]<导数无第一类间断点和无穷间断点>

#proposition("导数的几何意义")[
  函数在某点的导数等于在这点的切线的斜率：
  $f'(x_0) = k$.
]


=== 函数的求导法则

#annotation("分段函数求导")[
  #set enum(numbering: x => [#emph[方法] #x ：])

  + 先用求导公式求出不含分界点的部分，然后再用导数的定义求出分界点的。
  + 判断在分段点是否连续，若连续即可利用 @导数极限定理 通过算出导数在分段点的极限值求得分段点的导数值。
]

#proposition("反函数求导")[ ]

#proposition("参数方程求导")[ ]

#proposition("对数求导法")[]

#proposition("复合函数求导法则")[ ]

== 微分
#definition[
  设函数 $y = f (x)$ 在某一区间上定义，并且在 $x_0$ 处是连续的，于是对应于变元的增量
  $Delta x$，函数的增量为
  $ Delta y = Delta f (x_0) = f (x_0 + Delta x) - f (x_0) . $
  若存在着一个关于 $Delta x$ 为线性的无穷小 $A dot.op Delta x$（ $A$
  是一个常数），使得它与 $Delta y$ 的差是较 $Delta x$
  更高阶的无穷小，言下之意就是 $Delta y$ 和 $A dot.op Delta x$
  是等价无穷小，即 $ Delta y = A dot.op Delta x + o (Delta x) . $ 则称函数
  $f (x)$ 在点 $x_0$ 可微，表达式 $A dot.op Delta x$ 称为函数 $f (x)$
  的微分，用记号 $dif y$ 或者 $dif f (x_0)$ 表示。
]

#proposition("可微和可导的关系")[
  函数在 $x_0$ 可微 $<=>$ 函数在 $x_0$ 可导.
]

#proposition("可微的判别")[
  判断 $ lim_(Delta x -> 0) (Delta y - A Delta x)/(Delta x) $ 其中 $A Delta x = f'(x_0) Delta x$ 为增量的线性主部，若该极限等于 $0$ 则函数在 $x_0$ 处可微。
]


== 高阶导数

#definition("高阶导数")[ ]

#proposition("莱布尼茨公式")[
  设 $u = u (x) , v = v (x)$ 均 $n$ 阶可导，则
  $
    (u v)^((n)) & = u^((n)) v + C_n^1 u^((n - 1)) v' + C_n^2 u^((n - 2)) v''' + dots.h.c + C_n^k u^((n - k)) v^((k)) + dots.h.c + C_n^(n - 1) u' v^((n - 1)) + u v^((n))\
    & = sum_(k = 0)^n C_n^k u^((n - k)) v^((k)) .
  $
] <莱布尼茨公式>

#proposition("高阶函数求导")[
  + 归纳法。
  + @莱布尼茨公式.
  + @泰勒展开的唯一性。
]


== 微分中值定理
#theorem("费马定理")[
  设函数是在某一区间 $(a, b)$ 上定义着，并且在这区间的内点 $c$ 取得最大（最小值)。若在这点处可导，则必有 $f' (c) = 0$.
]<费马定理>

#theorem("达布定理")[
  设函数 $f$ 在闭区间 $[a, b]$ 上可导，则 $f'$ 具有介值性：对于介于 $f'(a)$ 与 $f'(b)$ 中间的每一个实数 $k$, 都存在一个 $c$ 使得 $f'(c) = k$.

  #proof[
    (step 1) 首先证明当 $f'(a) f'(b) < 0$ 时，必有 $c in (a, b)$ 使得 $f'(c) = 0$。方便证明不失一般性设 $f'(a) > 0, f'(b) < 0$ 由极限定义及其保号性可得此时 $f(a), f(b)$ 均非最大值，因为 $f$ 可导即连续，根据 @有界与最值定理 可得最大值一定存在且在 $(a, b)$ 中取得，由 @费马定理 存在 $c in (a, b)$ 使得 $f'(c) = 0$.

    (step 2) 对于一般的情况，取介于 $f'(a), f'(b)$ 之间的数 $k$，为方便证明设 $f'(a) < k < f'(b)$。考虑函数 $phi(x) = f(x) - k x$，其导数 $phi'(x) = f'(x) - k$，特别的 $phi'(a) < 0, phi'(b) > 0$，即回到了 (step 1) 中的情况，故存在一点 $c in (a, b)$ 使得 $phi'(c) = f'(c) - k = 0$ 即 $f'(c) = k$.
  ]
]<达布定理>

#theorem("罗尔定理")[
  设 $f (x)$ 在$[a , b]$ 上连续，在$(a , b)$ 内可导，且
  $f (a) = f (b)$，那么至少存在一个 $xi in (a , b)$，使 $f' (xi) = 0$.

  // #remark("推广")[
  //   + $f(x)$ 在 $(a,b)$ 可导, $lim_(x -> a^+)f(x) = lim_(x -> b^-)f(x) = A$ 则在 $(a,b)$ 内至少存在一点 $xi 使 f'(xi) = 0$. (其中a,b,A均可是无穷大).

  //   + $f(x)$ 每两个零点为一组,出现一个 $f'(alpha) = 0$ , 如果出现多个导数零点，则再次对 $f'(x)$ 进行罗尔中值定理。类似递归。
  // ]
]

// #annotation("常见的罗尔定理函数构造方法")[
//   + 见到 $[f(x)f'(x)], F(x) = f^2(x)$.

//   + 见到 $[f'(x)]^2 + f(x)f''(x), F(x) = f(x)f'(x)$.

//   + 见到 $f'(x) + f(x)phi'(x), F(x) = f(x)e^(phi(x))$.

//   + 见到 $u''v + 2u'v' + 2u v'', (u v)''$.

//   + 见到 $f'(x)x - f(x), F(x) = f(x) / x$.

//   + 见到 $f''(x)f(x) - [f'(x)]^2, F(x) = (f'(x)) / f(x) "或" F(x) = ln f(x)$.
// ]

#theorem("拉格朗日中值定理")[
  设 $f (x)$ 在$[a , b]$ 上连续，在$(a , b)$
  内可导，那么至少存在一个 $xi in (a , b)$，使
  $ frac(f (b) - f (a), b - a) = f' (xi) . $
]<lagrange-midvalue-theorem>

#theorem("柯西中值定理")[
  设 $f (x) , g (x)$ 在$[a , b]$ 上连续，在$(a , b)$
  内可导，且 $g' (x) eq.not 0$，那么至少存在一个 $xi in (a , b)$，使
  $ frac(f (b) - f (a), g (b) - g (a)) = frac(f' (xi), g' (xi)) . $
]

== 泰勒公式

#annotation[
  几种泰勒公式的推导思路

  + 积分推导泰勒公式 \
    #link("https://math.stackexchange.com/questions/481661/simplest-proof-of-taylors-theorem")

  + 部分积分推导泰勒公式 \
    #link("https://proofwiki.org/wiki/Taylor's_Theorem/One_Variable")

  + 洛必达推导泰勒公式 \
    #link("https://zhuanlan.zhihu.com/p/88855321")
]

#theorem([泰勒展开])[
  若函数 $f (x)$ 在某 $x_0$ 的邻域定义着，$f (x)$ 在此邻域上有直至 $(n - 1)$ 的各阶导数，并且特别地在点 $x_0$ 上有 $n$ 阶导数，则对于该邻域内的任一 $x$，有
  $
    f (x) = f (x_0) + f' (x_0) (x - x_0) + frac(f^('') (x_0), 2 !) (x - x_0)^2 + dots.h.c + frac(f^((n)), n !) (x - x_0)^n + R_n (x).
  $
]

#proposition("泰勒展开的唯一性")[
  函数 $f (x)$ 的泰勒展开式唯一。

  #proof[设 $f (x)$ 的泰勒展开为
    $ f (x) = A_0 + A_1 (x - x_0) + dots.h.c + A_n (x - x_0)^n + R_n (x) . $
    若还存在另外一个多项式
    $ f (x) = A'_0 + A'_1 (x - x_0) + dots.h.c + A'_n (x - x_0)^n + R_n (x) . $
    那么必有 $A_0 = A'_0$, $A_1 = A'_1$, $dots.h.c$
    $A_n = A'_n$。这是因为，分别比较未知数指数相同的项，首先可以马上得到
    $A_0 = A'_0$，约去这两项之后，再求导。接着又可以类似的得到
    $A_1 = A'_1$，余类推，因此系数都相同.
  ]
]<泰勒展开的唯一性>


#theorem("泰勒公式（皮亚诺余项）")[
  设 $f(x)$ 在 $x_0$ 处 $n$ 阶可导,则存在 $x_0$ 的一个邻域, 对于该邻域内的任意点 $x$, $exists xi in (x_0, x)$ 有
  $
    f(x) = f(x_0) + f'(x_0)(x - x_0) + …… + 1 / (n !) f^(n) (x_0)(x - x_0)^n
    + o((x - x_0 )^n)
  $
  #remark[
    仅用于 $x_0$ 与其邻域, 常用于研究 $x = x_0$ 处的某些结论, 如求极限, 判断无穷小的阶数, 判定极值等.
  ]
]<泰勒公式皮亚诺余项>

#corollary("麦克劳林展开式")[
  对于 @泰勒公式皮亚诺余项, $x_0$ 取 $0$ 时, 为麦克劳林展开式.
  常用的麦克劳林展开式，见 @fm1-maclaurin-expansion .]


#theorem("泰勒公式（拉格朗日余项）")[
  设 $f(x)$ 在 $x_0$ 的某个邻域内 $n+1$ 阶导存在, 则对该邻域内的任意点 $x$, $exists xi in (x_0, x)$ 有
  $
    f(x) = f(x_0) + f'(x_0)(x - x_0) + …… + 1 / (n !) f^(n) (x_0)(x - x_0)^n
    + (f^(n + 1) (xi) ) / (n + 1)! (x - x_0)^(n + 1)
  $

  #remark[
    常用于区间 $[a,b]$，在证明题中使用，证明不等式，中值等式.
  ]
]
