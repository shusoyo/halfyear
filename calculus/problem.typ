#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#let ps = x => box[#text(yellow.negate(space: rgb))[hints: ] #emph[#x]]

#let ref = x => box[_ref:_  #emph[#x]]
#let proof = x => box[_Proof:_  #emph[#x]]
#let qst = thmplain("qst", "Q", base: none, inset: (
  bottom: 1em,
  left: 0em,
  right: 0em,
)).with(breakable: false)


#let req = thmbox(
  "reqst",
  "re Q",
  base: none,
  inset: (
    bottom: 1em,
    left: 0em,
    right: 0em,
  ),
).with(
  breakable: false,
  numbering: "1",
)

#show <the-outline>: it => {
  it
  context for (el, meta) in query(figure.where(kind: "thmenv")).zip(query(<meta:thmenvcounter>)) {
    if meta.value == "reqst" {
      outline.entry(2, el)
    }
  }
}

#show: project.with(
  title: "math problems",
  language: "ch",
  authors: "suspen",
  outl: [
    #outline(
      indent: auto,
      title: text(yellow.negate(space: rgb))[Contents],
      depth: 2,
    )

    #outline(
      title: text(yellow.negate(space: rgb))[Revise],
      target: figure.where(kind: "thmenv"),
    ) <the-outline>
  ],
  title_page: true,
)

#let qg2c = grid.with(columns: (1fr, 1fr))

#let lim = $limits(lim)$

// + `A` : 《武忠祥高数强化讲义》
// + `B` : 《张宇三十讲》- 26
// + `C` : 《张宇 1000 题基础篇》- 26， 用 § 来表示章节
// + `D` : 《李艳芳历年考研数学真题解析及复习思路》
// + `R 2 08 xxx` : 指真题，数二，08 年，答案是 xxx 的答案

#example("计算错误与失误大赏")[
  + 计算 $c integral_a^b f'(x) dif x$ 时，要注意是 $c f(b) - c f(a)$ 而不是 $c f(b) - f(a)$。

  + 定积分上下限代入时，应是 $f(a) - f(b)$ 注意符号！

  + 多项式带括号时，应展开每一项，不能心算，以免漏乘！

  + 构造参数方程，应代入验证看是否正确！

  + 读题要细致，图像题要注意是给的哪个函数的图像。

  + #hl[$1^oo$ 类极限不能漏写底数 $e$。]

  + $bold(A)^(upright(T)) bold(A)$ 不要看成  $bold(A) bold(A)^(upright(T))$.

  + 心算时不要过度联想，使 $1/(1 + x^2)$ 变成 $1/(1 + x^2)^2$

  + 二重积分区域对称后不要忘记乘 $2$.

  + 要看清给的坐标点是什么，不要弄混了 $x,y$ 轴。

  + 矩阵初等变换时用铅笔写，写大一点，变一次直接在原矩阵上用橡皮修改！

  + $integral x dif x = integral 1/2 dif x^2$  一定不要忘记 $1/2$.

  + $f^-(f(x)) = x != 1$ 一定要记得！

  + 积分上下限在计算过程中抄错。
]

= 函数、极限、连续

== 函数及其性质
#qst(`*`)[
  反三角函数主值区间问题。
]



#qst("变限积分相关的函数周期性的判别")[

]

#qst("变限积分相关的函数奇偶性的判别")[

]

// #qst(`A P6 E1`)[
//   已知函数 $f \( x \) = (integral_0^x ln(1 + t^2) dif t) / (x^alpha)$ 在 $( 0 , + oo )$ 上有界，求 $alpha$ 的取值范围.
// ]

// #qst(`A P17 E1`)[

//   + $lim_(x -> 1) (ln cos(x - 1)) / (1 - sin pi / 2 x)$
// ]

== 极限的定义及其性质

#qst(`B P129 E5`)[
  已知 $a_n = 1 - frac(\( - 1 \)^n, n) med \( n = 1 \, 2 \, dots.h.c \)$，判断 ${ a_n }$ 是否有最大最小值.
]

#qst(`B P131 E7`)[
  当 $x arrow.r 0$ 时，判断 $1 / x sin 1 / x$ 是无界变量还是无穷大量.
]

#qst(`302 08 p33`)[
  设函数 $f \( x \)$ 在 $\( - oo \, + oo \)$
  内单调有界，${ x_n }$ 为数列，判断下列命题是否正确.
  #set enum(numbering: "A.")

  #qg2c(
    [
      + 若 ${ x_n }$ 收敛，则 ${ f \( x_n \) }$ 收敛.

      + 若 ${ x_n }$ 单调，则 ${ f \( x_n \) }$ 收敛.
    ],
    [
      3. 若 ${ f \( x_n \) }$ 收敛，则 ${ x_n }$ 收敛.

      + 若 ${ f \( x_n \) }$ 单调，则 ${ x_n }$ 收敛.
    ],
  )
]

// == 函数极限的计算

== 求极限
#qst(`880 §1 Bc Q11`)[
  $lim_(x arrow.r oo) x^2 [e^((1 + 1 / x)^x) - (1 + 1 / x)^(e x)]$.
]

#qst(`880 §1 Bc Q17`)[

  #set enum(numbering: "i", start: 1)
  + 当 $lr(|x|) < 1$ 时，求
    $ lim_(n arrow.r oo) (1 + x) (1 + x^2) (1 + x^4) dots.h.c (1 + x^(2^n)). $

  + 当 $lr(|x|) eq.not 0$ 时，求
    $ lim_(n arrow.r oo) cos x / 2 cos x / 4 dots.h.c cos x / 2^n. $

  + 求 $ lim_(x arrow.r pi / 2) frac((1 - sqrt(sin x)) (1 - root(3, sin x)) dots.h.c (1 - root(n, sin x)), (1 - sin x)^(n - 1)) $
]


#qst(`880 §1 Bc Q18`)[
  设 $f (x)$ 是三次多项式，且有
  $lim_(x arrow.r 2 a) frac(f (x), x - 2 a) = lim_(x arrow.r 4 a) frac(f (x), x - 4 a) = 1 thin (a eq.not 0)$，求
  $lim_(x arrow.r 3 a) frac(f (x), x - 3 a)$。
]

=== 无穷小的比阶
TODO


== 数列极限

// #qst(`C §2 E3`)[
//   设 ${ a_n }$ 非负有界，$b_n = sum_(k = 1)^n frac(k, a_n + n^2)$，求
//   $lim_(n arrow.r oo) 1 / b_n$.
// ]

#qst(`A P13 E5`)[
  证明：
  + 若 $lim_(n arrow.r oo) a_(n + 1) / a_n = a$，且 $\|a| < 1$，则 $lim_(n arrow.r oo) a_n = 0$；

  + $lim_(n arrow.r oo) frac(2^n n !, n^n) = 0 \, lim_(n arrow.r oo) frac(3^n n !, n^n) = + oo$.
]

=== 单调有界准则

#qst(`A P14 E6`)[
  + 证明：对任意的正整数 $n$，都有 $1 / (n + 1) < ln(1 + 1 / n) < 1/n$ 成立。

  + 设 $a_n = 1 + 1 / 2 + ... + 1 / n - ln n, (n = 1, 2, ...)$ ，证明数列 ${ a_n }$ 收敛。
]

#qst(`880 §1 Ac Q10`)[
  设 $x_1 = sqrt(a) thin (a > 0) , x_(n + 1) = sqrt(a + x_n)$, 证明:
  $lim_(n arrow.r oo) x_n$ 存在, 并求其值.

  #ps[
    在证明单调有界中的有界时，要充分利用所给条件或隐含条件的不等式。例如此题在证明有界时就结合了 #hl[单调性] 带来的不等关系 $x_n > x_1 > sqrt(a)$ 来证明有界，另外再构造不等式时，出了加减还可以乘除。
  ]
]

#qst(`880 §1 Ac Q11`)[
  设
  $x_1 = a gt.eq 0 , y_1 = b gt.eq 0 , a lt.eq b , x_(n + 1) = sqrt(x_n y_n) , y_(n + 1) = frac(x_n + y_n, 2) (n = 1 , 2 , dots.h.c)$, 证明: $lim_(n arrow.r oo) x_n = lim_(n arrow.r oo) y_n$.

  #ps[
    跟上面这道题一样，倒在证明有界了，对于你这种几乎没有数学直觉的人，最好是把 #hl[所有的不等关系列出来] 吧，明明那么简单的不等关系硬是看不出来。
  ]
]

#qst(`880 §1 Bc Q6`)[
  设 $f_n (x) = 1 - (1 - cos x)^n (n = 1 , 2 , dots.h.c)$.

  #set enum(numbering: "i.", start: 1)
  + 证明：方程 $f_n (x) = 1 / 2$ 在 $(0 , pi / 2)$ 内有且仅有一个实根
    $x_n$；

  + 设 $x_n in (0 , pi / 2)$，满足
    $f_n (x_n) = 1 / 2$，证明：$arccos 1 / n < x_n < pi / 2$，且
    $lim_(n arrow.r oo) x_n = pi / 2$.
]

#req(`880 §1 Bc Q20`)[
  设 $x_1 = 1 / 2 , x_(n + 1) = x_n^2 + x_n (n = 1 , 2 , dots.h.c)$，求极限
  $ lim_(n arrow.r oo) (frac(1, x_1 + 1) + frac(1, x_2 + 1) + dots.h.c + frac(1, x_n + 1)) . $

  #ps[
    除了等价变换之外，还要确定 $1/x_n$ 极限的存在性。
  ]
]

#qst(`880 §1 Bc Q21`)[
  设 $a_n = integral_0^1 sin x^n thin dif x$,
  $b_n = integral_0^1 sin^n x thin dif x$ $(n = 1 , 2 , dots.h.c)$，证明：

  #set enum(numbering: "(i)", start: 1)
  + $0 lt.eq b_n lt.eq a_n$；

  + $lim_(n arrow.r oo) a_n = lim_(n arrow.r oo) b_n = 0$。
]

#qst(`880 §1 Bc Q23`)[
  + 证明：方程 $sin x = (ln x)^(1 / n)$ ($n = 1 , 2 , dots.h$) 在
    $(pi / 2 , e)$ 内有唯一实根 $x_n$；

  + 在第 1 小题的基础上，求极限
    $ lim_(n arrow.r oo) (frac(pi sin x_n, 2 x_n))^(frac(1, x_n - pi / 2)) $

    #ps[
      #set enum(numbering: "1", start: 1)
      此题在证明极限存在时有两种方法:
      + 单调有界准则，但是题目没有给 $x_(n + 1) = f(x_n)$，没有给出递推关系，故涉及到 #hl[函数簇]。其中单调性的判断比较复杂。
      + 夹逼准则。
    ]
]

#qst(`880 §3 Bc Q22`)[
  设 $a_n = integral_0^pi x sin^n x thin dif x$
  ($n = 1 , 2 , dots.h.c$).

  + 证明：$a_n = frac(n - 1, n) a_(n - 2)$ ($n = 3 , 4 , dots.h.c$)；

  + 求 $lim_(n arrow.r oo) a_n / a_(n - 1)$。
]


=== 压缩映射
#qst(`A P36 E4`)[
  设 $x_1 = 2 \, x_(n + 1) = 2 + 1 / x_n med \( n = 1 \, 2 \, dots.h.c \)$，求极限 $lim_(n arrow.r oo) x_n$.

  #ps[压缩映射]
]



#qst(`A P36 E5`)[
  设 $f \( x \)$ 可微，且 $0 < f' \( x \) lt.eq frac(1, 2 + x^2)$，数列 $x_0 = A \, x_n = f \( x_(n - 1) \) \, n = 1 \, 2 \, dots.h.c$. 证明 $lim_(n arrow.r oo) x_n$ 存在且是方程 $f \( x \) = x$ 的唯一实根.
]

#qst(`B P142 E17`)[
  判断 “存在正整数 $N$，当 $n gt.eq N$ 时，恒有
  $\|x_n - a| lt.eq 1 / n$ ” 是否与数列 ${ x_n }$ 收敛于 $a$ 等价。
]

#qst(`B P140 E15`)[
  已知方程 $x = cos x$ 在 $(0 \, pi / 3)$ 内有唯一实根 $a$，设 $- 1 lt.eq x_1 lt.eq 1$，定义 $x_(n + 1) = cos x_n\, n = 1\, 2\, dots.h.c$，证明 $lim_(n arrow.r oo) x_n$ 存在，且极限值是 $a$。

  #ps[压缩映射]
]


// == 无穷小的比阶

== 函数的连续与间断

#qst(`A P44 E1`)[
  设函数 $f \( x \) = frac(x, a + e^(b x))$ 在 $\( - oo \, + oo \)$ 内连续，且 $lim_(x arrow.r - oo) f \( x \) = 0$，则常数 $a\, b$ 应满足什么条件 ？
]

#qst(`B P229 E2`)[
  若函数 $f \( x \) = frac(1, x e^(- x) - a)$ 在
  $\( - oo \, + oo \)$ 内处处连续，求常数 $a$ 的取值范围。
]

#qst(`A P45 E2`)[
  设 $f \( x \)$ 和 $phi \( x \)$ 在 $\( - oo \, + oo \)$ 上有定义，$f \( x \)$ 为连续函数，且 $f \( x \) eq.not 0 \, phi \( x \)$ 有间断点，判断 $phi ( f ( x ) ), \[ phi \( x \) \]^2, f( phi ( x ) ), frac(phi \( x \), f \( x \))$ 是否有间断点。
]

#qst(`A P46 E5`)[
  求极限
  $lim_(t arrow.r x) (frac(sin t, sin x))^(x \/ (sin t - sin x))$，记此极限为
  $f \( x \)$，求函数 $f \( x \)$ 的间断点并指出类型。
]

#qst(`A P48 E4`)[
  设 $f \( x \)$ 在 $\( - oo \, + oo \)$ 上连续，且 $lim_(x arrow.r oo) frac(f \( x \), x) = 0$，试证存在 $xi in \( - oo \, + oo \)$，使 $f \( xi \) + xi = 0$.
]


// #qst(`302 02 p45`)[
//   设函数 $f \( x \)$ 在 $x = 0$ 的某邻域内具有二阶连续导数，且 $f (0) != 0,$$f' \( 0 \) eq.not 0 \, f'' \( 0 \) eq.not 0$。证明：存在唯一的一组实数 $lambda_1 \, lambda_2 \, lambda_3$，使得当 $h arrow.r 0$ 时，$lambda_1 f \( h \) + lambda_2 f \( 2 h \) + lambda_3 f \( 3 h \) - f \( 0 \)$ 是比 $h^2$ 高阶的无穷小。
// ]

// #qst(`302 06 p46`)[
//   试确定常数 $A \, B \, C$ 的值, 使得
//   $e^x \( 1 + B x + C x^2 \) = 1 + A x + o \( x^3 \)$，其中 $o \( x^3 \)$
//   是当 $x arrow.r 0$ 时比 $x^3$ 高阶的无穷小量。
// ]


#pagebreak()

= 一元函数微分学

// #annotation[
//   + $f(x)$ 与 $|f(x)|$ 的在连续与可导上关系

//   + $sqrt(x^2) = |x|$

//   + 罗尔定理的推论

//   + 实系数奇次方程至少有一个根

//   + $(x - a)^alpha (x - b)^beta ...$ 形式的方程的极值点与拐点个数的推论

//   + 物理应用
// ]

// #qst(`A P55 E3`)[
//   设函数 $f \( x \)$ 在 $x = 0$ 处连续，且 $lim_(x arrow.r 0) [frac(f \( x \), x) + frac(ln \( 1 + x \), x^2)] = 3 / 2$，求 $f(0), f'(0)$.
// ]

// #qst(`A P71 E5`)[
//   设 $f \( x \)$ 二阶可导，且 $lim_(h arrow.r 0) frac(f \( x_0 + h \) - f \( x_0 \) - f' \( x_0 \), h^2) = a eq.not 0$，试讨论 $f \( x \)$ 在 $x_0$ 点的极值。

//   #ps[函数和常数还分不清真有点闹麻了]
// ]

// #qst(`302 02 {B-p228 e21, p133 e10}`)[
//   设 $0 < a < b \,$ 证明不等式 $frac(2 a, a^2 + b^2) < frac(ln b - ln a, b - a) < 1 / sqrt(a b) .$
//   #ps[不要在一棵树上吊死]
// ]
// #qst(`302 90 p109 e7`)[
//   求曲线 $y = frac(1, 1 + x^2)$ $(x > 0)$ 的拐点。
//   #ps[计算]
// ]
// #qst(`302 94 p130 e6`)[
//   设 $f(x)$ 在 $[0,1]$ 上连续且递减，证明：当 $0 < lambda < 1$ 时，有 $integral_0^lambda f (x) thin  dif  x gt.eq lambda integral_0^1 f (x) thin dif x .$
//   #ps[想想别的做法]
// ]
// #qst(`302 95 p131 e7`)[
//   设 $lim_(x arrow.r 0) frac(f (x), x) = 1$，且 $f'' (x) > 0$，证明
//   $f (x) gt.eq x$。
//   #ps[想想别的做法，中值定理，泰勒公式]
// ]

== 概念题

#qst(`A P56 E2`)[
  设 $f \( 0 \) = 0$，判断以下是否为 $f \( x \)$ 在点 $x = 0$ 可导的充要条件.
  #set enum(numbering: "A.")
  #qg2c([+ $lim_(h arrow.r 0) 1 / h^2 f \( 1 - cos h \)$ 存在.], [
    2. $lim_(h arrow.r 0) 1 / h^2 f \( h - sin h \)$ 存在.
  ])
]

#qst(`A P58 E5`)[
  设$f(x)$ 连续，总结函数 $|f( x )|$ 在点 $x = a$ 处的可导性与 $f(x)$ 的关系。
]

#qst(`A P61 E4`)[
  判断其是否存在
  $ lim_(x -> 0) (f(x^3 sin 1 / x) - f(0)) / (x^3 sin 1 / x) . $

  #ps[当使用归结原则，令 $x = 1/(n pi)$ 时，且 $n -> oo$，不满足极限的定义（无论尺度有多小，永远也不存在一个满足尺度的临域，因为 $1/(n pi)$ 总在那个临域中，使临域内出现无定义点。)]
]

#qst(`B P151 E3`)[
  设 $f \( x \)$ 在 $x = 0$ 的某邻域内有定义，并且
  $\|f(x)| lt.eq 1 - cos x$，证明 $f \( x \)$ 在 $x = 0$ 处可导且 $f' \( 0 \) = 0$.
]


#qst(`B P221 E12`)[
  设函数 $f \( x \)$ 在 $\[0,1]$ 上二阶可导，且 $integral_0^1 f \( x \) thin dif x = 0$，则当 $f(1 / 2) < 0$ 时，$f'(x)$ 或 $f''(x)$ 需满足什么条件.
]

#qst(`302 98 P96 E11`)[
  设函数 $f (x)$ 在 $x = a$ 的某个邻域内连续，且 $f (a)$
  为其极大值，则存在 $delta > 0$，当 $x in (a - delta , a + delta)$
  时，证明：$ lim_(t arrow.r a) frac(f \( t \) - f \( x \), \( t - x \)^2) gt.eq 0 thin \( x eq.not a \) $
]

// #qst(`880 §2 Aa Q3`)[
//   设 $f (x)$ 为连续函数，且
//   $lim_(x arrow.r 1) frac(f (2 x - 1), x - 1) = 1$，求
//   $ lim_(t arrow.r 0) frac(f [(1 + sin t)^2] - f (1 + sin t), t). $
// ]

#qst(`880 §2 Aa Q10`)[
  设 $f (x)$ 在 $[- 1 , 1]$ 上二阶可导，且 $f'' (x) > 0 , integral_(- 1)^1 f (x) thin dif x = 2$，求 $f (0)$ 的取值范围。

  #ps[注意，对于一个严格不等式，进行什么操作后要加上等号。对于一个非严格不等式，进行什么操作后要去掉等号。]
]

#qst(`880 §2 Aa Q11`)[
  设 $f (x)$ 在 $x = 0$
  的某邻域内连续，$f (0) = 0$，$lim_(x arrow.r 0) frac(f (x), 1 - cos x) = 2$，则
  $f (x)$ 在 $x = 0$ 处（ ）。

  #set enum(numbering: "A.", start: 1)
  #qg2c(
    [
      + 不可导
      + 可导且 $f' (0) eq.not 0$
    ],
    [
      3. 有极小值
      4. 有极大值
    ],
  )
]

#qst(`880 §2 Ac Q8`)[
  设 $f (x)$ 在 $(0 , + oo)$ 内满足 $f (x y) = f (x) + f (y)$，且
  $f' (1) = 1$，证明：$f (x)$ 在 $(0 , + oo)$ 内可导，并求 $f (x)$。
]

#qst(`880 §2 Ba Q7`)[
  设 $f (x)$ 在 $(- 1 , 1)$ 内可导，且
  $lim_(x arrow.r 0) frac(f (x), x^2) = 1$，则（ ）。

  #set enum(numbering: "A")
  #qg2c(
    [
      + $lim_(x arrow.r 0) frac(f' (x), x)$ 存在

      + $f' (0) = 0 , f'' (0) = 2$
    ],
    [
      3. $lim_(x arrow.r 0) frac(f' (x), x)$ 不存在

      4. $f (0)$ 是 $f (x)$ 的极小值
    ],
  )

  #ps[要注意洛必达法则的条件。]
]

#qst(`880 §2 Ba Q21`)[
  设在 $\[ 0 , + oo \)$ 上的可导函数 $y = f (x)$ 满足
  $y' - p (x) y > 0$，且 $f (0) gt.eq 0$，其中 $p (x)$ 在 $\[ 0 , + oo \)$
  上为正值连续函数，当 $0 < a < b$ 时，判断 $f (0) , f (a) , f (b)$ 的大小关系。

  #ps[注意此题可以和一阶线性微分方程的公式联想起来，或者和一些中值定理的题联系起来，构造一个函数的导数为题设函数。]
]

== 计算题

#qst(`880 §2 Ab Q4`)[
  设函数 $f (x)$ 有连续导数，且
  $lim_(x arrow.r 0) [frac(sin x, x^2) + frac(f (x), x)] = 2$，求 $f (x)$
  的一阶麦克劳林展开式。
]

#qst(`880 §2 Ab Q15`)[
  设 $f (x) = ln (sqrt(1 + x^2) - x)$，求
  $f^((5)) (0)$。
]

#qst(`880 §2 Ab Q19`)[
  求 $f (x) = cos lr(|x|) + x^2 lr(|x|)$ 在 $x = 0$
  处存在的最高阶导数的阶数。
]

#qst(`880 §2 Ab Q26`)[
  设函数 $y = y (x)$ 由方程
  $arctan x / y = ln sqrt(frac(x^2 + y^2, 2)) + pi / 4$ ($x > 0 , y > 0$)
  确定，则 $y (x)$ 的极大值为 $underline(quad quad quad)$;。

]

#qst(`B P175 E11`)[
  设函数 $y = y \( x \)$ 由方程
  $x e^(f \( y \)) = e^y ln 2$ 确定，其中 $f$ 具有二阶导数，且
  $f' eq.not 1$，求 $frac(dif^2 y, dif x^2)$.
]


#qst(`302 04 P93 E8`)[
  设 $f \( x \) = integral_x^(x + pi / 2) \|sin t| thin dif t$，求 $f \( x \)$ 的值域。
]

#qst(`302 01 P87 E16`)[
  设 $rho = rho \( x \)$ 是抛物线 $y = sqrt(x)$ 上任一点 $M \( x \, y \)$
  $(x gt.eq 1)$ 处的曲率半径，#v(0em) $s = s (x)$ 是该抛物线上介于点
  $A(1, 1)$ 与 $M$ 之间的弧长, 计算 $3 rho frac(dif^2 rho, dif s^2) - (frac(dif rho, dif s))^2$ 的值.
]

== 微分的几何性质
单调性、凹凸、极值、最值、拐点、渐近线以及根的分布

#qst(`A P73 E3`)[
  曲线 $y = frac(\( 1 + x \)^(3 \/ 2), sqrt(x))$ 的斜渐近线方程为

  #ps[渐近线的定义的推论]
]

#qst(`302 01 P107 E4`)[
  曲线 $y = (x - 1)^2 (x - 3)^2$ 的拐点个数.

  #ref[ `880 §2 Aa Q12`]
]<题目-4-2001年试题>

#qst(`302 96 P122 E3`)[
  在区间 $(- oo , + oo)$ 内，方程
  $lr(|x|)^(1 / 4) + lr(|x|)^(1 / 2) - cos x = 0$ 根的分布情况。
]

#qst(`880 §2 Aa Q22`)[
  设可导函数 $y = y (x)$ 由 $ cases(
    x = arctan t,
    y = ln (1 - t^2) - sin y
  ) $ 确定，则（ ）

  #set enum(numbering: "A.", start: 1)
  #qg2c(
    [
      + $x = 0$ 是 $y = y (x)$ 的极小值点
    ],
    [
      2. $x = 0$ 是 $y = y (x)$ 的极大值点
    ],
  )

  3. 在 $x = 0$ 的邻域 $(- delta , 0) (delta > 0)$ 内，$y = y (x)$ 单调递减

  4. 在 $x = 0$ 的邻域 $(0 , delta) (delta > 0)$ 内，$y = y (x)$ 单调递增

  #ps[ 当
    $
      f = cases(1/2 x + x^2 sin 1/x\, quad &x != 0, 0\, &x = 0)
    $

    $f'(0) > 0$ 但是在 $(- delta, delta)$ 内，其导数是在 $(-1/2, 3/2)$ 振荡的，无法确定其在邻域内的单调性。

    但是当导函数也连续时，可以由保号性推的在邻域内的正负，即可推出邻域内的单调性。
  ]
]

#qst(`880 §2 Ac Q9`)[
  设
  $ f (x) = cases(e^(- 1 / x^2)\, quad & x eq.not 0, 0\, & x = 0,) $
  求 $f^((n)) (0)$。
]

#qst(`880 §2 Ac Q28`)[
  设 $x > 0$，证明：$(1 + frac(1, 2 x)) (1 + 1 / x)^x > e$。
]

#qst(`880 §2 Bb Q4`)[
  设 $ f (x) = cases(delim: "{", - 1 / x\, & x < 0, 1 + ln x\, quad & x > 0) $
  若 $f (a) = f (b)$， $a < 0 < b$，求 $b - a$ 的最小值。
]

#qst(`880 §2 Bc Q4`)[
  设 $f (x) = n x (1 - x)^n$ ($n$ 为正整数)，求 $f (x)$ 在 $[0 , 1]$
  上的最大值 $M (n)$ 及 $lim_(n arrow.r oo) M (n)$.
]


#qst(`880 §2 Bc Q19`)[
  设曲线 $y = 1 / sqrt(x)$ 的一条切线与 $x$ 轴和 $y$ 轴围成一个平面图形
  $D$，

  + 记切点的横坐标为 $a$，求切线方程和图形 $D$ 的面积；

  + 当切点沿曲线趋于无穷远时，该面积的变化趋势如何？
]

#qst(`880 §2 Bc Q21`)[
  设 $f (x) = a_1 sin x + a_2 sin 2 x + dots.h.c + a_n sin n x$，其中
  $a_1 , a_2 , dots.h , a_n$ 为实数，$n$ 为正整数。

  + 求 $f' (0)$；

  + 若
    $lr(|f (x)|) lt.eq lr(|sin x|)$，证明：$lr(|a_1 + 2 a_2 + dots.h.c + n a_n|) lt.eq 1$.
]

#qst(`880 §2 Bc Q25`)[
  设 $f (x)$
  有二阶连续导数，$f (0) = f' (0) = 0 , f'' (0) > 0 , u = u (x)$ 是曲线
  $y = f (x)$ 在点 $(x , f (x))$ 处的切线在 $x$ 轴上的截距，求
  $lim_(x arrow.r 0) frac(x, u (x))$.
]

#qst(`880 §2 Bc Q26`)[
  设 $f (x)$ 在 $x_0$ 的某邻域内有定义，证明：$f (x)$ 在 $x_0$
  处可导的充分必要条件是存在在 $x = x_0$ 处连续的函数 $g (x)$，使得
  $f (x) - f (x_0) = (x - x_0) g (x)$.
]
#req(`880 §2 Bc Q27`)[
  证明：方程 $sum_(k = 0)^(2 n + 1) frac(x^k, k !) = 0$ ($n$ 为正整数)
  有且仅有一个实根.
]


== 不等式的证明
#qst(`A P79 E2`)[
  求证： $ ln(b / a) > frac(2 \( b - a \), b + a) quad \( 0 < a < b \) . $
]

#qst(`B P227 E20`)[
  证明 $ (ln frac(1 + x, x) - frac(1, 1 + x))^2 < frac(1, x \( 1 + x \)^2) quad \( x > 0 \). $
]
#qst(`302 00 P132 E9`)[
  函数 $f (x)$ 在 $\[ 0 , + oo \)$ 上可导，$f (0) = 1$，且满足等式
  $ f' (x) + f (x) - frac(1, x + 1) integral_0^x f (t) thin dif t = 0 . $
  + 求导数 $f' (x)$.

  + 证明：当 $x gt.eq 0$ 时，不等式 $e^(- x) lt.eq f (x) lt.eq 1$ 成立.
]



#qst(`302 98 p131 e8`)[
  设 $x in (0 , 1)$，证明：

  + $(1 + x) ln^2 (1 + x) < x^2$.

  + $frac(1, ln 2) - 1 < frac(1, ln (1 + x)) - 1 / x < 1 / 2$.
]

#req(`880 §2 Ac Q28-Q36`)[
  880 的微分不等式的习题。
]

== 高阶导数
#qst(`880 §2 Bb Q9`)[
  设 $f (x)$ 为 $(- 1 , + oo)$ 内的连续函数,
  $f (x) = integral_0^x e^(- f (t)) thin dif t$，若
  $g (x) = x f (x + 1)$，求 $g^((n)) (0), (n > 2)$.
]



== 微分中值定理 bad

#qst(`A P85 E6`)[
  设函数 $f \( x \) \, g \( x \)$ 在 $\[a,b]$
  上二阶可导，且
  $g'' \( x \) eq.not 0 \, f \( a \) = f \( b \) = g \( a \) = g \( b \) = 0$。试证

  + 在 $\(a,b)$ 内 $g \( x \) eq.not 0$；

  + 在 $\(a,b)$ 内至少有一点 $xi$，使
    $frac(f \( xi \), g \( xi \)) = frac(f'' \( xi \), g'' \( xi \))$。
]

#qst(`A P86 E9`)[
  设 $f(x)$ 在 $[ 0, 1]$
  上连续，$f(0) = 0 , integral_0^1 f \( x \) thin dif x = 0$。求证：存在
  $xi in (0, 1)$，使
  $integral_0^xi f \( x \) thin dif x = xi f \( xi \)$.
]

#qst(`A P88 E5`)[
  设 $f \( x \)$ 在 $\[0,1]$ 上连续，在
  $\(0,1)$ 内可导，且
  $f \( 0 \) = 0 \, f \( 1 \) = 1$，试证对任意给定的正数 $a \, b$，在
  $\(0,1)$ 内一定存在互不相同的 $xi \, eta$，使
  $frac(a, f' \( xi \)) + frac(b, f' \( eta \)) = a + b$.
]

#qst(`A P89 E2`)[
  设 $f \( x \)$ 在 $[0,1]$ 上三阶可导，$f \( 0 \) = 0 \, f \( 1 \) = 1 \, f' (1 / 2) = 0$。求证：存在 $xi in \(0,1)$，使 $\|f''' \( xi \)\| gt.eq 24$。
  #ps[函数在一点的泰勒展开的自变量不同取值时的拉格朗日余项不同]
]

#qst(`A P90 E3`)[
  设 $f (x)$ 在 $[0,1]$ 上有二阶连续导数，且
  $f (0) = f (1) = 0 , limits(min)_(0 lt.eq x lt.eq 1) f (x) = - 1$，证明：$limits(max)_(0 lt.eq x lt.eq 1) f'' (x) gt.eq 8$.
]

#qst(`B P229 e8`)[
  设 $f(x)$ 在 $\[0,1]$ 上具有二阶导数，且满足条件 $abs(f(x)) lt.eq a, abs(f''(x)) lt.eq b$，其中 $a, b$ 都是非负常数，$c$ 是 $\(0,1)$ 内任意一点。

  + 写出 $f(x)$ 在点 $x = c$ 处带拉格朗日型余项的一阶泰勒公式；

  + 证明 $|f'(x)| lt.eq 2 a + b / 2$。
]

#qst(`302 00 p143 e11`)[
  设函数 $f (x)$ 在 $[0 , pi]$ 上连续，且
  $ integral_0^pi f (x) thin dif x = 0 , integral_0^pi f (x) cos x thin dif x = 0 . $
  证明：在 $(0 , pi)$ 内至少存在两个不同的点 $xi_1 , xi_2$，使
  $f (xi_1) = f (xi_2) = 0$。

]


#qst(`302 07 p146 e15`)[
  设函数 $f (x) , g (x)$ 在 $[a , b]$ 上连续，在 $(a , b)$
  内具有二阶导数且存在相等的最大值，$f (a) = g (a) , f (b) = g (b)$，证明：存在
  $xi in (a , b)$，使得 $f'' (xi) = g'' (xi)$。

]


#qst(`302 08 p147 e16`)[
  + 证明积分中值定理：若函数 $f (x)$ 在闭区间 $[a , b]$
    上连续，则至少存在一点 $eta in [a , b]$，使得
    $ integral_a^b f (x) thin dif x = f (eta) (b - a) . $

  + 若函数 $phi (x)$ 具有二阶导数，且满足
    $phi (2) > phi (1) , phi (2) > integral_2^3 phi (x) thin dif x$，则至少存在一点
    $xi in (1 , 3)$，使得 $phi'' (xi) < 0$.
]



#qst(`302 02 p137 e4`)[
  设函数 $y = f (x)$ 在 $(0 , + oo)$ 内有界且可导，判断下列命题是否正确。

  #set enum(numbering: "A.")
  + 当 $limits(lim)_(x arrow.r + oo) f (x) = 0$ 时，必有 $limits(lim)_(x arrow.r + oo) f' (x) = 0$.

  2. 若 $limits(lim)_(x arrow.r + oo) f' (x)$ 存在，必有 $limits(lim)_(x arrow.r + oo) f'(x) = 0$.
]


#req(`880 §2 Ac Q14-Q26, Bc Q7-Q16 Q29-Q32`)[
  880 中值定理的习题。
]

// ----------------

#pagebreak()

= 一元函数积分学

== 求积分

#show math.equation.where(block: false): math.display
#qst(`A P97 E8`)[
  $ I = integral frac(1 + x^4, 1 + x^6) thin dif x. $
]

#qst(`A P98 E13`)[
  $ I = integral 1 / x sqrt(frac(x + 1, x - 1)) thin dif x. $
]

#qst(`A P107 E2`)[
  $ I = integral_0^(n pi) sqrt(1 - sin 2 x) thin dif x . $
]

// #qst(`302 98 p168 e12`)[

//   $I = integral frac(ln (sin x), sin^2 x) thin  dif  x$
// ]

#req(`302 94 p170 e18`)[
  $ integral frac(dif x, sin 2 x + 2 sin x) $
]

#req(`A P98 E11`)[
  $ I = integral frac(dif x, sin x dot.op cos^4 x) $
  #ps[ $1$ 的妙用]
]

#qst(`A P109 E8`)[
  $ I = integral_0^(pi / 2) frac(sin x, sin x + cos x) thin dif x . $
]

#qst(`302 03 p167 e10`)[
  $ I = integral frac(x e^(arctan x), (1 + x^2)^(3 / 2)) thin dif x $
]

#qst(`302 08 p182 e21`)[
  $ integral_0^1 frac(x^2 arcsin x, sqrt(1 - x^2)) thin dif x. $
]

#qst(`880 §3 Ac Q1 I`)[
  $ integral frac(2^x dot.op 3^x, 9^x - 4^x) thin dif x . $

]

#qst(`880 §3 Ac Q6 II`)[
  $ integral_0^pi e^(- cos x) - e^(cos x) thin dif x . $
]


// // https://space.bilibili.com/324274826/dynamic
// #qset([`source:` #link("https://www.bilibili.com/opus/1063481512218853397", underline("link"))])[

//   #show math.equation.where(block: false): math.display
//   #qg2c(
//     [
//       #qst("day 1")[
//         + $integral frac(1, a + b cos x) dif x quad (a b eq.not 0)$

//         + $integral frac(1, a sin x + b cos x) dif x quad (a b != 0)$

//         + $integral frac(1, a sin x + b cos x + c) dif x quad (a b != 0)$
//       ]

//       #qst("day 2")[

//         + $integral frac(1, sin 2 x + sin x) dif x$

//         + $integral sqrt(1 + cos 2 x) dif x$
//       ]

//       #qst("day 3")[
//         $integral frac(cos^3 x - 2 cos x, 1 + sin^2 x + sin^4 x) thin  dif  x$
//       ]

//       #qst("day 4")[
//         + $integral_0^oo frac(1, (1 + x^2) (1 + x^alpha)) thin  dif  x$

//         + $integral frac(1, (x^2 + 1) (x^2 + x + 1)) thin  dif  x$
//       ]

//       #qst("day 5")[

//         + $& integral frac(1, x sqrt(x^2 - 1)) thin dif x$

//         + $& integral x / sqrt(1 + x^2 + sqrt((1 + x^2)^3)) thin dif x$
//       ]
//     ],
//     [ ],
//   )
// ]


// #qst(`A P115 E7`)[
//   证明 $F (x) = integral_x^(x + 2 pi) e^(sin t) sin t thin  dif  t$ 为正常数.
// ]

#qst(`A P116 E8`)[
  证明 $F (x) = integral_0^x (t - t^2) sin^(2 n) t thin dif t$ 在
  $x gt.eq 0$ 上最大值不超过 $frac(1, (2 n + 2) (2 n + 3))$。
]



#qst(`302 98 p188 e8`)[
  设 $f (x)$ 连续，求
  $frac(dif, dif x) integral_0^x t f (x^2 - t^2) thin dif t$.
]

#qst(`880 §3 Aa Q12`)[
  设 $f (t) = integral_0^1 ln sqrt(x^2 + t^2) thin dif x$，则 $f (t)$ 在
  $t = 0$ 处。

  #set enum(numbering: "A.")
  + 极限不存在

  + 极限存在但不连续

  + 连续但不可导

  + 可导
]

#qst(`880 §3 Ac Q12`)[
  设 $g (x) = integral_0^(sin x) f (t x^2) thin dif t$ ，其中 $f (x)$ 是连续函数，且  $f (0) = 1$ ，求 $g' (x)$ 。
]

#qst(`880 §3 Bc Q6`)[
  设 $f' (x) = arctan (x - 1)^2$, $f (0) = 0$, 求
  $I = integral_0^1 f (x) thin dif x$.
]

#qst(`880 §3 Bc Q10`)[
  计算
  $ lim_(x arrow.r 0) frac(integral_0^(2 x) lr(|1 - t / x|) sin t thin dif t, x^2) . $
]

#qst(`880 §3 Bc Q13`)[
  有 $- e^(-x) -x = integral_(-x)^0 f(u) dif u$，求 $f(x)$。
]

#req(`880 §3 Bc Q24`)[
  + 求积分 $I_n = integral 1 / (x^2 + a^2)^n thin dif x$
    ($n gt.eq 1 , a > 0$) 的递推关系；

  + 计算
    $I = integral frac(3 x + 4, (x^2 + 2 x + 2)^2) thin dif x$。
]


== 概念题

#qst(`880 §3 Ba Q11`)[
  设连续函数 $f (x)$ 满足 $f (x) = f (2 a - x) (a eq.not 0) , b$ 为常数，求 \ $I = integral_(- b)^b f (a - x) thin dif x.$

  #set enum(numbering: "A.")
  + $ 2 integral_0^b f (2 a - x) thin dif x $

  + $ 2 integral_(- b)^b f (2 a - x) thin dif x $

  + $ 2 integral_0^b f (a - x) thin dif x $

  + $ 0 $
]

#qst(`880 §3 Ba Q12`)[
  设螺线
  $r = theta thin (0 lt.eq theta lt.eq 2 pi)$ 与极轴所围区域的面积为 $A$ 则 $A = (quad) .$

  #set enum(numbering: "A.")
  + $ lim_(n arrow.r oo) sum_(i = 1)^n frac(4 pi^3 i^2, n^3) $

  + $ lim_(n arrow.r oo) sum_(i = 1)^n frac(4 pi^3 i^2, n^2) $

  + $ lim_(n arrow.r oo) sum_(i = 1)^n frac(8 pi^3 i^2, n^3) $

  + $ lim_(n arrow.r oo) sum_(i = 1)^n frac(2 pi^3 i^2, n^2) $
]

#qst(`880 §3 Bb Q1`)[
  设 $f (x) = max { 1 , x^2 }$ 在 $(- oo , + oo)$ 内满足 $F (0) = 1$
  的一个原函数为 $underline(quad quad quad)$;。
]

#qst(`880 §3 Bb Q2`)[
  设 $f (x)$ 在 $[a , b]$ 上连续，若
  $x_0 in [a , b] , x in [a , b]$，则极限
  $
    lim_(Delta x arrow.r 0) frac(1, Delta x) integral_(x_0)^x [f (t + Delta x) - f (t)] dif t = underline(quad quad quad) .
  $

  #ps[
    极限与积分符号一般情况下不能交换位置。

    故不能直接将原式转化为 $integral_(x_0)^x lim (f(t + Delta x) - f(t))/(Delta x) dif t$
  ]
]
#qst(`880 §3 Bb Q9`)[
  已知曲线 $y = y (x)$ 上任一点 $(x , y)$ 处的切线的斜率为
  $frac(1, x sqrt(x^2 - 1))$，且曲线通过点 $(- 2 , 0)$，则该曲线方程为
  $y = underline(quad quad quad)$。
]


== 定积分比大小
#ref[
  https://www.bilibili.com/video/BV1M34y1W7FV
]

#req(`880 §3 Aa Q8`)[
  设
  $
    I_1 = integral_0^pi frac(x sin^2 x, 1 + e^(cos^2 x)) thin dif x , quad
    I_2 = integral_0^pi frac(sin^2 x, 1 + e^(cos^2 x)) thin dif x , quad
    I_3 = integral_0^(pi / 2) frac(cos^2 x, 1 + e^(sin^2 x)) thin dif x ,
  $
  判断三者大小.
]

== 定积分等式与不等式 bad
#qst(`880 §3 Ba Q7`)[
  设 $f (x)$ 在 $[0 , 1]$
  上可导，$f (x) > 0 , f' (x) < 0 , F (x) = integral_0^x f (t) thin dif t$，则在
  $x in (0 , 1)$ 内，有（#h(2em)）

  #set enum(numbering: "A.")
  + $x F (1) > 2 integral_0^1 F (x) thin dif x$

  + $F (1) > 2 integral_0^1 F (x) thin dif x$

  + $F (x) < 2 integral_0^1 F (x) thin dif x$

  + $F (x) > 2 integral_0^1 F (x) thin dif x$
]

#qst(`880 §3 Ba Q9`)[
  设 $f (x)$ 二阶可导，判断下列结论的正确性。

  + 当 $f' (x) < 0$ 时，$integral_(- pi)^pi f (x) sin x thin dif x < 0$；

  + 当 $f' (x) < 0$ 时，$integral_(- pi)^pi f (x) sin x thin dif x > 0$；

  + 当 $f'' (x) > 0$ 时，$integral_(- pi)^pi f (x) cos x thin dif x > 0$；

  + 当 $f'' (x) > 0$ 时，$integral_(- pi)^pi f (x) cos x thin dif x < 0$。

]

#qst(`880 §3 Ba Q19`)[
  已知$ I = integral_0^(+ oo) (1 / sqrt(x^2 + 4) - frac(a, x + 2)) thin dif x $ 收敛，则

  #set enum(numbering: "A.")
  + $a = 1 , I = ln 4$

  + $a > 1 , I = ln 2$

  + $a = 1 , I = ln 2$

  + $a < 1 , I = ln 4$
]

#req(`880 §3 Bc Q21`)[
  设
  $a_n = integral_0^(pi / 4) tan^n x thin dif x$，证明：$ frac(1, 2 (n + 1)) < a_n < frac(1, 2 (n - 1)) quad (n gt.eq 2) . $
]


#req(`880 §3 Bc Q24`)[
  证明：$f (x) = integral_0^x (t - t^2) sin^(2 n) t thin dif t$
  ($x > 0$) 的最大值为 $f (1)$，且
  $ f (1) lt.eq frac(1, (2 n + 2) (2 n + 3)) . $
]

#req(`880 §3 Bc Q26`)[
  这里将 $integral_a^b f (x) thin dif x$ 写成
  $integral_a^b f (x) thin dif (x - a)$ 的技巧值得注意。又如下例：

  设 $f (x)$ 在 $[0 , 1]$ 上有连续导数，且 $f (0) = f (1) = 0$，证明：
  $
    lr(|integral_0^1 f (x) thin dif x|) lt.eq M / 4 , quad M = max_(0 lt.eq x lt.eq 1) lr(|thin f ' (x) thin|) .
  $

  #proof[
    $ integral_0^1 f (x) thin dif x = integral_0^1 f (x) thin dif (x - 1 / 2) = lr(f (x) (x - 1 / 2)|)_0^1 - integral_0^1 (x - 1 / 2) f' (x) thin dif x \ = 0 - integral_0^1 (x - 1 / 2) f' (x) thin dif x , $ 故
    $
      lr(|integral_0^1 f (x) thin dif x|) = lr(|integral_0^1 (x - 1 / 2) f ' (x) thin dif x|) lt.eq integral_0^1 lr(|x - 1 / 2|) lr(|f ' (x)|) thin dif x
    $
    $ lt.eq integral_0^1 lr(|x - 1 / 2|) dot.op M thin dif x = M integral_0^1 lr(|x - 1 / 2|) thin dif x $
    $
      = M [integral_0^(1 / 2) (1 / 2 - x) thin dif x + integral_(1 / 2)^1 (x - 1 / 2) thin dif x] = M / 4 .
    $
  ]
]

#req(`880 §3 Bc Q27`)[
  设 $f (x)$ 在 $[a , b]$ 上二阶可导，且 $f'' (x) > 0$，证明：
  $ f (frac(a + b, 2)) < frac(1, b - a) integral_a^b f (x) thin dif x < frac(f (a) + f (b), 2) . $
]
#qst(`A P119 E3`)[
  设 $f (x)$ 在 $[0, 1]$ 上可导，且
  $f (0) = 0 , 0 < f' (x) < 1$。求证：
  $ (integral_0^1 f (x) thin dif x)^2 > integral_0^1 f^3 (x) thin dif x . $
]

#qst(`A P121 E6`)[
  设 $f (x)$ 在 $[0, 1]$ 上有连续导数，且
  $f (0) = 0$，求证：
  $ integral_0^1 f^2 (x) thin dif x lt.eq {1/2, 1/4, 1/8} dot.op integral_0^1 f'^2 (x) thin dif x . $
]

#qst(`A P116 E10`)[
  设函数 $f (x)$ 在 $(0, + oo)$
  内连续，$f (1) = 5 / 2$，且对所有 $x, t in (0, + oo)$ 满足条件
  $ integral_1^(x t) f (u) thin dif u = t integral_1^x f (u) thin dif u + x integral_1^t f (u) thin dif u $ 求 $f (x)$。
]

// #qst(`A P118 E2`)[
//   设 $f (x)$ 在 $[0, 1]$ 上连续，单调减。证 $ integral_0^a f (x) thin  dif  x gt.eq a integral_0^1 f (x) thin  dif  x quad (0 < a < 1) . $
// ]

// #qst(`A P120 E5`)[
//   设 $f (x)$ 在 $[a, b]$
//   上有连续导数，$f (a) = 0$，求证：
//   $ max_(a lt.eq x lt.eq b) lr(|f ' (x)|) gt.eq 2 / (b - a)^2 integral_a^b lr(|f (x)|) thin  dif  x . $
// ]
#qst(`302 88 p151 e2`)[
  若 $f (x)$ 与 $g (x)$ 在 $(- oo, + oo)$ 上皆可导，且 $f (x) < g (x)$，判断 #v(0.2em) $integral_0^x f (t) thin dif t < integral_0^x g (t) thin dif t$ 是否正确。
]

#qst(`302 87 p159 e16`)[
  在第一象限内求曲线 $y = - x^2 + 1$
  上的一点，使该点处的切线与所给曲线及两坐标轴所围成的图形面积最小，并求此最小面积。
]

#qst(`302 90 p176 e10`)[
  设 $f (x) = integral_1^x frac(ln t, 1 + t) thin dif t$，其中
  $x > 0$，求 $f (x) + f (1 / x)$.
]



#qst(`302 00 p184 e24`)[
  设函数 $S (x) = integral_0^x lr(|cos t|) thin dif t$.

  + 当 $n$ 为正整数，且 $n pi lt.eq x < (n + 1) pi$
    时，证明：$2 n lt.eq S (x) < 2 (n + 1)$.

  + 求 $lim_(x arrow.r + oo) frac(S (x), x)$.

]
#req(`880 §3 Ac Q15`)[
  $
    upright(" 设 ") f (x) upright(" 在") [a , b] upright(" 上连续，且 ") y = f (x) upright(" 的图形关于直线 ") x = frac(a + b, 2) upright(" 对称，证明：")
  $

  $ integral_a^b x f (x) thin dif x = frac(a + b, 2) integral_a^b f (x) thin dif x . $

  #ps[
    若 $y = f (x)$ 关于直线 $x = a thin (a eq.not 0)$ 对称，则
    $f (x) = f (2 a - x)$；若 $y = f (x)$ 关于点 $(a , 0)$ 对称
    $(a eq.not 0)$，则 $f (x) = - f (2 a - x)$。
  ]
]

#req(`880 §3 Bc Q60`)[
  设非负函数 $f (x)$ 在区间 $[0 , 1]$ 上有连续的二阶导数, 且
  $f (0) = 1 , f'' (x) < 0$, 证明：

  + 当 $x in [0 , 1]$ 时, 有
    $ integral_0^x f (t) thin dif t gt.eq 1 / 2 [x f (x) + x] ; $

  + $ integral_0^1 (2 / 3 - x) f (x) thin dif x gt.eq 1 / 6 . $
]


#req(`880 §3 Bc Q28-35`)[
  积分相关证明题。
]



== 反常积分

#req(`A P123 E1`)[
  $integral_0^(+ oo) e^(- x^2) thin dif x$.
]

#qst(`A P126 E3`)[
  $integral_0^(+ oo) frac(x e^(- x), (1 + e^(- x))^2) thin dif x$.
]

#qst(`880 §3 Bb Q14`)[
  设 $integral_0^(+ oo) frac(sin x, x) thin dif x = pi / 2 ,$ 则
  $I = integral_0^(+ oo) frac(sin^2 x, x^2) thin dif x = underline(quad quad quad)$。
]

#qst(`880 §3 Bb Q15`)[
  $ integral_0^(+ oo) frac(x ln x, (1 + x^2)^2) thin dif x = underline(quad) . $
]


#qst(`880 §3 Bb Q17`)[
  已知
  $ integral_0^(+ oo) e^(- t^2) thin dif t = sqrt(pi) / 2 , $
  则曲线
  $ y = (5 x + 9) integral_0^(- x) e^(- t^2) thin dif t + (7 x - 3) integral_0^x e^(- t^2) thin dif t $
  的斜渐近线方程为 $underline(quad quad quad)$;。

]


#qst(`880 §3 Bc Q20`)[
  计算 $ integral_(0)^(+oo) (e^(-x))/(1 + e^x) dif x. $
]

#qst(`A P124 E3`)[
  设 $m , n$ 均是正整数，判断反常积分 $integral_0^1 root(m, ln^2 (1 - x)) / root(n, x) thin dif x$ 的收敛性与 $m, n$ 的取值是否有关.
]

#qst(`A P125 E4`)[
  若反常积分 $integral_e^(+ oo) frac(1, x ln^(a + 1) x) thin dif x$ 收敛，求 $a$ 的取值范围。
]

#req(`A P126 E4`)[
  求证：
  $integral_0^(+ oo) frac(x^2, 1 + x^4) thin dif x = integral_0^(+ infinity) frac(1, 1 + x^4) thin dif x$，并求其值。
]

#pagebreak()

= 多元函数微分学

#qst(`880 §4 Aa Q2`)[
  设 $f'_x (x_0 , y_0) , f'_y (x_0 , y_0)$ 均存在, 则下列选项正确的是.

  + $lim_(x arrow.r x_0 , y arrow.r y_0) f (x , y)$ 存在

  + $f (x , y)$ 在 $(x_0 , y_0)$ 处连续

  + $lim_(x arrow.r x_0) f (x , y_0)$ 存在

  + $f (x , y)$ 在 $accent(U, circle.stroked.tiny) (x_0 , y_0)$ 内有定义
]

#qst(`880 §4 Ab Q7`)[
  设 $ cases(
    y = f (x , t),
    F (x , y , t) = 0
  ) $ $f, F$ 有一阶连续偏导数, 则
  $frac(dif y, dif x) = underline(quad quad)$.
]



#qst(`880 §4 Ac Q1`)[
  设 $u = f (x , y , z)$ 有连续偏导数，$y = y (x)$，$z = z (x)$
  分别由方程 #v(0em) $e^(x y) - y = 0$ 和 $e^z - x z = 0$ 确定，求
  $frac(dif u, dif x)$.
]



#qst(`880 §4 Ac Q11`)[
  设 $z = u / y + e^(- u x) + f (u)$，$u (x , y)$ 满足
  $x e^(- u x) - f' (u) = 1 / y$，其中 $u (x , y)$ 和 $f (u)$ 均可微，且
  $ frac(partial z, partial x) = frac(partial z, partial y) ， $ 求
  $u (x , y)$。
]

#qst(`880 §4 Ba Q3`)[
  证明 $ lim_(x->0 \ y -> 0) (y arctan 1/sqrt(x^2 + y^2) - pi/2 y)/(sqrt(x^2 + y^2)) =0. $
]

#qst(`880 §4 Ba Q4`)[
  设函数 $f (x , y) = x + (y - 1) arcsin sqrt(lr(|x|) / y)$，则在点
  $(0 , 1)$ 处.

  #set enum(numbering: "A.")

  + $f'_x (0 , 1) = f'_y (0 , 1) = 1$

  + $dif f\|_((0 , 1)) = dif y$

  + $dif f\|_((0 , 1)) = dif x$

  + $dif f\|_((0 , 1))$ 不存在

  #ps[此题有个重要的点在于，要写成全微分的形式，必须先证明其可微。]
]

#qst(`880 §4 Bb Q4`)[
  设 $f (x , y)$ 对任意的 $(x , y) in bb(R)^2$ 满足
  $f (x , y) = e^(x + y - 2) + o (rho)$，\ 其中
  $rho = sqrt((x - 1)^2 + (y - 1)^2)$，则
  $ lim_(h arrow.r 0) frac(f (1 + 2 h , 1) - f (1 , 1 - 2 h), h) = underline(#hide[a b c]) . $
]

#qst(`880 §4 Bc Q2`)[
  设 $f$ 有一阶连续导数，证明：$z = f (x / y)$ 的充要条件是
  $x frac(partial z, partial x) + y frac(partial z, partial y) = 0$.

  #ps[对于充分性的证明中，此类题目的思路是“根据一等式证明 $z=f(x/y)$ 是关于自变量 $u = x/y$ 的

    一元函数”，具体证明可以设 $z = f(x/y, phi(x, y))$ 且使 $phi(x, y) != x/y$ 证明 $(diff f)/(diff phi) = 0$ 即可。 ]
]

#qst(`880 §4 Bc Q3`)[
  设 $z = z (x , y)$ 是由方程 $F (1 / x - 1 / y - 1 / z) = 1 / z$
  确定的隐函数，其中 $F$ 可微，求
  $x^2 frac(partial z, partial x) + y^2 frac(partial z, partial y)$.

  #ps[
    不清楚的点在于，求偏导时，什么时候对复合函数内部函数也求偏导，什么时候不用。这是因为对复合函数内部的变量求偏导以及隐函数存在定理存在误用

    + 具体来说，隐函数存在定理推出的公式只是对抽象函数求偏导，即对位置求导数。
    + 而偏导数是对具体变量求导。

    事实上隐函数存在定理也是通过对具体变量求导而证明出来的，所谓对位置求导也是对复合函数内部变量求导的链式法则的一部分。
  ]
]


#qst(`880 §4 Bc Q17`)[
  设
  $
    f (x , y) = cases(delim: "{", x y sin 1 / sqrt(x^2 + y^2)\, quad & (x , y) eq.not (0 , 0), 0\,quad & (x , y) = (0 , 0),)
  $
  讨论偏导数 $frac(partial f, partial x) , frac(partial f, partial y)$ 在点 $(0 , 0)$ 处是否连续。
]
#qst(`880 §4 Bc Q22`)[
  设 $w = x y - z$，$z = z (x , y)$ 有二阶连续的偏导数，且满足
  $ frac(partial^2 z, partial x^2) + 2 frac(partial^2 z, partial x partial y) + frac(partial^2 z, partial y^2) = 0 , $
  作变换 $u = x + y , v = x - y$.

  + 求 $frac(partial^2 w, partial u^2)$;

  + 若 $frac(partial w (0 , v), partial u) = v e^(- v) , w (0 , v) = v^2 / 4$，求 $z (x , y)$ 的表达式.

  #ps[
    注意最后求的表的式的变量是什么，如此题 $z(x, y)$ 就应该将求得的 $w(u, v)$ 转换为 $z(x, y)$。
  ]
]

#req(`A P155 E1`)[
  证明 $f (x , y) = cases(
    frac(x^2 y, x^2 + y^2) quad &(x , y) eq.not (0 , 0),
    0 quad &(x , y) = (0 , 0)
  )$， 在 $(0 , 0)$ 点偏导数存在但不可微.
]

#req(`A P156 E3`)[
  二元函数 $f (x , y)$ 在点 $(0 , 0)$ 处可微的一个充分条件是（ ）
  #set enum(numbering: "A.")

  + $lim_(x arrow.r 0 \ y arrow.r 0) [f (x , y) - f (0 , 0)] = 0$.

  + $lim_(x arrow.r 0) frac(f (x , 0) - f (0 , 0), x) = 0$，且
    $lim_(y arrow.r 0) frac(f (0 , y) - f (0 , 0), y) = 0$.

  + $lim_(x arrow.r 0 \ y arrow.r 0) frac(f (x , y) - f (0 , 0), sqrt(x^2 + y^2)) = 0$.

  + $lim_(x arrow.r 0) [f '_x (x , 0) - f '_x (0 , 0)] = 0$，且
    $lim_(y arrow.r 0) [f '_y (0 , y) - f '_y (0 , 0)] = 0$.
]

#req(`A P157 E4`)[
  如果函数 $f (x , y)$ 在 $(0 , 0)$
  处连续，那么下列命题正确的是（ ）

  #set enum(numbering: "A.")
  + 若极限 $lim_(x arrow.r 0\
    y arrow.r 0) frac(f (x , y), lr(|x|) + lr(|y|))$ 存在，则 $f (x , y)$ 在 $(0 , 0)$ 处可微.

  + 若极限 $lim_(x arrow.r 0 \
    y arrow.r 0) frac(f (x , y), x^2 + y^2)$ 存在，则 $f (x , y)$ 在 $(0 , 0)$ 处可微.

  + 若 $f (x , y)$ 在 $(0 , 0)$ 处可微，则极限 $lim_(x arrow.r 0\
    y arrow.r 0) frac(f (x , y), lr(|x|) + lr(|y|))$ 存在.

  + 若 $f (x , y)$ 在 $(0 , 0)$ 处可微，则极限 $lim_(x arrow.r 0\
    y arrow.r 0) frac(f (x , y), x^2 + y^2)$ 存在.

]

#req(`A P158 E6`)[
  设 $f (x , y) = lr(|x - y|) phi (x , y)$，其中
  $phi (x , y)$ 在点 $(0 , 0)$ 的某邻域内连续，问

  + $phi (x , y)$ 应满足什么条件才能使 $f_x' (0 , 0)$ 和 $f_y' (0 , 0)$ 都存在？

  + 在上述条件下 $f (x , y)$ 在 $(0 , 0)$ 点是否可微？
]

#req(`A P158 E7`)[
  设 $f_x' (x_0 , y_0)$ 存在，$f_y' (x , y)$ 在点 $(x_0 , y_0)$ 处连续，证明：$f (x , y)$ 在点 $(x_0 , y_0)$ 处可微.
]

#req(`A P167 E9`)[
  设 $(r , theta)$ 为极坐标，$u = u (r , theta)$
  具有二阶连续偏导数，并满足 $frac(partial u, partial theta) = 0$，且
  $frac(partial^2 u, partial x^2) + frac(partial^2 u, partial y^2) = 0$，求
  $u (r , theta)$.
]

#req(`A P168 E10`)[
  若对任意 $t > 0$ 有 $f (t x , t y) = t^n f (x , y)$，则称函数 $f (x , y)$ 是 $n$
  次齐次函数，#v(0em) 试证：若 $f (x , y)$ 可微，则 $f (x , y)$ 是 $n$ 次齐次函数
  $arrow.l.r.double x frac(partial f, partial x) + y frac(partial f, partial y) = n f (x , y)$.
]

#req(`A P171 E6`)[
  设 $f (x , y)$ 有二阶连续偏导数，且
  $f'_y eq.not 0$。证明：对任意常数 $C , f (x , y) = C$ 为一条直线
  $arrow.l.r.double f''_2 f''_11 - 2 f'_1 f''_2 f''_12 + f''_1 f''_22 = 0$.
]

== 多元函数求极值

#req(`880 §4 Ac Q3`)[
  设当 $x gt.eq 0 , y gt.eq 0$ 时，有
  $lr(|x^2 - y^2|) dot.op e^(- x^2 - y^2) lt.eq k$ 成立，求 $k$ 的最小值。

  #ps[
    求极值时要区分区间内部点与边界点，区间内部点应用极致判别法求出，而边界点应代入比较。
    在用对称性将区间划分为关于 $y = x$ 对称区间的时候，讨论单独一个区间也要考虑边界内和边界点的情况。

    另有：若边界内的点中任意一偏导数不满足等于零，即不满足机制存在的必要条件，则可判断该边界内无极值点。
  ]
]

#qst(`880 §4 Ac Q6`)[
  求双曲线 $x y = 4$ 与直线 $2 x + y = 1$ 之间的最短距离。

  #ps[当构造的拉格朗日乘数法方程含有绝对值时，可以将其等价为平方形式。]
]

#qst(`880 §4 Ac Q7`)[
  求函数 $z = x^3 - 3 x^2 - 3 y^2$ 在闭区域 $D : x^2 + y^2 lt.eq 16$
  上的最大值。

  #ps[考虑用条件化简极值函数。]
]

#qst(`880 §4 Ac Q9`)[
  在第一象限内，过曲线 $3 x^2 + 2 x y + 3 y^2 = a$
  上任一点作其切线，

  切线与两坐标轴所围成的三角形面积的最小值为 $1 / 4$，求
  $a$ 的值。

  #ps[绝世好题。]
]

#req(`880 §4 Bc Q5-Q15 Q20 Q21`)[
  多元函数极值。
]

#pagebreak()
= 二重积分

== 概念及计算题
#req(`880 §5 Ab Q3`)[
  $
    I = integral_0^1 1 / 3 x^(- 2 / 3) dif x integral_(arctan x)^(pi / 4) csc 2 y med dif y = underline(#hide[a b c a]) .
  $
]
#req(`880 §5 Ab Q8`)[
  设
  $D : - 1 lt.eq x lt.eq 0 , 1 - sqrt(1 - x^2) lt.eq y lt.eq - x$，则
  $
    I = integral.double_D frac(dif x dif y, sqrt(x^2 + y^2) sqrt(4 - x^2 - y^2)) = underline(#hide[a b c]) .
  $

  #ps[
    此题需要注意反三角函数的主值区间。
  ]
]

#req(`880 §5 Ab Q9`)[
  设 $D : 2 x lt.eq x^2 + y^2 , thin 0 lt.eq y lt.eq x lt.eq 2$，则
  $ I = integral.double_D frac(dif x dif y, sqrt(x^2 + y^2)) = underline(#hide[a b c]) . $
]

#req(`880 §5 Ab Q10`)[
  设
  $D = { (x , y) divides 0 lt.eq y lt.eq 1 - x , 0 lt.eq x lt.eq 1 }$，则
  $ integral.double_D e^(frac(x, x + y)) dif x dif y = underline(#hide[a b c]) . $

  #ps[
    此题有多种解法，如二重积分换元，极坐标。
  ]
]
#req(`880 §5 Ab Q12`)[
  设区域 $D$ 由 $x = - sqrt(2 y - y^2)$, $x = - 2$, $y = 0$, $y = 2$
  所围，则
  $ I = integral.double_D y thin dif x dif y = underline(#hide[a b c]) . $

  #ps[
    此题有多种方法，如形心，割补法。
  ]
]

#req(`880 §5 Ab Q12`)[
  计算
  $
    (2 sqrt(2))/3 integral_0^(pi/4) (1 - sin^2 theta) dif(sin theta)
  $
]

#req(`880 §5 Ac Q6`)[
  设
  $D = { (x , y) divides 0 lt.eq x lt.eq 2 , 0 lt.eq y lt.eq sqrt(2 x - x^2) }$，计算
  $ I = integral.double_D lr(|x + y - 2|) thin dif x dif y . $
]

#req(`880 §5 Ac Q7`)[
  设 $D : 1 lt.eq x^2 + y^2 lt.eq 2 x , y gt.eq 0$，计算
  $ I = integral.double_D frac(y, (1 + x^2 + y^2) sqrt(x^2 + y^2)) thin dif x dif y . $
]

// #req(`880 §5 Ac Q8`)[
//   设 $D : 0 lt.eq x lt.eq 2 , 0 lt.eq y lt.eq 2$，计算
//   $ I = integral.double_D [1 + x + y]  dif  x  dif  y , $ 其中
//   $[1 + x + y]$ 表示不超过 $1 + x + y$ 的最大整数。
// ]

#req(`880 §5 Ac Q9`)[
  (9) 设
  $D = { (x , y) divides 0 lt.eq x lt.eq 1 , 0 lt.eq y lt.eq 1 }$，计算
  $ I = integral.double_D max { 2 x - x^2 , (1 - y)^2 } thin dif x dif y . $
]

#req(`880 §5 Ac Q10`)[
  计算
  $ I = integral.double_D "sgn" (x^2 - y^2 + 2) thin dif x thin dif y , $
  其中 $D : x^2 + y^2 lt.eq 4$.
]

#req(`880 §5 Ac Q12`)[
  计算
  $I = integral.double_D x y thin dif x dif y$，其中 $D$
  由下列双组线所围.

  + $(x^2 + y^2)^2 = 2 (x^2 - y^2)$；

  + $(x^2 + y^2)^2 = 2 x y$.
]

#req(`880 §5 Ba Q5`)[
  设 $D$ 是以 $(1 , 1)$、$(- 1 , 1)$ 和 $(- 1 , - 1)$
  为顶点的三角形区域，$D_1$ 是 $D$ 在第一象限的部分，且
  $ f (x , y) = x y + integral.double_D f (x , y) thin dif x thin dif y , $
  其中 $f (x , y)$ 在 $D$ 上连续，则（#h(0.5cm) ）

  + $integral.double_D f (x , y) thin dif x thin dif y = integral.double_(D_1) f (x , y) thin dif x thin dif y$

  + $integral.double_D f (x , y) thin dif x thin dif y = 2 integral.double_(D_1) f (x , y) thin dif x thin dif y$

  + $integral.double_D f (x , y) thin dif x thin dif y = integral.double_D f (y , x) thin dif x thin dif y$

  + $integral.double_D f (x , y) thin dif x thin dif y = 2 integral.double_(D_1) f (y , x) thin dif x thin dif y$

  #ps[
    在这里犯了思维定势，看到类似形态就想到了轮换对称性，进而想到了交换变量，实际此题的正确选项不需要做变换就可以看出来。
  ]
]

#req(`880 §5 Bb Q1`)[
  设 $D : 0 lt.eq x lt.eq y lt.eq 2 pi$，则
  $ I = integral.double_D lr(|sin (x - y)|) thin dif x dif y = underline(#hide[a b c]) . $
]

#req(`880 §5 Bb Q7`)[
  曲线 $r^2 = 2 a^2 cos 2 theta thin (a > 0)$ 所围图形的面积为
  #underline[];.

  #ps[
    思考一个问题：什么时候适合用先写出直角坐标系再代入参数方程从而求二重积分，什么时候适合直接转换为极坐标系求二重积分。

    此题题目所给曲线即为极坐标曲线，且直接套用极坐标下的二重积分比较简单。若题目所给为直角坐标曲线，且将其参数方程化后更容易求出，则应该选用先写出直角坐标下二重积分表达式，再代入参数方程求出。
  ]
]

#req(`880 §5 Bc Q2`)[
  设 $D$ 是由曲线 $lr(|x|) y + lr(|x|) + y = 1$ 与 $x$
  轴所围成的有界区域，计算
  $ I = integral.double_D [2 ln (1 + y) - y + x] dif x dif y . $
]

#req(`880 §5 Bc Q4`)[
  设平面曲线 $(x + y)^3 = x y$ 在第一象限所围区域为 $D$，计算
  $ I = integral.double_D [(x - y)^3 + 1] dif x dif y . $
]

#req(`880 §5 Bc Q9`)[
  设
  $D = { (x , y) divides 0 lt.eq x lt.eq 1 , 0 lt.eq y lt.eq x }$，计算
  $ I = integral.double_D arcsin (2 sqrt(x - x^2)) thin dif x dif y . $

  #ps[
    类比 $integral_0^2 x sqrt(2x - x^2) dif x$
  ]
]

=== 二重积分的定义
#req(`880 §5 Bb Q8`)[
  球体 $x^2 + y^2 + z^2 = R^2 thin (R > 0)$ 被圆柱面 $x^2 + y^2 = R x$
  所截得含在圆柱面内的立体的体积为 #underline[];.
]


=== 极坐标下的二重积分交换积分次序
#req(`880 §5 Bb Q5`)[
  交换积分顺序
  $I = integral_0^(pi / 2) dif theta integral_0^(a sqrt(sin 2 theta)) f (r cos theta , r sin theta) r dif r thin (a > 0)$
  为 #underline[];.
]

#req(`880 §5 Bc Q21`)[
  设 $D : x^2 + y^2 lt.eq 2 t x , y gt.eq 0 thin (t > 0)$，$f (u)$ 在
  $u = 0$ 处可导，且 $f (0) = 0$，求
  $ lim_(t arrow.r 0^(+)) 1 / t^4 integral.double_D f (sqrt(x^2 + y^2)) y thin dif x thin dif y . $
]

=== 反函数主值区间问题

#req(`880 §5 Bc Q15`)[
  设 $D$ 是由 $y = sqrt(1 - x^2) , y = sqrt(4 - x^2)$ 与 $x + y = 0$
  及 $x$ 轴所围，且位于 $x + y gt.eq 0$ 部分的区域，计算
  $ I = integral.double_D frac(sqrt(x^2 + y^2), x^2 + 2 y^2) thin dif x dif y . $
]


=== 求二重积分极限
#ref[https://www.bilibili.com/video/BV18e4y1s71w]

== 综合题

=== 与微分方程综合

#req(`880 §5 Bc Q12`)[
  设 $f (t)$ 在 $(- oo , + oo)$ 内有连续导数，且
  $ f (t) = 2 integral.double_D (x^2 + y^2) f (sqrt(x^2 + y^2)) thin dif x dif y + t^4 , $
  $D : x^2 + y^2 lt.eq t^2$，求 $f (t)$。

  #ps[
    当二重积分中有参数时，不能将其简单看作一个常数去对等式两边同时取二重积分，而将原先的二重积分作为常数提出来转化为一个常数与面积的乘积。
  ]
]

=== 证明题

#req(`880 §5 Bc Q17 Q19 Q20 Q22`)[
]


#pagebreak()

= 常微分方程

#req(`880 §6 Aa Q4`)[
  设 $y_1 (x) , y_2 (x)$ 是 $y prime + P (x) y = 0$ 的两个不同特解，其中
  $P (x)$ 在 $(- oo , + oo)$ 内连续，且 $P (x)$ 不恒为
  0，则下列结论中错误的是（ ）。

  #set enum(numbering: "A.")

  + $y_1 (x) - y_2 (x) =$ 常数

  + $C [y_1 (x) - y_2 (x)]$ 是方程的通解

  + $y_1 (x) - y_2 (x)$ 在任一点不为 0

  + $frac(y_2 (x), y_1 (x)) equiv$ 常数 \($y_1 (x) eq.not 0$)
]

#req(`880 §6 Ab Q2`)[
  求微分方程 $(1 + y^2) thin d x + (2 x - 1) y thin d y = 0$ 的通解。
]

#req(`880 §6 Ab Q4`)[
  微分方程 $x y' = sqrt(x^2 + y^2) + y$ 的通解为 #underline[];.
]
#req(`880 §6 Ab Q7`)[
  方程 $(1 - x^2) y prime.double - x y prime = 0$ 满足
  $y (0) = 0 , y prime (0) = 1$ 的特解为 #underline[];.
]

#req(`880 §6 Ab Q5`)[
  方程 $y prime.double + 2 y prime + y = x e^x$ 满足
  $y (0) = 0 , y prime (0) = 0$ 的特解为 #underline[];.
]
#req(`880 §6 Ac Q3`)[
  求 $ integral e^(x + 1) ast e^(- integral dif x) dif x . $
]
#req(`880 §6 Ac Q6`)[
  + 解 $y(x)$ $ sqrt(y^2 + x^2) + y = 1/2 $
]

#req(`880 §6 Ac Q7`)[
  设 $L$ 是一条平面曲线，其上任意一点 $P (x , y) (x > 0)$
  到原点的距离恒等于该

  点处的切线在 $y$ 轴上的截距，且 $L$ 过点 $(1 / 2 , 0)$。求：

  + 曲线 $L$ 的方程；

  + $L$ 位于第一象限部分的一条切线，使该切线与 $L$
    以及两坐标轴所围的面积最小。
]


#req(`880 §6 Ac Q9`)[
  设 $y = y (x)$ 满足
  $x y prime - (2 x^2 - 1) y = x^3 (x gt.eq 1) , y (1) = a$.

  + 求 $y (x)$;

  + 若 $lim_(x arrow.r + oo) frac(y (x), x)$ 存在，求曲线 $y = y (x)$
    的斜渐近线方程.
]

#req(`880 §6 Ac Q10`)[
  设 $f (x)$ 满足
  $x f prime (x) - f (x) = a (1 - ln x) + x^2 (x > 0 , a eq.not 0) , f (1) = 1 - a$.

  + 求 $f (x)$ 的表达式；

  + 若方程 $f (x) = 0$ 在 $x in (0 , + oo)$ 内有唯一实根，求 $a$
    的取值范围.
]

#req(`880 §6 Ac Q11`)[
  设 $f (x)$ 满足
  $x f prime (x) - 3 f (x) = 2 x , f (1) = 1 / 3 k - 1 , k > 0$.

  + 求 $f (x)$ 的表达式；

  + 求 $f (x)$ 在 $x in [0 , 1 / k]$ 上的最小值与最大值.
]

#req(`880 §6 Bb Q7`)[
  微分方程 $y prime.double - y = sin^2 x$ 的通解为 #underline[];.
]

#req(`880 §6 Bb Q8`)[
  已知 $y^2 = 1/2 x^4 + x^2 + 1/2$，求 $y$.
]

#req(`880 §6 Bb Q9`)[
  设函数 $y (x)$ 满足
  $y prime.double + 2 a y prime + b^2 y = 0 quad (a > b > 0)$，且

  $y (0) = 1 , y prime (0) = 1$，则
  $integral_0^(+ oo) y (x) thin d x = underline(#h(5em))$.
]

#qst(`880 §6 Bb Q10`)[
  设 $f (x)$ 满足 $f (x + y) = frac(f (x) + f (y), 1 - f (x) f (y))$, 且 $f prime (0)$ 存在，求 $f prime (x)$ 及 $f (x)$.

  #ps[
    初见虽然过了，但是用的方法不严谨，对于大题，题目中没有说明 $f(x)$ 可导，故只能通过定义法来求导函数，而对于小题，则可直接求导。
  ]
]

#req(`880 §6 Bc Q6`)[
  设 $y (x)$ 在 $\[ x_0 , + oo \)$ 上有一阶连续导数，且
  $lim_(x arrow.r + oo) [y prime (x) + y (x)] = k$，求
  $lim_(x arrow.r + oo) y (x)$.

  #ps[
    该题作为大题有两种解法，1 是设出非齐次项 $f(x)$ 然后用一阶线性微分方程的变限积分形式构造出极限求解。2是根据表达式还原出 $e^x y$ 然后逆用洛必达。

    此外，广义洛必达在分母趋于无穷，而不知道分子趋于何值时，可以直接洛必达。
  ]
]

#req(`880 §6 Bc Q11`)[
  设 $f (x)$ 在 $(0 , + oo)$ 内有定义，$f prime (1) = 1$，当
  $x , y in (0 , + oo)$ 时，满足 $ f (x y) = y f (x) + x f (y) . $

  证明：$f (x)$ 在 $(0 , + oo)$ 内可导，且
  $f prime (x) = frac(f (x), x) + 1$;
]

#req(`880 §6 Bc Q13 - Q27`)[
]


#qset("求解微分方程")[
  #qst(`A P141 E1.5`)[
    求 $y' sec^2 y + frac(x, 1 + x^2) tan y = x$ 满足条件
    $y \|_(x = 0) = 0$ 的特解.
  ]

  #qst(`A P142 E2`)[
    + 求方程 $(x + 1) y'' + y' = ln (x + 1)$ 的通解;

    + 求方程 $cases(
        2 y y'' = y'^2 + y^2,
        y (0) = 1\, y' (0) = - 1
      )$ 的特解.
  ]
]

#qset(`A P143 E3`)[
  #qst(`q5`)[
    已知 $y_1 = x e^x + e^(2 x), y_2 = x e^x - e^(- x), y_3 = x e^x + e^(2 x) + e^(- x)$ 为某二阶线性常系数非齐次方程的特解，求此方程.
  ]

  #qst(`q7`)[
    已知 $y_1 = 3 , y_2 = 3 + x^2 , y_3 = 3 + e^x$
    是某二阶线性非齐次方程的三个特解，求该微分方程及通解.
  ]

  #qst(`q8`)[
    求方程 $y'' + a^2 y = sin x$ 的通解，其中常数 $a > 0$.
  ]
]

#qst(`A P145 E2`)[
  设 $f (x) = sin x - integral_0^x (x - t) f (t) dif t$，其中 $f (x)$ 为连续函数. 求 $f (x)$.
]

#qst(`A P146 E4`)[
  设 $f (x)$ 在 $(- oo , + oo)$ 上有定义，$f^(') (0) = 2$，对任意的 $x , y$，有 $f (x + y) = e^x f (y) + e^y f (x)$，求 $f (x)$.
]

#qst(`A P147 E6`)[
  设函数 $y (x)$ 满足方程 $y'' + 2 y' + k y = 0$，其中 $0 < k < 1$. (1) 证明: 反常积分 #v(0.1em) $integral_0^(+ oo) y (x) dif x$ 收敛; (2) 若 $y (0) = 1 , y' (0) = 1$，求 $integral_0^(+ oo) y (x) dif x$ 的值.
]





= 微积分的物理应用与几何应用

== 定积分的几何应用
#req(`880 §3 Bb Q5`)[
  曲线 $theta = 1 / 2 (r + 1 / r)$ 在区间 $r in [1 , 3]$ 上的弧长为
  $underline(quad quad quad)$;。
]

#qst(`880 §3 Bb Q13`)[
  设 $g (x)$ 在 $\[ 0 , + oo \)$ 上可导，$ln (1 + x)$ 是 $g (x)$
  的一个原函数，且
  $ f (x) = lim_(t arrow.r oo) t^2 [g (2 x + 1 / t) - g (2 x)] sin x / t , $
  则 $f (x)$ 在区间 $[0 , e]$ 上的平均值为 $underline(quad quad quad)$;。
]

#qst(`880 §3 Bc Q37`)[
  设 $f (x)$ 在 $[a , b]$ 上可导, $f (a) > 0 , f' (x) > 0 , S_1 (x)$
  与 $S_2 (x)$ 为如图 3-1 所示阴影部分的面积. 证明: 存在唯一的 $xi$, 使得
  $ frac(S_1 (xi), S_2 (xi)) = k, quad (k "为正的常数") . $
]

#req(`880 §3 Bc Q38`)[
  求曲线 $4 y = integral_0^2 x sqrt(12 - x^2 u^2) thin dif u$
  ($x gt.eq 0$) 的全长。
]

#req(`880 §3 Bc Q40`)[
  求曲线 $y = e^(- x) sqrt(sin x)$ ($x gt.eq 0$) 绕 $x$
  轴旋转所得旋转体的体积。

  #ps[
    遇到 $sqrt(x)$ 时，需要立即想到：
    + $sqrt(x^2) = (sqrt(x))^2 = |x|$.
    + $x > 0$.
  ]
]

#qst(`880 §3 Bc Q43`)[
  求双纽线 $r^2 = a^2 cos 2 theta$ ($a > 0$)
  绕极轴旋转所成旋转曲面的面积。
]

#qst(`880 §3 Bc Q46`)[
  设
  $
    f (x) = cases(delim: "{", lim_(t arrow.r + oo) frac(x, 1 + x^2 - e^(t x))\, quad & x eq.not 0, quad 0\, & x = 0,)
  $
  曲线 $y = f (x)$ 与 $y = 1 / 2 x$ 以及 $x = 1$ 所围图形为 $D$. 试求：
  + $D$ 的面积.

  + $D$ 绕 $x$ 轴旋转一周所得旋转体的体积.
]

#qst(`880 §3 Bc Q50`)[
  已知曲线 $L$ 的极坐标方程为
  $r = 1 + cos theta (0 lt.eq theta lt.eq pi / 2)$. 求：

  + 曲线 $L$ 在 $theta = pi / 4$ 对应点处的切线 $T$ 的直角坐标方程；

  + 曲线 $L$、切线 $T$ 与 $x$ 轴所围图形的面积。

  #ps[
    在计算极坐标下的面积时，可以用二重积分。
  ]
]

#qst(`880 §3 Bc Q52`)[
  设心形线 $r = 4 (1 + cos theta)$, 与 $theta = 0 , theta = pi / 2$
  所围图形为 $D$，求 $D$ 绕极轴旋转一周所得旋转体的体积。
]

#req(`880 §3 Bc Q55`)[
  设
  $
    a_n = integral_0^1 x^n sqrt(1 - x^2) thin dif x , b_n = integral_0^(pi / 2) sin^n x cos^n x thin dif x ,
  $

  求 $lim_(n arrow.r oo) b_n / a_n .$
]

#req(`880 §3 Bc Q57`)[
  求心形线 $r = 1 + cos theta$ 与 $r = 3 cos theta$
  所围公共部分图形的面积。
]

#req(`880 §3 Bc Q58`)[
  设曲线族 $y = k x^2 (k > 0)$, 对于每个 $k gt.eq 4 / pi^2$, 曲线
  $y = k x^2$ 与曲线 $y = sin x (0 < x lt.eq pi / 2)$ 交于唯一点
  $(t , sin t)$, 其中 $t = t (k)$. $S_1$ 表示 $y = k x^2$ 与 $y = sin x$
  所围区域的面积, $S_2$ 表示 $y = sin x$ 与 $y = sin t$ 及 $x = pi / 2$
  所围区域的面积.

  + 写出 $S_1 + S_2$ 关于 $t$ 的函数表达式；

  + 证明: $S_1 + S_2$ 有最小值.
]

== 定积分的物理应用 bad

#qst(`880 §3 Bc Q49`)[

  #ps[
    在处理此类问题时，因为采用的是微元法，常只考虑对称区域的一部分，所以计算时极容易出现只计算了一半，故在计算时一定要记得所要求的是完整的，而不是对称的一半。
  ]
]



== 形心、质心
#req(`880 §5 Bb Q10`)[
  $r lt.eq 1$ 与 $r lt.eq 1 + cos theta$ 所围平面区域的形心坐标为
  #underline[];.
]


== 微分方程中的物理应用
#qst(`A P148 E3`)[
  设 $y (x) (x gt.eq 0)$ 二阶可导，且 $y^(') (x) > 0 , y (0) = 1$。过 $y = y (x)$ 上任意点 $P (x , y)$ 作该曲线的切线及 $x$ 轴的垂线，上述两直线与 $x$ 轴所围三角形面积记为 $S_1$，区间 $[0 , x]$ 上以 $y = y (x)$ 为曲边的曲边梯形面积记为 $S_2$，且 $2 S_1 - S_2 = 1$，求 $y (x)$.
]

#qst(`A P149 E4`)[
  已知高温物体置于低温介质中，任一时刻该物体温度对时间的变化率与该时刻物体和介质的温差成正比，现将一初始温度为 $120^circle.stroked.tiny C$ 的物体在 $20^circle.stroked.tiny C$ 的恒温介质中冷却，$30 upright(m i n)$ 后该物体降至 $30^circle.stroked.tiny C$，若要将该物体的温度继续降至 $21^circle.stroked.tiny C$，还需冷却多长时间?
]

#req(`label-end`)[
]

