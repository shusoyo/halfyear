#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#let ps = x => box[

  #text(yellow.negate(space: rgb))[hints: ] #emph[#x]
]

#let ref = x => box[ \
  ref: #x
]

#let qst = thmplain(
  "qst",
  "Q",
  base: none,
  inset: (
    bottom: 1em,
    left: 0em,
    right: 0em,
  ),
).with(
  breakable: false,
  numbering: none,
)

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
  numbering: "i",
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
  title: "math paper set",
  language: "ch",
  authors: "suspen",
  title_page: true,

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
)


= 出错较多的同类型专题

== 周期性

#proposition()[
  + $ lim_(x -> oo)integral_0^x |sin t| dif t = lim_(x -> oo) integral_0^(x/pi pi) |sin t| dif t = lim_(x -> oo) x/pi integral_0^pi |sin t| dif t $ 其本质上是对 $x -> oo$ 时 $x in (n pi, (n+ 1)pi)$ 的放缩。
]

== $bold(f(x) = z(f(g(x)), x))$

#qset()[
  + #link(<fxeqz-x-fgx-2>)[合工大超越 2024 Q17]

  + #link(<fxeqz-x-fgx>)[欧几里得 Sep Q15]
]

== 一元函数微分不等式的证明
#qset()[
  + #link(<r302-2012-20>)[R 302 2012 Q20]
]

== 积分好题
#qset[
  + #link(<26-cy-v3-q15>)[合工大超越 2026 vol 3 Q15]
  + #link(<26-cy-v5-q14>)[合工大超越 2026 vol 5 Q14]
  + #link(<26-z8-v1-q18>)[张宇八套卷 2026 vol 1 Q18]
  // + @26-cy-v3-q15
]

== 积分的物理应用
#qset()[
  + #link(<r302-2011-20>)[R 302 2011 Q20]
  + #link(<cy-25-v3-7>)[合工大超越 2025 vol 3 Q7]
  + #link(<26-z8-v1-q6>)[张宇八套卷 2026 vol 1 Q6] （点杆与引力模型）
]

== 定积分的定义与对数列极限的表示

#qset()[
  + #link(<cy-24-v5-15>)[合工大超越 2024 vol 5 Q15]
]

== 定积分比大小
#proposition[
  + 当积分区间相同时，直接比较被积函数的大小关系。比较两函数关系可以使用做差法，转化到微分学中的方法，求导判断。

  + 积分区间不同时，换元化为相同。

  + 若积分区间具有包含关系，可以做差法，转换为判断某一定积分是否大于零。
]

#qset[
  + #link(<26-cy-v5-q3>)[合工大超越 2026 vol 5 Q3]
  + #link(<26-cy-v4-q6>)[合工大超越 2026 vol 4 Q6]
]

== 反常积分
#qset[
  + #link(<26-cy-v4-q3>)[合工大超越 2026 vol 4 Q3]
]

== 多元函数微分概念题
#qset[
  + #link(<26-z8-v2-q6>)[张宇八套卷 2026 vol 2 Q6]
]

#pagebreak()

== 多元函数求极值

=== Lagrange 乘数法

#proposition("对变量的偏导具有对称性")[
  将对变量的偏导数方程利用对称性相加或相减得到几个变量的关系，代入到对约束的偏导中求解。
]

#proposition("对变量的偏导不具有对称性")[
  设函数 $f (x , y , z)$ 以及两个约束条件 $phi (x , y , z) = 0$ 和
  $psi (x , y , z) = 0$。目标是找到函数 $f$
  在满足这些约束条件下的极值点。

  #set enum(numbering: "Step i")
  + 引入拉格朗日乘数 $lambda$ 和 $mu$，构造拉格朗日函数：
    $ cal(L) = f (x , y , z) + lambda phi (x , y , z) + mu psi (x , y , z) $

  2. 拉格朗日函数的极值点满足以下条件：
    $
      cases(
        f'_x + lambda phi'_x + mu psi'_x & = 0,
        f'_y + lambda phi'_y + mu psi'_y & = 0,
        f'_z + lambda phi'_z + mu psi'_z & = 0,
        phi (x , y , z) & = 0,
        psi (x , y , z) & = 0
      )
    $
    这些条件可以写成矩阵形式：
    $
      mat(
        delim: "[",
        f'_x, phi'_x, psi'_x;
        f'_y, phi'_y, psi'_y;
        f'_z, phi'_z, psi'_z
      )
      mat(delim: "[", 1; lambda; mu) = bold(A)
      mat(delim: "[", 1; lambda; mu) = 0
    $

  等价于求解矩阵 $bold(A)$ 的行列式 $lr(|bold(A)|) = 0$。通过求解上述方程组，可以得到 $x , y , z$
  的关系，这些关系代入原方程后可以得到两个方程。

  #ref[https://www.bilibili.com/video/BV1pEJCzZE7C]

]

#annotation[
  对于 #hl[拉格朗日乘数法求条件极值]，所求得的偏导数等于零的点是在约束条件上的驻点，当约束条件光滑且封闭时，极值点一定从这些驻点中取得，而当约束条件本身存在 #hl[端点]（如直线段的两端）那么也要求出端点处的函数值进行比较。
]

== 矩阵秩的不等式

#qset()[
  + #link(<26-z8-v1-q10>)[张宇八套卷 2026 vol 1 Q10]
]

== 两矩阵相似，求逆矩阵

=== 可相似对角化
通过对角阵来搭桥。

=== 不可相似对角化
通过矩阵方程 $bold(P)^(-1) bold(A P) = bold(B) => bold(A P) = bold(P B) => bold(A (xi_1, xi_2, xi_3)= (xi_1, xi_2, xi_3) B)$
#qset[
  + #link(<26-z8-v1-q22>)[张宇八套卷 2026 vol 1 Q22]
]

== 线性方程组的同解与公共解

== 二次型求标准型

#proposition("一种叉乘的简便运算")[
  要算 $bold(xi)_1 :(a, b, c)$ 与 $bold(xi)_2 : (d, e, f)$ 的叉乘：

  setp 1: 写出 $ mat(
    a, b, c, a, b, c;
    d, e, f, d, e, f
  ) $

  去掉两侧的两列  $ mat(
    b, c, a, b;
    e, f, d, e
  ) $

  #let det = math.mat.with(delim: "|")

  所求即为 $ (det(b, c; e, f), det(c, a; f, d), det(a, b; d, e))^upright(T) $

]<cross-product>

#proposition("知一求二")[
  对于一个具有一个单重根和一个二重根的三阶二次型矩阵，知道其中一个单重根的特征向量，可以求得另一个二重根的两个特征向量。
  设 $bold(alpha) = (a, b, c)$，则另外两个分别为
  $ bold(beta)_1 =(-b/a, 1, 0)^upright(T), bold(beta)_2 = (-c/a, 0, 1)^upright(T). $

  在求出两个特征之后，若并不相互正交，可以舍去一个，再通过 @cross-product 求出即可。
]

== tags
#proposition("狄利克雷函数")[
  $ f = "狄利克雷函数" D = cases(1\, quad & x in QQ, , 0\, &x in RR without QQ) "（处处不连续，也处处不可导）" $
]<dirichlet-f>

#pagebreak()

= 考研真题

== year 2009
`16, 17, 20, 22, 23`

#qst("17")[
  对于三元及三元以上的多元函数的二阶偏导数，$ f''_(x y)(x, y, z) = f''_(y x)(x, y, z) != f''_{(x, z), (y, z)}(x, y, z) $

  即，分别对两个变量求偏导，无论顺序如何，只要是这两个变量，都相等。而 #hl[不是] 所有二阶偏导数都相等。
]

#qst("20")[
  高阶线性非齐次微分方程的解的结构与待定系数法。
]


#qst("22")[
  证明向量组向量线性无关，可以用定义法，假设线性相关，反证线性无关。若向量组组成的矩阵为方阵，也可以用行列式判断。
]

#qst("23")[
  二次型的规范型，二次型的正负惯性指数之和为 $r(f)$，正惯性指数即正特征值个数，负惯性指数即负特征值个数，也即，特征值与二次型规范型系数有相同的序关系，可以排序对比。
]

== year 2010
`4, 6, 7, 18, 16, 19, 23`

#qst("4")[
  反常积分的比值审敛法要去记忆，两个重要的 $p$ 积分也要去记忆。
]

#qst("23")[
  对于可通过正交变换相似对角化的矩阵，求其正交变换的正交矩阵即为求其所有特征值对应的特征向量的单位化向量。
]


#pagebreak()
== year 2011
`8, 13, 17, 20, 23`

#qst("8")[
  题目没读懂，说 $A$ 的一个基础解系，意思就是 $bold(A x = 0)$ 的解集的秩为 $1$，因为“一个基础解系”指满足 $bold(A x = 0)$ 的一组线性无关的解向量，而 #hl[有几组基础解系，解集的秩为几].

  另有 $bold(A A^\*) = bold(A^\* A) = |bold(A)|bold(E)$。
]

#qst("20 II")[
  某一容器的内侧是由下图中曲线绕 $y$ 轴旋转一周而形成的曲面，该曲线由
  $x^2 + y^2 = 2 y (y gt.eq 1 / 2)$ 与 $x^2 + y^2 = 1 (y lt.eq 1 / 2)$
  连接而成。

  #figure(
    image("../resources/R302-2011-20.png", width: 40%),
  )


  #block[
    #set enum(numbering: "(i)", start: 1)
    + 求容器的容积；

    + 若将容器内盛满的水从容器顶部全部抽出，至少需要做多少功？（长度单位：m，重力加速度为
      $g$ m/s$""^2$，水的密度为 $10^3$ kg/m$""^3$）
  ]
  #ps[
    抽水做功，一元函数积分的物理应用，这个专题平时比较忽视，应该抽空重点联系类型题。
  ]
]<r302-2011-20>


#qst("23")[
  #set enum(numbering: "i")
  + 实对称矩阵属于不同特征值的特征向量相互正交。

  + 实对称矩阵可相似对角化，$bold(Q)^upright("T") bold(A Q) = bold(Lambda)$ 求 $bold(A)$ 可以转化成求 $bold(Q)$，其是由单位化的特征向量组成的。也可以根据题目条件解矩阵方程.
]

#pagebreak()
== year 2012
`16, 20, 23`

#qst("16")[
  看到 $x e^(- (x^2 + y^2)/2)$ 立马想到了取对数算，但是其实是有陷阱的，取对数时，为保证 $ln x$ 有意义，必须满足 $x > 0$，即 $x e^(- (x^2 + y^2)/2) > 0$，但这里仅当 $x > 0$ 才成立。因此不能直接取对数计算，第一次做就因此做错了。

  若取对数，可以对函数的绝对值 $abs(f)$ 取对数， 对于 $x > 0$ 的部分，可以直接取对数，对于 $x < 0$ 的部分，转换为对 $-f$ 取对数。

  但是仍有 $(0, 0)$ 需要讨论，若在 $(0, 0)$ 点偏导数存在，可以根据极值存在的必要条件来证明其是否是极值。
]

#qst("20")[
  证明：$ x ln frac(1 + x, 1 - x) + cos x gt.eq 1 + x^2 / 2, quad (- 1 < x < 1) $

  #ps[题目给了对称区间，要往奇偶性上思考，将表达式全移动到一侧后，可以验证其是偶函数。
    将其转换为函数求最值问题即可。]
]<r302-2012-20>

#qst("23")[
  已知
  $bold(A) = mat(delim: "(", 1, 0, 1; 0, 1, 1; - 1, 0, a; 0, a, - 1)$，二次型
  $f (x_1 , x_2 , x_3) = bold(x)^upright(T) (bold(A)^upright(T) bold(A)) bold(x)$
  的秩为 2。

  #block[
    #set enum(numbering: "(i)", start: 1)
    + 求实数 $a$ 的值；

    + 求正交变换 $bold(x) = bold(Q) bold(y)$ 将 $f$ 化为标准形。
  ]

  #ps[
    要知道 $r(bold(A)^upright(T) bold(A)) = r(bold(A))$ 怎么证明 （列数相同证明 #hl[同解]）。

    第二问：#hl[正交变换] 的步骤.
  ]
]

== year 2013

`2, 7, 19, 20, 23`

#qst([1])[
  在严格证明 $alpha(x) -> 0$ 时，可以根据题目所给 $abs(alpha(x)) < pi/2$ 得，$sin(alpha(x))$ 是单调的，也即有 $sin(alpha(x))$ 存在反函数，故 $lim_(x -> 0) alpha(x) = lim_(x -> 0) arcsin sin alpha(x) = 0$.
]

#qst("2")[
  对于导数定义的写法，一定要保证自变量形式完全相等，即 $ lim_(n -> oo)(f(2/n) - f(0))/(2/n) = f'(0) != lim_(n -> oo) (f(2/n) - f(0))/(1/n). $


  另有： $exists f,$ 使 $lim_(n -> oo) n[f(x + 1/n) - f(x)] = c$ 存在，但 $f$ 处处不可导。

  如 @dirichlet-f .
]

#qst("3")[
  P8 扩展：第二类间断点也可以有原函数。
]

#qst("7")[
  分块矩阵乘法凑出 #hl[向量组等价的定义]。
]

#qst("8")[
  $"两个实对称矩阵相似" <=> "具有相同的特征多项式" <=> "具有相同的特征值"$
]

#qst("11")[
  熟悉图像
  #figure(
    image("../resources/R-302-2013-11.png", width: 50%),
    caption: [
      $r = cos 3theta quad (- pi/6 <= theta <= pi/6)$
    ],
  )
]

#qst("14")[
  当答案算出来有多个时，要尽可能多的利用题目所给条件，想办法排除。
]

#qst("19")[
  求曲线 $x^3 - x y + y^3 = 1 (x gt.eq 0 , y gt.eq 0)$
  上的点到坐标原点的最长距离和最短距离。

  #ps[注意端点！]
]

#qst("20")[
  不能只依靠观察法，对于不等式 $ln(x_n) + 1/(x_(n + 1)) < 1$ 要善于利用已知的不等关系 $x_n > 0, 1/(x_n) > 0$ 来推得 $ln(x_(n)) < 1 - 1/(x_(n + 1)) < 1$ 这样就可以求出上界。

  另外，根据 #hl[极限的保序性] 可以推得不等关系 $ln a + 1/a <= 1$ 注意保序性，由原函数推极限，会加上等号。
]

#qst("21")[
  型心和质心公式。
]

#qst("23")[
  设二次型
  $f (x_1 , x_2 , x_3) = 2 (a_1 x_1 + a_2 x_2 + a_3 x_3)^2 + (b_2 x_2 + b_3 x_3)^2$，记
  $ bold(alpha) = vec(a_1, a_2, a_2) , quad bold(beta) = vec(b_1, b_2, b_3) $

  #block[
    #set enum(numbering: "(i)", start: 1)
    + 证明二次型 $f$ 对应的矩阵为
      $2 bold(alpha) bold(alpha)^upright(T) + bold(beta) bold(beta)^upright(T)$；

    + 若 $bold(alpha) , bold(beta)$ 正交且均为单位向量，证明 $f$
      在正交变换下的标准形为 $2 y_1^2 + y_2^2$。
  ]

  #ps[
    #set enum(numbering: "i")
    + 第一问证明有点玄，不知道是否严格，应该再验证一次，并记忆官方解法。

    + 要尽可能的利用到和分析完全题目所给的条件，例如此题所给：向量都为单位向量且正交，用数学表示即为 $bold(alpha)^upright(T)bold(beta) = 0, bold(alpha)^upright(T)bold(alpha) = 1, bold(beta)$ 类似，通过这个条件就可以求出二次型矩阵 $2bold(alpha)^upright(T)bold(alpha) + bold(beta)^upright(T)bold(beta)$ 的特征值. 且对于题目，求二次型转换为标准型的正交变换，即为求二次型矩阵的所有特征向量，标准型的系数即为特征值。
  ]
]

#pagebreak()
== year 2014
`5, 14, 20`
#qst("5")[
  设函数 $f (x) = arctan x$. 若 $f (x) = x f' (xi)$, 则
  $lim_(x arrow.r 0) xi^2 / x^2 =$

  #ps[这种题其实仅仅是简单的多项式代换，根据等于的关系将参数表示出来即可，不需要想的太复杂。做的时候可能是想到了 25 超越卷 8 的题 17，想到了反函数。]
]


#qst("14")[
  设二次型 $f (x_1 , x_2 , x_3) = x_1^2 - x_2^2 + 2 a x_1 x_3 + 4 x_2 x_3$ 的负惯性指数为 1, 求 $a$ 的取值范围.

  #ps[
    主要还是对知识点的不熟悉，不知道怎么配方法求标准型，应该再看看二次型的知识点。
    #image("../resources/R-302-2014-14.png")
  ]
]

#qst("20")[
  设函数 $f (x) = frac(x, 1 + x) , x in [0 , 1]$. 定义函数列:
  $ f_1 (x) = f (x) , quad f_2 (x) = f (f_1 (x)) , quad dots.h.c , quad f_n (x) = f (f_(n - 1) (x)) , quad dots.h.c $
  记 $S_n$ 是由曲线 $y = f_n (x)$, 直线 $x = 1$ 及 $x$
  轴所围平面图形的面积. 求极限 $lim_(n arrow.r oo) n S_n$.

  #ps[
    当题目没有给出 $S_n$ 的表达式时，这类题的首要思路是找出 $S_n$ 的表达式，可以举例子找规律。
  ]
]

#pagebreak()
== year 2015
`18, 23`
#qst("18")[
  计算 $ integral.double_(D) x(x + y) dif sigma, quad D = {(x, y) | x^2 + y^2 <= 2, y >= x^2}. $
  #ps[对称性是根据被积函数使用的，不能只看积分区域是否对称。]
]

#qst("23")[
  设矩阵 $ bold(A) = mat(delim: "(", 0, 2, - 3; - 1, 3, - 3; 1, - 2, a) "相似于" bold(B) = mat(delim: "(", 1, - 2, 0; 0, b, 0; 0, 3, 1). $

  + 求 $a , b$ 的值;

  + 求可逆矩阵 $bold(P)$, 使 $bold(P)^(- 1) bold(A P)$ 为对角矩阵.

  #ps[
    实对称矩阵的相似对角化是通过正交变换：求线性无关特征向量的 #hl[单位正交基]，构造出 $bold(Q)^upright(T) bold(A Q) = bold(Lambda)$。而可相似对角化的 #hl[非对称矩阵] 只能通过可逆线性变换 $bold(P)^(-1) bold(A P) = bold(Lambda)$，矩阵 $bold(P)$  由 $bold(A)$ 的 $n$ 个线性无关特征向量组成。
  ]
]

== year 2016
`3, 17, 21, 22, 23`

#qst("3")[
  求反常积分 $integral_(- oo)^0 1 / x^2 e^(1 / x) thin dif x$ 和
  $integral_0^(+ oo) 1 / x^2 e^(1 / x) thin dif x$ 的敛散性.

  #ps[
    定积分实际上积分上下限就是积分变量的取值范围，对于反常积分，特别是 $e^x$ 相关的，极限在某点正负取值不同的反常积分，更应该注意积分区域的取值。

    易错点：
    + $integral_a^b f'(x) dif x = lim_(x -> a^+) f(x) - lim_(x -> b^-) f(x)$.

    + $lim_(x -> +oo) e^x = oo != lim_(x -> -oo) e^x = 0$.
  ]
]

#qst("19")[
  齐次方程解的形式，较少注意，应准确记忆概念。

  两个线性无关的齐次线性微分方程的特解的和是其通解。
]

#qst("21")[
  已知函数 $f (x)$ 在 $[0 , frac(3 pi, 2)]$ 上连续，在
  $(0 , frac(3 pi, 2))$ 内是函数 $frac(cos x, 2 x - 3 pi)$
  的一个原函数，且 $f (0) = 0$。

  #block[
    #set enum(numbering: "(i)", start: 1)
    + 求 $f (x)$ 在区间 $[0 , frac(3 pi, 2)]$ 上的平均值；

    + 证明 $f (x)$ 在区间 $(0 , frac(3 pi, 2))$ 内存在唯一零点。
  ]

  #ps[  仔细读题，其实一点也不难。

    当出现 $f(x)$ 在某一连续区间内，$f'(x) = g(x)$，那么就可以设 $f(x) = integral_0^x g(x) dif x + C$.
  ]
]

#qst("23")[
  已知矩阵 $bold(A) = mat(delim: "(", 0, - 1, 1; 2, - 3, 0; 0, 0, 0)$.

  #block[
    #set enum(numbering: "I.", start: 1)
    + 求 $bold(A)^99$；

    + 设 3 阶矩阵 $bold(B) = (bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3)$ 满足
      $bold(B)^2 = bold(B) bold(A)$。记
      $bold(B)^100 = (bold(beta)_1 , bold(beta)_2 , bold(beta)_3)$，将
      $bold(beta)_1 , bold(beta)_2 , bold(beta)_3$ 分别表示为 $bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3$
      的线性组合。
  ]

  #ps[应总结一下类似 $bold(A)^n$ 的具体解法。]
]


== year 2017
`21, 22, 23`

#qst("21")[
  考察的其实就是简单的一元齐次微分方程，初见是因为计算错误 $ u = y/x => y = u x, dif y = (dif u)/(dif x) x + u $
  但是我写成了 $dif y = (dif u)/(dif x) x + underline(1)$，应该避免此类错误！
]

#qst("22 II")[
  设 3 阶矩阵 $bold(A) = (bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3)$ 有 3
  个不同的特征值，且 $bold(alpha)_3 = bold(alpha)_1 + 2 bold(alpha)_2$.

  #block[
    #set enum(numbering: "(i)", start: 1)
    + 证明 $r (bold(A)) = 2$；

    + 若 $bold(beta) = bold(alpha)_1 + bold(alpha)_2 + bold(alpha)_3$，求方程组
      $bold(A) bold(x) = bold(beta)$ 的通解。
  ]

  #ps[
    第二问很巧妙，虽然是问通解，但是因为 $r(bold(A)) = 2$ 故齐次方程的基础解系只有一个向量，所以只需要找到满足齐次方程的一个解就可以，这时候不需要再像传统的求齐次方程的解一样求阶梯型或标准型矩阵，直接根据题目条件构造出来一个即可。再求满足题意的非齐次的特解，依然是通过构造即可。
  ]
]

#qst("23")[
  二次型的矩阵天然为实对称矩阵，故其相似对角化所进行的是正交变换，也就是要求特征向量的单位正交基。
]



== year 2018
`12, 17, 18, 19, 20, 22`

#qst("17")[
  计算计算计算！
]

#qst("18")[
  带参数的微分不等式，不一定非要分离参数，此题就是！
]

#qst("19")[
  将长为 $2 m$
  的铁丝分成三段，依次围成圆、正方形与正三角形。三个图形的面积之和是否存在最小值？若存在，求出最小值。

  #ps[当拉格朗日乘数法只求出来一个驻点是，如何判断其是最大值还是最小值？
    应该想办法求边界点？]
]

#qst("22")[
  设实二次型
  $f (x_1 , x_2 , x_2) = (x_1 - x_2 + x_3)^2 + (x_2 + x_3)^2 + (x_1 + a x_3)^2$，其中
  $a$ 是参数。

  #block[
    #set enum(numbering: "(i)", start: 1)
    + 求 $f (x_1 , x_2 , x_2) = 0$ 的解；

    + 求 $f (x_1 , x_2 , x_2)$ 的规范形。
  ]

  #ps[
    #set enum(numbering: "i")
    + $bold(A)^upright(T) bold(A x= 0)$ 与 $bold(A x = 0)$ 同解。

    + $f(x_1, x_2, ..., x_i) >= 0$ 代表二次型负惯性指数为 $0$。
  ]
]

#pagebreak()
== year 2019
`18, 19, 21, 22, 23`

#qst("18")[
  这是把基础的三角函数的积分方法也忘了，可以每天做几道积分题保持手感，另外基本的方法一定不能忘记。
]

#qst("19")[
  设 $n$ 为正整数，记 $S_n$ 为曲线
  $y = e^(- x) sin x med (0 lt.eq x lt.eq n pi)$ 与 $x$
  轴所围图形的面积，求 $S_n$，并求 $lim_(n arrow.r oo) S_n$。

  #ps[当积分上下限有相同的部分，或差正好为被积函数的对称区域、或可通过变换消去参数的部分，均可以通过换元法化简定积分。]
]

#req([21])[
  已知函数 $f (x)$ 在 $[0 , 1]$ 上具有 2 阶导数，且
  $f (0) = 0 , f (1) = 1 , integral_0^1 f (x) dif x = 1$，证明：

  #block[
    #set enum(numbering: "(i)", start: 1)
    + 存在 $xi in (0 , 1)$，使得 $f' (xi) = 0$；

    + 存在 $eta in (0 , 1)$，使得 $f'' (eta) < - 2$
  ]

  #ps[微分不等式，要尝试用拉格朗日中值定理。]
]

#qst("22")[
  已知向量组
  $ "I": bold(alpha)_1 = vec(1, 1, 4) , bold(alpha)_2 = vec(1, 0, 4) , bold(alpha)_3 = vec(1, 2, a^2 + 3) $
  与向量组
  $ "II": bold(beta)_1 = vec(1, 1, a + 3) , bold(beta)_2 = vec(0, 2, 1 - a) , bold(beta)_3 = vec(1, 3, a^2 + 3) $
  若向量组 I 与 II 等价，求 $a$ 的取值，并将 $bold(beta)_3$ 用
  $bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3$ 线性表示。

  #ps[向量组等价的 #hl[充分必要条件] 是 $r(bold(A)) = r(bold(B)) = r(bold(A \, B))$]
]

#qst("23")[
  相似对角化，要区分是非实对称矩阵的相似对角化，还是实对称矩阵的相似对角化。两者相似对角化的变换过程不同。
]

== year 2020

#req("4")[
  已知函数 $f(x) = x^2 ln(1-x)$。 当 $n >= 3$ 时, 求 $f^((n))(0)$
]

#qst("5")[
  关于函数
  $ f (x , y) = cases(delim: "{", x y\, & x y eq.not 0, x\, & y = 0, y\, & x = 0,) $
  给出以下结论：

  + $frac(partial f, partial x)\|_((0 , 0)) = 1$;

  + $frac(partial^2 f, partial x partial y)\|_((0 , 0)) = 1$;

  + $lim_((x , y) arrow.r (0 , 0)) f (x , y) = 0$;

  + $lim_(y arrow.r 0) lim_(x arrow.r 0) f (x , y) = 0$.

  其中正确的个数为

  #ps[
    混合偏导数 $(partial^2 f)/(partial x partial y)|_((0, 0))$ 用定义可以写为 $ lim_(y -> 0) (lr((partial f)/(partial x))|_(y != 0, x = 0) - lr((partial f)/(partial x))|_(y = 0, x = 0) ) / ( y - 0) $

    而 $lr((partial f)/(partial x))|_(y != 0, x = 0)$  可以写为 $ lim_(x -> 0) (f(x, y) - f(0, y))/(x - 0) $
  ]
]

#qst("22")[
  设二次型
  $f (x_1 , x_2 , x_3) = x_1^2 + x_2^2 + x_3^2 + 2 a x_1 x_2 + 2 a x_1 x_3 + 2 a x_2 x_3$

  经可逆线性变换 $vec(x_1, x_2, x_3) = bold(P) vec(y_1, y_2, y_3)$ 化为二次型
  $g (y_1 , y_2 , y_3) = y_1^2 + y_2^2 + 4 y_3^2 + 2 y_1 y_2$.

  + 求 $a$ 的值;

  + 求可逆矩阵 $bold(P)$.

  #ps[
    矩阵拆分。$bold(A P = P B)$
  ]
]

#req("23")[
  设 $bold(A)$ 为 2 阶矩阵,
  $bold(P) = (bold(alpha) , bold(A) bold(alpha))$, 其中 $bold(alpha)$
  是非零向量且不是 $bold(A)$ 的特征向量.

  + 证明 $bold(P)$ 为可逆矩阵;

  + 若
    $bold(A)^2 bold(alpha) + bold(A) bold(alpha) - 6 bold(alpha) = bold(0)$,
    求 $bold(P)^(- 1) bold(A) bold(P)$, 并判断 $bold(A)$
    是否相似于对角矩阵.
]

== year 2021

#qst("9")[
  设 3 阶矩阵 $bold(A) = (bold(alpha)_1, bold(alpha)_2, bold(alpha)_3), bold(B) = (bold(beta)_1, bold(beta)_2, bold(beta)_3)$，若向量组 $bold(alpha)_1, bold(alpha)_2, bold(alpha)_3$ 可由向量组 $bold(beta)_1, bold(beta)_2, bold(beta)_3$ 线性表示，证明 $bold(B)^(upright(T)) bold(x) = bold(0)$ 的解均为 $bold(A)^(upright(T)) bold(x) = bold(0)$ 的解.
]

#qst("15")[
  微分方程 $y prime.triple - y = 0$ 的通解为 $y = underline(#h(5em)) .$
]

== year 2022

#qst("3")[
  设 $f (x)$ 在 $x = x_0$ 处有二阶导数, 则 $(quad)$

  + 当 $f (x)$ 在 $x_0$ 的某邻域内单调增加时, $f prime (x_0) gt.eq 0$.

  + 当 $f prime (x_0) > 0$ 时, $f (x)$ 在 $x_0$ 的某邻域内单调增加.

  + 当 $f (x)$ 在 $x_0$ 的某邻域内是凸函数时,
    $f prime.double (x_0) > 0$.

  + 当 $f prime.double (x_0) > 0$ 时, $f (x)$ 在 $x_0$
    的某邻域内是凸函数.

  #ps[
    #image("../resources/R-2022-4.png")
  ]
]

#req("21")[
  设函数 $f (x)$ 在 $(- oo , + oo)$ 内具有 2 阶连续导数, 证明:
  $f prime.double (x) gt.eq 0$ 的充分必要条件是

  对不同的实数 $a , b$, 有 $f (frac(a + b, 2)) lt.eq frac(1, b - a) integral_a^b f (x) dif x.$

  #ps[
    中点上的泰勒公式。
  ]
]

== year 2023

#qst("16")[
  已知线性方程组 $ cases(
    a x_1 + x_3 = 1,
    x_1 + a x_2 + x_3 = 0,
    x_1 + 2 x_2 + a x_3 = 0,
    a x_1 + b x_2 = 2
  ) $ 有解, 其中 $a , b$ 为常数. 若
  $
    mat(delim: "|", a, 0, 1; 1, a, 1; 1, 2, a) = 4 , upright(" 则 ") mat(delim: "|", 1, a, 1; 1, 2, a; a, b, 0) = underline(#hide[0]) .
  $

  #ps[
    此题将线性方程组所对应的增广矩阵写出来，可以发现其是一个 $4 times 4$ 的方阵，且系数矩阵对应的上三行和下三行恰是题目所给的两个行列式，根据增广矩阵的秩与行列式的关系，按第三列展开即可。
  ]

]

#qst("19")[
  已知平面区域
  $D = {(x , y) | 0 lt.eq y lt.eq frac(1, x sqrt(1 + x^2)) , x gt.eq 1}$.

  求 $D$ 的面积;
]

#req("20")[
  设平面有界区域 $D$ 位于第一象限, 由曲线
  $x^2 + y^2 - x y = 1 , x^2 + y^2 - x y = 2$ 与直线 $y = sqrt(3) x$, $y = 0$ 围成, 计算 $integral.double_D frac(1, 3 x^2 + y^2) dif x dif y$.
]

#req("21")[
  设函数 $f (x)$ 在 $[- a , a]$ 上有二阶连续导数. 证明:

  + 若 $f (0) = 0$, 则存在 $xi in (- a , a)$, 使得
    $f prime.double (xi) = 1 / a^2 [f (a) + f (- a)]$;

  + 若 $f (x)$ 在 $(- a , a)$ 内取得极值, 则存在 $eta in (- a , a)$,
    使得
    $lr(|f prime (eta)|) gt.eq frac(1, 2 a^2) lr(|f (a) - f (- a)|)$.
]

== year 2024

#qst("5")[
  已知函数
  $f (x , y) = cases(delim: "{", (x^2 + y^2) sin frac(1, x y) \, & x y eq.not 0, 0\, & x y = 0,)$
  则在点 $(0 , 0)$ 处 $(quad)$

  + $frac(partial f (x , y), partial x)$ 连续, $f (x , y)$ 可微.

  + $frac(partial f (x , y), partial x)$ 连续, $f (x , y)$ 不可微.

  + $frac(partial f (x , y), partial x)$ 不连续, $f (x , y)$ 可微.

  + $frac(partial f (x , y), partial x)$ 不连续, $f (x , y)$ 不可微.

  #ps[
    这道题是非常重要的，可以看出来我对多元函数微分，甚至是一元函数微分中求导函数是否连续的概念的掌握不牢固。

    求导函数是否连续，也即求导函数在某点是否连续，若将导函数视作一个新的函数，也就是求某一分段函数在某点是否连续：分段函数一支是在该点之外的导数，通常是表达式，一支是该点处的导数，通常是指，再对其进行求极限，判断极限值是否为函数值（判断是否连续）即可。

    此题我求解时的谬误在于，认为用 $ lim_(x -> 0 \ y -> 0) (f(x, y) - f(0, 0))/x $ 可以求出当 $x y != 0$ 时的导数表达式。

    正确的写法应该是 $ lim_(x -> 0 \ y -> 0) [lim_(x -> c) (f(x, y) - f(c, y))/(x - c)] $

    而即便是写出了此式，要想求出表达式依然要进行洛必达，这样通过定义，就又回到了直接 $x y != 0$ 部分的原函数求导，所以不如直接求导，不考虑定义。
  ]
]

#req("7")[
  设非负函数 $f (x)$ 在 $\[ 0 , + oo \)$ 上连续, 给出以下三个命题:

  + 若 $integral_0^(+ oo) f^2 (x) dif x$ 收敛, 则
    $integral_0^(+ oo) f (x) dif x$ 收敛.

  + 若存在 $p > 1$, 使得 $lim_(x arrow.r + oo) x^p f (x)$ 存在, 则
    $integral_0^(+ oo) f (x) dif x$ 收敛.

  + 若 $integral_0^(+ oo) f (x) dif x$ 收敛, 则存在 $p > 1$, 使得
    $lim_(x arrow.r + oo) x^p f (x)$ 存在.

  其中真命题的个数为 $(quad)$

  #ps[
    对于 (3) 要积累例子 $f = 1/(x ln x)$ 与 $f = 1/(x ln^2 x)$。

    当 $exists p > 1$
    $
      lim_(x -> oo) x^p/(x ln^2 x) = lim_(x -> oo) x^(p - 1)/(ln^2 x) =^"Hospital" lim_(x -> oo) (x^(p - 2) dot (p - 1))/(2 ln x dot 1/x)
      = lim_(x -> oo) x^(p - 1)/(ln x) = oo .
    $
  ]
]

#req("10")[
  设 $bold(A) , bold(B)$ 为 2 阶矩阵, 且
  $bold(A) bold(B) = bold(B) bold(A)$, 证明 “$bold(A)$
  有两个不相等的特征值” 是 “$bold(B)$ 可对角化” 的 $(quad)$ 充分不必要条件.
]

#req("21")[
  设函数 $f (x)$ 具有 2 阶导数, 且 $f prime (0) = f prime (1)$,
  $lr(|f prime.double (x)|) lt.eq 1$. 证明:

  + 当 $x in (0 , 1)$ 时,
    $lr(|f (x) - f (0) (1 - x) - f (1) x|) lt.eq frac(x (1 - x), 2)$;

  + $lr(|integral_0^1 f (x) dif x - frac(f (0) + f (1), 2)|) lt.eq 1 / 12$.

]

== year 2025

#req("3")[
  如果对微分方程 $y prime.double - 2 a y prime + (a + 2) y = 0$ 的任一解
  $y (x)$, 反常积分 $integral_0^(+ oo) y (x) dif x$ 均收敛, 求
  $a$ 的取值范围.

  #ps[
    这道题的问题的常规方法是根据解的判定即 $Delta = b^2 - 4 a c$ 来判断解的情况，细粒度的处理同解 $y(x)$ 的可能，不应该直接根据配方法求出 $lambda_1, lambda_2$ 盲目判断。
  ]
]

#req("21")[
  设函数 $f (x)$ 在区间 $(a , b)$ 内可导, 证明导函数 $f prime (x)$ 在
  $(a , b)$ 内严格单调增加的充分必要条件是: 对 $(a , b)$ 内任意的 $x_1 , x_2 , x_3$, 当 $x_1 < x_2 < x_3$ 时, 有
  $ frac(f (x_2) - f (x_1), x_2 - x_1) < frac(f (x_3) - f (x_2), x_3 - x_2) . $
]

#pagebreak()
= 2026 超越 5 + 5 套卷
== vol 1

#qst("3")[
  若 $f = a + b x + c x^2 + o(x^2)$，判断其是否满足 $f''(x) = 2 c$.

  #ps[
    看到这里一般都会想到用泰勒展开的唯一性，但是和所有中值定理一样，泰勒展开也有其前提条件，但是题目并没有明确指出 $f(x)$ 可导，考虑狄利克雷函数 @dirichlet-f 。 若将 $f$ 设为 $f = 1 + x^2 + x^3 D(x)$，函数虽然在某点处存在一阶导函数，但是并不存在二阶导函数。
  ]
]

#qst("8")[
  设 $bold(A) , bold(E)$ 为 $n$ 阶矩阵，$bold(B)$ 为 $n times m$
  矩阵，$bold(C)$ 为 $m times n$ 矩阵，
  $
    bold(M) = mat(delim: "(", bold(A), bold(A B); bold(C A), bold(O)) , quad bold(N) = mat(delim: "(", bold(E), bold(B); bold(A), bold(O)) .
  $
  其中 $r (bold(M)) = r (bold(N))$，若 $r (bold(C)) = n$，则（ ）。

  + $r (bold(A)) = n$

  + $r (bold(A)) = m$

  + $r (bold(B)) = n$

  + $r (bold(B)) = m$

  #ps[
    要熟练运用广义初等变换。
  ]
]

#qst("10")[
  设 $bold(A)$ 为 $2 times 3$ 矩阵，若
  $lr(|bold(A) bold(A)^(upright(T))|) = 2 , lr(|bold(A)^(upright(T)) bold(A) - 2 bold(E)|) = 0$，则
  $lr(|bold(A)^(upright(T)) bold(A) + 2 bold(E)|) =$（ ）。

  + $- 12$

  + $12$

  + $- 24$

  + $24$

  #ps[
    以下思路是不对的：$|bold(A)^upright(T) bold(A)| = |bold(A) bold(A)^upright(T)| = |bold(A)| |bold(A)^upright(T)| = 2 => r(bold(A)^upright(T) bold(A)) = 3$， 因为 $bold(A)$ 不是方阵，所以只能用 $r(bold(A)^upright(T) bold(A)) = r(bold(A)bold(A)^upright(T)) = 2$

    在找特征值时，要注意特征方程的转化思想，例如通过 $ bold(A) bold(A)^upright(T) x = 2x => bold(A)^upright(T) bold(A) (bold(A)^upright(T) x) = 2 (bold(A)^upright(T) x) $ 可以推得，$bold(A)^upright(T) bold(A)$ 与 $bold(A) bold(A)^upright(T)$ 有两个相同的特征值。
  ]
]

#qst("18")[
  $
    frac(integral_0^pi frac(sin^2 t, 1 + cos^2 t) thin dif t, integral_0^pi frac(1, 1 + cos^2 t) thin dif t)
  $

  #ps[
    在计算 $integral_0^pi frac(cos^2 t, 1 + cos^2 t) thin dif t$ 时，分子分母仅相差常数项，一般可以通过把分子凑成分母的形式。
  ]

]
#qst("19")[
  函数 $f (x , y)$ 的全微分
  $ dif f (x , y) = 3 (x - y)^2 dif x - 3 (x^2 - 2 x y + 2 y^2 - 2) dif y , $
  且 $f (0 , 0) = 0$。

  + 求 $f (x , y)$.

  + 求 $f (x , y)$ 在闭区域
    $D = { (x , y) divides x gt.eq 0 , y gt.eq 0 , x + y lt.eq 3 }$
    上的最值.
]

== vol 2

#qst("1")[
  已知连续函数 $y = y (x)$ 由方程
  $ 1 / 2 x + sqrt(3) / 2 y = arctan (sqrt(3) / 2 x - 1 / 2 y) $
  确定，则下列说法中正确的个数为（ ）。

  + $y (x)$ 为奇函数；

  + $y (x)$ 的零点个数是 3；

  + 曲线 $y = y (x)$ 有两条斜渐近线。
]

#qst("2")[
  设函数 $f (x)$ 在闭区间 $[- 1 , 1]$ 上连续，数列 ${ a_n }$ 满足
  $a_n in (- 1 , 1) , n in bb(N)$. 则（ ）。


  #set enum(numbering: "A.")
  + 若数列 ${ f (a_n) }$ 收敛，则数列 ${ a_n }$ 收敛

  + 若数列 ${ f (a_n) }$ 发散，则数列 ${ a_n }$ 可能收敛

  + 若数列 ${ a_n }$ 单调，则数列 ${ f (a_n) }$ 收敛

  + 若数列 ${ f (a_n) }$ 单调，则数列 ${ a_n }$ 收敛
]

#qst("3")[
  设函数
  $ f (x) = frac((x + 1)^2 tan pi x, lr(|x^2 - 1|) sqrt(x + 2)) , $ 则关于
  $f (x)$ 间断点的描述不正确的是（ ）。

  #set enum(numbering: "A.")

  + $x = - 2$ 为第二类间断点

  + $x = - 1$ 为可去间断点

  + $x = 1 / 2$ 为第二类间断点

  + $x = 1$ 为跳跃间断点

  #ps[
    间断点两侧必须要有定义。
  ]
]

#qst("9")[
  设 $bold(A) = (a_(i j))$ 为三阶非零矩阵，$A_(i j)$ 为
  $lr(|bold(A)|)$ 中 $a_(i j)$ 的代数余子式，满足
  $a_(i j) = - A_(i j) , 1 lt.eq i lt.eq 3 , 1 lt.eq j lt.eq 3$，$bold(alpha) , bold(beta)$
  为任意 3 维列向量，$bold(E)$ 为三阶单位矩阵，判断给出的下列结论的正误。

  + $bold(alpha)^(upright(T)) bold(A)^(upright(T)) bold(A) bold(alpha) = ||bold(alpha)||^2$;

  + $[bold(A) bold(alpha) , bold(A) bold(beta)] = [bold(alpha) , bold(beta)]$;

  + 齐次线性方程组 $(bold(A) + bold(E)) bold(x) = 0$ 有非零解；

  + $upright(t r) (bold(A)^2) = [upright(t r) (bold(A))]^2$.

]

#qst("11")[
  $
    lim_(n arrow.r oo) integral_0^1 frac(sqrt(1 + n arctan x^2), 1 + x^2) dif x = underline(quad) .
  $
]

#qst("12")[
  已知函数 $f (x) = (1 + sqrt(x))^8 + (1 - sqrt(x))^8$，则
  $f^((3)) (1) = underline(quad)$。

  #ps[
    二项式定理将 $(u v)^8$ 展开。
  ]
]

#qst("16")[
  二次型 $f (x_1 , x_2 , x_3) = 2 a x_1 x_2 + 4 x_1 x_3 - 4 x_2 x_3$
  的正惯性指数为 2，则 $a$ 的取值范围为

  #ps[
    在讨论根的时候，可以使用韦达定理。
  ]
]

#qst("17")[
  计算
  $ integral frac(e^x sqrt(e^x - 1), (e^x + 3)^2) dif x . $
]

#qst("20")[
  设
  $D = {(x , y) divides x^2 + y^2 lt.eq pi^2 / 16 , x gt.eq 0 , y gt.eq 0}$
  ，计算二重积分
  $ integral.double_D frac(ln (1 + tan sqrt(x^2 + y^2)), sqrt(x^2 + y^2)) dif sigma . $

  #ps[
    区间再现的一种，利用了 $ tan (alpha plus.minus beta) = (tan alpha plus.minus tan beta) / (1 minus.plus tan alpha tan beta) $
  ]
]

#qst("22")[
  已知二次型
  $f (x_1 , x_2 , x_3) = 2 x_1^2 + 2 x_2^2 + a x_3^2 - 2 x_1 x_2 + 2 x_1 x_3 - 2 x_2 x_3$

  其矩阵为 $bold(A)$。$bold(alpha) = vec(1, b, 1)$ 是矩阵 $bold(A)$
  对应特征值 $lambda$ 的一个特征向量（$b < 0$）。

  + 求 $a , b , lambda$;

  + 求正交变换 $bold(x) = bold(Q) bold(y)$，将二次型 $f (x_1 , x_2 , x_3)$
    化为标准型，并写出相应的标准型；

  + 求 $f (x_1 , x_2 , x_3)$ 在 $bold(x)^(upright(T)) bold(x) = 1$
    的条件下的最小值。
]


== vol 3

#qst("2")[
  下列命题正确的个数为（ ）。

  + $f (x) = frac(x, integral_0^x lr(|cos t|) thin dif t)$ 在 $(0 , + oo)$
    内有界；

  + 在 $(- oo , + oo)$ 上连续的周期函数 $f (x)$ 一定有界；

  + 若 $f (x)$ 在 $(a , b)$ 内可导，且导函数有界，则 $f (x)$ 在 $(a , b)$
    内一定有界；

  + 若 $f (x)$ 在 $\[ 0 , + oo \)$ 内可导，且
    $lim_(x arrow.r + oo) f prime (x) = 0$，则 $f (x)$ 在 $\[ 0 , + oo \)$
    内有界。
]

#qst("8")[
  设 $bold(A)$ 为 3 阶非奇异矩阵，且
  $bold(A)^(- 1) = 3 bold(E) - bold(A)$，其中 $bold(E)$ 为 3
  阶单位矩阵，则与矩阵
  $(bold(A) - bold(E))^(upright(T)) (bold(A) - bold(E))$ 合同的是（ ）。

  #set enum(numbering: "A.")
  + $mat(delim: "(", 0, , ; #none, 0, ; #none, , 1)$

  + $mat(delim: "(", 0, , ; #none, 1, ; #none, , 1)$

  + $mat(delim: "(", 1, , ; #none, 0, ; #none, , 1)$

  + $mat(delim: "(", 1, , ; #none, 1, ; #none, , 1)$
]

#qst("11")[
  曲线 $x^2 + y^2 = lr(|x|) - lr(|y|)$ 围成的区域绕 $y$
  轴旋转一周形成的旋转体体积是
]

#req("14")[
  $
    integral_(- 1)^0 dif y integral_(- y)^1 (x^2 y^3 + x - 1) dif x + integral_0^1 dif y integral_(1 - sqrt(1 - y^2))^1 (x^2 y^3 + x - 1) dif x = underline(quad) .
  $
]

#qst("15")[
  $ integral_(- oo)^0 frac(e^(x / 6), 1 + e^(x / 2) + e^(x / 3) + e^(x / 6)) dif x = underline(quad) . $

  #ps[
    绝世好题。
  ]
]<26-cy-v3-q15>

#qst("17")[
  求极限
  $lim_(n arrow.r oo) n^2 [(1 + frac(1, n + 1))^(n + 1) - (1 + 1 / n)^n]$.
]

#qst("22")[
  设
  $bold(A) = mat(delim: "(", 1, - 1; 1, 1; a, b) , bold(C) = mat(delim: "(", 1, 1, a; 1, 2, 1; a, 1, 1)$.

  + 求参数 $a , b$, 使得存在矩阵 $bold(B)$, 满足
    $bold(A) bold(B) = bold(C)$.

  + 求矩阵 $bold(B)$.

  + 令 $bold(x) = (x_1 , x_2)^(upright(T))$, 求二次型
    $f = bold(x)^(upright(T)) bold(B) bold(A) bold(x)$ 正负惯性指数.
]


== vol 4


#req("3")[
  判断
  $I_1 = integral_0^(pi / 2) frac(tan x, x sqrt(pi - 2 x)) dif x , I_2 = integral_0^(+ oo) frac(ln x, sqrt(x^3 + x)) dif x$，的敛散性。
]<26-cy-v4-q3>

#qst("6")[
  设 $D : x^(2 / 3) + y^(2 / 3) lt.eq 1 , x gt.eq 0 , y gt.eq 0$，
  $
    I_1 & = integral.double_D tan (x - y) dif sigma , \
    I_2 & = integral.double_D frac(tan (x^2 + y^2), x^2 + y^2) dif sigma , \
    I_3 & = integral.double_D frac(x^2 + y^2, sin (x^2 + y^2)) dif sigma ,
  $
  则 $I_1 , I_2 , I_3$ 的大小关系为（ ）.

  #set enum(numbering: "A.")
  + $I_1 < I_2 < I_3$

  + $I_2 < I_1 < I_3$

  + $I_2 < I_3 < I_1$

  + $I_1 < I_3 < I_2$
]<26-cy-v4-q6>


#qst(
  "8",
)[
  $bold(P) = mat(delim: "(", 1, 0, 0; 0, 0, 1; 0, 1, 0) , bold(P)^(upright(T)) bold(A) bold(P)^2026 = mat(delim: "(", 1, 0, 0; 0, 1, 0; 0, 0, 2) , n$
  为正整数，则 $A^(2 n) =$
]

#req("18")[
  设
  $a_n = integral_0^(pi / 2) 1 / (1 + sin x)^n dif x (n gt.eq 1)$.

  + 求 $lim_(n arrow.r oo) a_n$；

  + 证明
    $lim_(n arrow.r oo) [a_1 - a_2 + a_3 - dots.h.c + (- 1)^(n - 1) a_n]$
    存在.
]

#req("19")[
  设 $D$ 是由 $r = 2 cos theta$
  所围区域，计算二重积分
  $ I = integral.double_D sqrt(4 r cos theta - r^2 sin^2 theta) * r dif r . $
]

#qst("22")[设实数 $a eq.not 0$，向量组
  $bold(alpha)_1 = (a , 0 , 1)^(upright(T)) , bold(alpha)_2 = (0 , - a , 0)^(upright(T)) , bold(alpha)_3 = (1 , 0 , a)^(upright(T))$.
  已知向量 $bold(beta) = (1 , 1 , - 1)^(upright(T))$ 不能由
  $bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3$ 线性表示，向量
  $bold(gamma)$
  满足：$bold(gamma) = k_1 bold(alpha)_1 + k_2 bold(alpha)_2 + k_3 bold(alpha)_3$，且
  $bold(beta)^(upright(T)) bold(alpha)_i = bold(gamma)^(upright(T)) bold(alpha)_i , (i = 1 , 2 , 3)$.

  + 求 $a$ 的值；

  + 证明：$bold(beta) - bold(gamma)$ 为
    $bold(A)^(upright(T)) bold(x) = bold(0)$ 的解；

  + 求 $bold(gamma)$.
]

== vol 5

#qst("3")[
  设 $alpha > 1$, $I_1 = integral_0^1 sin^alpha x thin dif x$,
  $I_2 = integral_0^1 sin x^alpha thin dif x$,
  $I_3 = integral_0^1 tan^alpha x thin dif x$,
  $I_4 = integral_0^1 tan x^alpha thin dif x$，则下列结论正确的是（
  ）.

  + $I_1 gt.eq I_2 thin , thin I_3 gt.eq I_4$

  + $I_1 gt.eq I_2 thin , thin I_3 lt.eq I_4$

  + $I_1 lt.eq I_2 thin , thin I_3 gt.eq I_4$

  + $I_1 lt.eq I_2 thin , thin I_3 lt.eq I_4$
]<26-cy-v5-q3>

#qst("4")[
  关于下列命题说法正确的是（ ）。

  + 若 $f (x) , g (x)$ 均为 $[a , b]$ 上的连续函数, 则方程
    $f (x) integral_a^x g (t) thin dif t = g (x) integral_x^b f (t) thin dif t$
    在 $(a , b)$ 内至少有一个根；

  + 若 $f (x)$ 是 $[a , b]$ 上的连续可导函数且 $f prime (x) > 0$, 则方程
    $(x - a) integral_x^b f (t) thin dif t = (b - x) integral_a^x f (t) thin dif t$
    在 $(a , b)$ 内至少有一个根.
]

#qst("6")[
  设 $D = { (x , y) thin \| thin x^2 + y^2 lt.eq 1 }$，常数
  $a > 1$，则积分
  $ I = integral.double_D (frac(x, a + x^5) + frac(y, a - y^5)) dif sigma $
  的值（ ）.

  + 大于 0

  + 等于 0

  + 小于 0

  + 符号与 $a$ 的取值有关

  #ps[
    二重积分的本质确实就是换元，但是要注意的是，换元要细致。另外尽量不要实际去换元，想像成线性映射即可。
  ]
]

#qst("11")[
  $lim_(n arrow.r oo) frac(1, n + 1) root(n, 1 dot.op 3 dot.op 5 * dots.h.c * (2 n + 1)) = underline(#hide[0 0 0 0 0 ])$.

  #ps[
    TODO! 什么时候要想到定积分的定义，什么时候要用放缩？
  ]

]

#req("14")[
  $ integral_0^4 frac(dif x, sqrt(4 + x) + sqrt(4 - x) + 4) $.
]<26-cy-v5-q14>

#pagebreak()

= 2026 张宇八套卷
`2, 6, 9, 10, 13, 16, 18, 21, 22`

== vol 1

#qst("2")[
  设
  $I_i = integral.double_(D_i) e^(- (x^2 + y^2)) thin dif sigma , thin i = 1 , 2 , 3$，其中
  $
    cases(
      D_1 & = { (x , y) divides x^2 + y^2 lt.eq R^2 }, ,
      D_2 & = { (x , y) divides x^2 + y^2 lt.eq 2 R^2 }, ,
      D_3 & = { (x , y) divides lr(|x|) lt.eq R , lr(|y|) lt.eq R },
    ) thin R > 0 ,
  $
  判断 $I_i$ 大小。

  #ps[
    要区分两种类型的定积分比大小问题：
    + 区间相同，被积函数不同,
    + 被积函数相同，区间不同。
  ]
]

#qst("6")[
  设一单位质量细杆的长为 1，$G$ 为引力常数。当质量为 $a$
  的质点在细杆延长线上距杆右端点的 $1 / 2$ 处移至 $1 / 3$
  处时，求引力做功.

  #ps[
    经典的引力模型中，只有
    + 一动质点和一静质点，求动质点克服引力做功,
    + 一静质点与一细杆，求细杆对质点的引力。
    而此题所求为，一动质点在运动时，克服细杆引力做功，关键在于：将细杆看作区间上无穷个质点相加，即先对细杆做微分，求出对于其中一小部分微分，动质点运动所做的功， 再对这段区间上的细杆微分积分。
  ]
]<26-z8-v1-q6>

#qst("9")[
  设二次型 $f (x_1 , x_2 , x_3)$ 在正交变换 $bold(x) = bold(P) bold(y)$
  下的标准形为 $y_1^2 + y_2^2 - 2 y_3^2$，其中
  $bold(P) = (bold(e)_1 , bold(e)_2 , bold(e)_3)$，若 $bold(Q) = (- bold(e)_3 , bold(e)_2 , bold(e)_1)$，则
  $f (x_1 , x_2 , x_3)$ 在正交变换 $bold(x) = bold(Q) bold(y)$
  下的标准形为（ ）。

  #set enum(numbering: "A.")
  + $2 y_1^2 - y_2^2 + y_3^2$

  + $2 y_1^2 + y_2^2 - y_3^2$

  + $- 2 y_1^2 + y_2^2 + y_3^2$

  + $- 2 y_1^2 - y_2^2 + y_3^2$

  #ps[
    这道题我的做法比较笨，是直接构造初等变换矩阵，代入了。

    一种扩展的解法是，二次型矩阵均为实对称矩阵，故经过正交变换所的的标准型系数均为二次型矩阵的特征值，而正交矩阵 $bold(P)$ 中的向量为其特征向量，将问题转化到特征值与特征向量上。本题就转换为了求正交矩阵 $bold(Q)$ 中特征向量对应的特征值。
  ]

]<zy-2026-1-q9>

#qst("10")[
  设 $bold(A)$ 为 $n$ 阶矩阵，$r (bold(A)) = r$，$bold(E)_r$ 为 $r$ 阶单位矩阵，则 “$bold(A)^2 = bold(A)$” 是 “存在列满秩矩阵 $bold(C)_(n times r)$，使得 $bold(A) = bold(C) bold(B) , bold(B C) = bold(E)_r$” 的 （充分与必要性）。

  #ps[
    必要性是显然的，而充分性比较难证明：
    其证明思路是首先证明 $bold(A)$ 可相似对角化，进而通过将 $bold(A)$ 相似对角化后的对角矩阵分解为两个矩阵相乘的形式，通过验证所给条件即可。
  ]
]<26-z8-v1-q10>

#proposition()[
  $(bold(A) - b bold(E)) (bold(A) - a bold(E)) = 0, a != b$ 可得到 $bold(A)$ 可相似对角化。
  #proof[
    $ r (bold(A) - b bold(E)) + r (bold(A) - a bold(E)) <= n $
    由 $(bold(A) - b bold(E)) - (bold(A) - a bold(E)) = (a - b) bold(E)$ 得，

    $
      r (bold(A) - b bold(E)) + r (bold(A) - a bold(E))
      >= r ((bold(A) - b bold(E)) - (bold(A) - a bold(E))) = r((a - b) bold(E)) = n
    $

    故
    $ r (bold(A) - b bold(E)) + r (bold(A) - a bold(E)) = n $

    又因为 $bold(A)$ 的特征值为 $a, b$ 且对 $a$ 的特征向量有 $n - r(bold(A) - a bold(E))$ 个无关解，同理对 $b$ 有 $n - r(bold(A) - b bold(E))$ 个无关解，所以 $bold(A)$ 有 $n - r(bold(A) - a bold(E)) + n - r(bold(A) - b bold(E)) = n$ 个无关的特征向量，故可相似对角化。
  ]
]

#qst("13")[
  设 $e^(a x) gt.eq 1 + x$ 对任意实数 $x$ 均成立，求 $a$ 的取值范围

  #ps[
    不等式两边除以一个负数时，不等式要变号！
  ]
]

#qst("16")[
  设四元齐次线性方程组

  $
    (upright(bold(I))) = cases(
      2 x_1 + 3 x_2 - x_3 = 0,
      x_1 + 2 x_2 + x_3 - x_4 = 0
    )
  $

  且四元齐次线性方程组 $(upright(bold(I I)))$ 的一个基础解系为 $bold(xi)_1 = (2 , - 1 , k + 2 , 1)^upright(T) , bold(xi)_2 = (- 1 , 2 , 4 , k + 8)^upright(T)$，若方程组 $(upright(bold(I)))$ 与 $(upright(bold(I I)))$ 没有非零公共解，求 $k$ 的取值范围.

  #ps[
    对于齐次方程，非 $0$ 公共解为，两个方程组的基础解系联立，求得的其中的系数，即为两方程组的公共解。 而题目要求没有非零公共解，将两方程组基础解系联立后的方程当作系数的方程来看，就是使其只有零解，也即，齐次方程组 $"rank"(bold(A)) = n$。
  ]
]

#qst("18")[
  计算
  $ integral_0^3 (x^2)/(x^2 - 3x + 3)^2 dif x $

  #ps[
    有理函数的积分，此种题型为 #hl[分母质因数（不可分解）] 所以应该
    1. 分⼦拆出来分⺟的导数再配平
    2. 拆成两部分算 ⼀部分直接凑微分 另⼀部分先配⽅后凑微分
  ]

  #ref[一元积分大观。]
]<26-z8-v1-q18>

#qst("22")[
  设矩阵 $bold(A) = mat(delim: "(", - 1, 0, 1; 1, 2, 0; a, 0, 3)$ 与
  $bold(B) = mat(delim: "(", 1, b, 0; 0, 1, 0; 0, 0, 2)$ 相似，且
  $bold(A) bold(x) = bold(x) + mat(b; - b; 2 b)$ 的一个解为
  $mat(0; - 1; 1)$，求

  + $a , b$ 的值；

  + $bold(A)^100$。

  #ps[
    此题第二问为 Jordan 标准型，不是相似对角化，对于此类题型应该通过矩阵方程求出可逆矩阵。
  ]
  #ref[#redtxt[Jordan 标准型]: https://www.bilibili.com/video/BV18L2dYPEZU]
]<26-z8-v1-q22>

== vol 2
`3, 6, 10, 16, 19, 21, 22`

#qst("2")[
  设函数 $f (x)$ 在 $(0 , + oo)$ 上有界且可导，$f' (x)$ 单调增加，则

  #set enum(numbering: "A.")

  + ${ f (n) }$ 收敛, ${ n f' (n) }$ 收敛.

  + ${ f (n) }$ 收敛, ${ n f' (n) }$ 发散.

  + ${ f (n) }$ 发散, ${ n f' (n) }$ 收敛.

  + ${ f (n) }$ 发散, ${ n f' (n) }$ 发散.

  #ref[
    https://www.bilibili.com/video/BV1R2xazhE5N?p=25
  ]
]

#qst("3")[
  $ integral_(- 1)^5 frac(1, 1 + 2^root(3, x - 2)) thin dif x = $

  #ps[
    + $(a^x - 1)/(a^x + 1)$ 是一个典型的奇函数。

    + 在处理出现 $1/(1 + a^x)$ 的形式时，可以考虑区间代换。

  ]
]

#qst("6")[
  设函数 $z = f (x , y)$ 在极坐标下的表达式为
  $z = r^2 sin 3 theta$，则在点 $(0 , 0)$ 处

  #set enum(numbering: "A.")
  + $f'_x (x , y) , f'_y (x , y)$ 不连续, $f (x , y)$ 可微.

  + $f'_x (x , y) , f'_y (x , y)$ 不连续, $f (x , y)$ 不可微.

  + $f''_(x y) (0 , 0) , f''_(y x) (0 , 0)$ 均存在.

  + $f''_(x y) (0 , 0)$ 存在, $f''_(y x) (0 , 0)$
    不存在.

  #ps[
    这道题主要是化简 $z$，使其能被 $(x, y)$ 表示。注意当 $r$ 次数不够时，应转化为 $r^a/r^b$ 因为 $r$ 天然可以被 $x, y$ 表示。

    #hl[且需要注意 $sqrt(x^2) = abs(x)$]
  ]
]<26-z8-v2-q6>


#qst("10")[
  设 $bold(A)$ 为 $n$ 阶实矩阵，则

  #set enum(numbering: "A.")
  + $mat(delim: "(", bold(A), bold(O); bold(E), bold(A)^upright(T) bold(A)) bold(x) = bold(0)$
    只有零解.

  + $mat(delim: "(", bold(O), bold(A); bold(A)^upright(T) bold(A), bold(A) bold(A)^upright(T) bold(A)) bold(x) = bold(0)$
    只有零解.

  + $mat(delim: "(", bold(A), bold(A)^upright(T) bold(A); bold(O), bold(A)^upright(T) bold(A)) bold(x) = bold(0)$
    与
    $mat(delim: "(", bold(A)^upright(T) bold(A), bold(A); bold(O), bold(A)) bold(x) = bold(0)$
    同解.

  + $mat(delim: "(", bold(A) bold(A)^upright(T) bold(A), bold(A)^upright(T) bold(A); bold(O), bold(A)) bold(x) = bold(0)$
    与
    $mat(delim: "(", bold(A)^upright(T) bold(A)^2, bold(A); bold(O), bold(A)^upright(T) bold(A)) bold(x) = bold(0)$
    同解.

  #ps[
    广义初等变换。
  ]
]

#qst("16")[
  已知二次型
  $f (bold(x)_1 , bold(x)_2 , bold(x)_3) = 4 bold(x)_1^2 + bold(x)_2^2 + a bold(x)_3^2 + 2 bold(x)_1 bold(x)_2 - 4 bold(x)_1 bold(x)_3 + 2 bold(x)_2 bold(x)_3$
  可经可逆线性变换但不可经正交变换化为
  $g (bold(y)_1 , bold(y)_2 , bold(y)_3) = b bold(y)_1^2 + 6 bold(y)_2^2$，求
  $a + b$ 的取值范围.

  #ps[
    要会翻译条件，此题中，可逆线性变换表示两矩阵合同，但不可经过正交变换，表明两矩阵不相似。

    还需要注意到的是，合同除了正负惯性指数相同，若有 $0$ 则两矩阵都有 $0$ 特征值。

    注意题中所述，#hl[不能相似] 所以 $b != 3$。
  ]

]

#qst("21")[
  设连续函数 $y = y (x)$ 满足
  $y prime + t^2 / y x^3 = y / x , y (1) = sqrt(9 - t^2)$，其中
  $0 lt.eq t lt.eq 3 , x > 0$。

  + 利用换元 $z = y^2$ 求 $y = y (x)$ 的表达式；

  + 令 $f (x) = 1 / 9 integral_0^3 y (x) dif t$，求曲线 $y = f (x)$ 的全长。

  #ps[
    问题是，自变量的取值到底是谁来规定的，就像这道题，题目只给了 $x > 0$，但是我求出来之后，如果加根号，就需要破坏单纯的 $x > 0$  的条件，而此时还有个参数 $t$ 简直麻烦到家了。

    回答是，确实是两个都要考虑，数学上所有函数都要有意义，根号的规定就是根号下必须 $>=0$，那么就必须满足这个条件。参数为 $t$ 那么就应该啊考虑 $t$ 的所有取值下 $x$ 的范围。不要在意是否会破坏题目所给的条件，因为单纯的 $x > 0$ 的情况下，是一定会存在点 $< 0$ 的。

    另外，要区分解出来是对数形式的是否加绝对值的情况和一般情况，绝对值只在解出来是对数的且系数不为$1$ 时需要考虑。
  ]
]

#qst("22")[
  设
  $ bold(A) = mat(delim: "(", 1, 1, 0; 0, 1, 1; 1, 0, 1) , $
  $bold(A)^upright(T) bold(A) = bold(B)^2$，其中 $bold(B)$ 为正定矩阵。

  + 求 $bold(B)$;

  + 证明存在正交矩阵 $bold(C)$，使得 $bold(A) = bold(C) bold(B)$，并求出
    $bold(C)$。

    #ps[
      可逆实矩阵可以分解为正交矩阵 $times$ 正定矩阵。
    ]

]

// == vol 3

// #req("6")[

// ]

// #req("7")[

// ]

// #req("9")[

// ]

// #req("10")[

// ]

// #req("14")[

// ]

// #req("16")[

// ]

// #req("17")[

// ]
// #req("19")[

// ]

// #req("20")[

// ]

// #req("21")[

// ]
// #req("22")[

// ]

#pagebreak()

== vol 4
`2, 10, 19, 22`
#qst("2")[
  函数 $f (x , y) = x^2 + y^2$ 在约束条件 $(x - 1)^3 = y^2$ 下是否有最值。

  #ps[
    条件极值可以通过约束条件换元使得原函数成为一元函数，然后转换为一元函数极值问题。
    #hl[此题还有要注意的点是 $x$ 的定义域。]
  ]

]

#qst("3")[
  设 $f (x)$ 在 $[0 , 1]$ 上可积，则
  $
    lim_(n -> o) sum_(i = 0)^(n - 1) ln[1 + 1/n f(i/n)] thin dif x =
  $

  #[
    #set enum(numbering: "A.")

    + $integral_0^1 ln[1 + (f(x))/n] thin dif x$

    + $integral_0^1 f (x) thin dif x$

    + $integral_0^1 f^2 (x) thin dif x$

    + $integral_0^1 ln [ 1 + f (x) ] thin dif x$
  ]

  #ps[
    有两种方法，
    + 泰勒展开
    + 夹逼定理
    直接使用等价无穷小是不严谨的。
  ]

]

#qst("5")[
  如果对于微分方程 $ y prime.double - (2 k - 4) y prime + k y = 0 $
  的任一解 $y (x)$，反常积分 $integral_0^(+ oo) y (x) thin dif x$
  均收敛，则 $k$ 的取值范围为

  #set enum(numbering: "A.")

  + $\( - oo , 1 \]$

  + $\( 0 , 1 \]$

  + $(- oo , 2)$

  + $(0 , 2)$

  #ps[
    此题应转化为对齐次微分方程解的结构的判定，要使积分收敛，必须使解中 $e^(lambda x)$ 项中的 $lambda < 0$，再根据解的结构，判断在什么条件下才能满足 $lambda < 0$ 即可。#hl[注意要考虑复根的情况。]
  ]

]

#qst("6")[
  证明：函数 $f (x)$ 在 $x = 0$
  的某邻域内有定义，
  $
    lim_(x arrow.r 0) lr(|f (x)|) / x "存在" <=>
    lim_(x arrow.r 0) frac(f (x), x) = 0
  $

  #ps[
    对于 $=>$，需要可以构造出
    $ lim_(x -> 0) (|f(x)|)/x = lim_(x -> 0) abs(f(x)/x) dot abs(x)/x = 0 $

    由 $lim_(x -> 0) abs(x)\/x$ 不存在， 知 $ lim_(x -> 0) f(x)/x = lim_(x -> 0) abs(f(x)/x) = 0 . $
  ]

]

#qst("10")[
  证明：设 $bold(A) , bold(B)$ 均为 2
  阶矩阵，$lr(|bold(A)|) eq.not lr(|bold(B)|) , lr(|bold(A)|) < 0 , lr(|bold(B)|) < 0 , bold(C) = mat(delim: "(", bold(A), bold(D); bold(O), bold(B)) , bold(D)$
  为任意 2 阶矩阵，则“$tr (bold(A)) = tr (bold(B))$”是“$bold(C)$
  可以相似对角化”的充分非必要条件。

  #ps[
    还是要学会翻译条件，此题应该从特征值出发翻译条件。
    #image("../resources/zy8-2026-4-10.png")
    由此可知，四个特征值不相等，故矩阵可相似对角化。

    对于必要性，首先迹相等的命题可以等价为四秩不相等，而四个特征值不相等并非是矩阵相似对角化的必要条件。

    （但是不是很懂这里还是要用举反例来破坏必要条件）
  ]
]

// #req("19")[

// ]

#qst("22")[
  设
  $
    bold(A) = mat(delim: "(", 1, - 2, 3; 0, 1, - 1; 1, 2, 0) ,
    bold(beta) = vec(- 4, 1, - 3) ,
    bold(B) = mat(delim: "(", - 2, 1, 3; 1, 0, - 1; 2, 1, 0) ,
    (bold(A) , bold(beta)) = bold(B) bold(C).
  $

  + 求 $bold(A) bold(x) = bold(beta)$ 的解，并求出 $bold(C)$;

  + 求满足 $(bold(A) , bold(beta)) bold(Y) = bold(E)$ 的所有 $bold(Y)$.

  #ps[
    第二问就是一个简单的解矩阵方程，不知道为啥考试的时候没看出来。
  ]

]
#pagebreak()
= 欧几里得月考模拟卷

== Sep
`5, 9, 10, 15, 16, 18, 20, 21, 22`


#qst("9")[
  根据题目构造出同解。以及根据同解的充要条件判断秩关系。
]


#qst("10")[
  左乘一个列满秩的矩阵，秩不变，右乘一个行满秩的矩阵，秩不变。
]

#req("15")[
  两种方法！ \
  ref: 1994, 2023
]<fxeqz-x-fgx>

#qst("16")[
  + 合同的充要条件。
  + 矩阵和其伴随矩阵特征值的关系。
]

#req("18")[
  + 无论是一元微分还是多元微分，分段函数求导问题应该多注意注意。
  + 高次多项式因式分解：试根，长除法。

  #hl[另外，一元微分不等式真得补补了。]
]

#req("20")[
  遇到 $arctan x$ 就要想一想会不会用到 $arctan x + arctan 1/x = pi/2$.
]

#req("21")[
  第二问的数列极限证明，可以先放一放。
]

#req("22")[
  #set enum(numbering: "i")
  2. 面对矩阵多项式，要想到可以长除法求逆，已知某矩阵的特征值，要想到 $lambda_f = f(lambda_A)$ 来求某子式的特征值来判断是否可逆。
    - 给矩阵多项式来证明 $bold(A B) = bold(B A)$，若可以求出 $(bold(B) - k bold(E)) (bold(A) - k bold(E)) = bold(E)$ 则可以很容易的根据：若 $bold(C D) = bold(E),$ 则 $bold(D C) = bold(E)$ 来构造相等。
]


== Oct
#qst("8")[
  设 $bold(A)$ 为 3 阶实对称矩阵，若存在正交矩阵
  $bold(Q) = (bold(e)_1 , bold(e)_2 , bold(e)_3)$ 使得
  $ bold(Q)^(- 1) bold(A) bold(Q) = mat(delim: "(", 1, 0, 0; 0, 1, 0; 0, 0, 3) , $
  令 $bold(P) = (bold(e)_1 + bold(e)_2 , bold(e)_2 , bold(e)_3)$，此时
  $bold(P)^upright(T) bold(A) bold(P) =$ （ ）

  #set enum(numbering: "A.")

  + $ mat(delim: "(", 1, 0, 0; 0, 1, 0; 0, 0, 3) $

  + $ mat(delim: "(", 2, 1, 0; 1, 1, 0; 0, 0, 3) $

  + $ mat(delim: "(", 1, 0, 0; 1, 1, 0; 0, 0, 1) $

  + $ mat(delim: "(", 1, 1, 0; 0, 1, 0; 0, 0, 3) $

  #ps[
    这个题和 #link(<zy-2026-1-q9>)[2026 张八 vol 1 q9] 看着很相似，但是因为题目所求的变换中的 $bold(P)$ 并非为正交矩阵，即 $bold(P)^upright(T) bold(A P)$ 也不是正交变换，故其不是对角阵，所以不能单纯从特征值入手。
  ]

]

#req("10")[
  设方程组 \(I) $ cases(
    x_1 + x_2 + x_3 = 1,
    x_2 + x_3 + x_4 = 2,
    x_1 + x_3 + x_4 = 3
  ) $ 方程组 (II) $a x_1 + b x_2 + x_3 + x_4 = 4$，

  方程组 (I) 中所有 $x_4$ 去掉变成方程组 \(III)，

  方程组 (II) 中所有 $x_4$ 去掉变成方程组 \(IV)，

  则下列说法中不正确的是（ ）

  #set enum(numbering: "A.")
  + 当 $a = 2 , #h(0em) b = - 1$ 时，方程组 \(I) 和 \(II)
    存在无穷多个公共解.

  + 当 $a + b = 1$ 且 $a eq.not 2$ 时，方程组 \(I) 和 \(II) 不存在公共解.

  + 当 $a + b eq.not 1$ 时，方程组 \(I) 和 \(II) 存在唯一公共解.

  + 当 $a = 2 , #h(0em) b = - 1$ 时，方程组 \(III) 和 \(IV) 不存在公共解.

  #ps[
    依然是公共解问题。
  ]

]

$
  Delta pi
$

$
  f = cases(
    x sin 1/x\, x != 0,
    0\, x = 0
  )
$

#req("12")[
  $ lim 1 / n sum_(k = 1)^n sin frac(k pi, n) sin (frac(k pi, n) + frac(pi, 2 n)) = underline(quad) . $

  #ps[
    放缩。
  ]

]

#req("15")[
  设 $g (x)$ 是函数
  $ f (x) = frac(ln (e^(x^2) + 1), x + e^(- x) + 2) quad (x > 0) $
  的反函数， 求 $y=g(x)$ 的斜渐近线方程.

  #ps[抓大头。]
]

#req("22")[
  设三阶实对称矩阵 $bold(A)$ 的伴随矩阵为
  $bold(A)^(\*)$，$r (bold(A)) eq.not r (bold(A)^(\*))$，且
  $bold(A) - 2 bold(E)$ 可经过初等行变换化为
  $ mat(delim: "[", 1, 1, 1; 0, 0, 0; 0, 0, 0) . $

  + 求矩阵 $bold(A)$;

  + 记 $bold(x) = (x_1 , x_2 , x_3)^(upright(T))$，求方程
    $bold(x)^(upright(T)) bold(A)^(\*) bold(x) = 0$ 的全部解。

  #ps[
    逆用相似对角化。
  ]
]

== Nov


#pagebreak()


= 2025 合工大超越 5 + 5 套卷


== vol 1
`7, 10, 16, 21, 22`

#qst("10")[
  设 $bold(P)$ 为 3 阶可逆矩阵, 且
  $bold(P)^(upright("T")) = bold(P)^(\*) , bold(P)^(\*)$ 为 $bold(P)$
  的伴随矩阵, $bold(A)$ 为 3 阶实对称矩阵, $bold(x)$ 为三维列向量, 二次型 $bold(x)^(upright("T")) bold(A) bold(x)$ 经变换 $bold(x) = bold(P) bold(y)$ 化为二次型 $bold(y)^(upright("T")) bold(B) bold(y)$, 则 $bold(A) , bold(B)$ 的关系为 $(quad)$

  + 等价, 相似, 且合同

  + 等价, 相似, 未必合同

  + 等价, 合同, 未必相似

  + 合同, 相似, 未必等价

  #ps[
    矩阵合同、相似、等价之间的关系。
    #figure(
      image("../resources/cy-25-vol1-10.png", width: 70%),
    )
  ]
]

#qst("16")[
  设 $bold(xi)_1 = vec(1, 0, - 1, 0) , bold(xi)_2 = vec(- 1, 1, 0, 1)$是齐次线性方程组 $bold(A) bold(x) = bold(0)$ 的基础解系.

  $bold(eta)_1 = vec(1, 2, - 1, 2) , bold(eta)_2 = vec(0, 1, 1, 1)$ 是齐次线性方程组 $bold(B) bold(x) = bold(0)$ 的基础解系, 求齐次方程组 $vec(bold(A), bold(B)) bold(x) = bold(0)$ 的解.

  #ps[
    公共解的求法。
  ]
]

#req("21")[
  中值定理，先放了。
]

#qst("22 ii")[
  设 $bold(A)$ 为 3 阶实对称矩阵, $lr(|bold(A)|) = 0$,
  $tr(bold(A)) = 4$, 且 $bold(A)$ 有一个二重特征值，

  $bold(alpha) = (1 , - 1 , 1)^(upright("T"))$ 是单特征值对应的特征向量.

  + 当单特征值不等于 0 时, 求 $bold(A)$ 以及 $bold(A) bold(x) = bold(0)$
    的通解;

  + 当单特征值等于 0 时, 求正定矩阵 $bold(B)$, 使得
    $bold(A) = bold(B)^2 - 2 bold(E)$.

  #ps[
    总结，反思，举一反三 $bold(A)^n$ 。
  ]
]

== vol 2
`5, 9, 12, 21`

#qst("5")[
  设可微函数 $u (x , y)$ 满足
  $frac(partial u, partial x) - frac(partial u, partial y) = 2 x cos(x + y)$,
  令 $g (x , y) = u (x + y , x - y)$. 有
  $g (x , 0) = 0$, 求 $u (1 , 0)$.

  #ps[
    多元函数，注意变量与位置的对应。
  ]
]

#qst("9")[
  $r(bold(J)) = n - r(bold(A)) + 1$
]

#req("21")[
  中值定理放了。
]

== vol 3

#qst("7")[
  设曲线 $L : y = tan x^2 , x in [0 , sqrt(pi / 4)]$ (单位: 米) 绕 $y$
  轴一周所形成的曲面为 $S$, 用 $S$ 作为容器盛满水, 则将 $S$ 中的水全部抽出所做的功为.

  + $frac(pi rho g, 2) [1 - ln 2]$

  + $frac(pi rho g, 2)$

  + $frac(pi rho g, 2) [1 + ln 2]$

  + $pi rho g ln 2$
]<cy-25-v3-7>

#qst("9")[
  设 3 阶实对称矩阵
  $bold(A) = (bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3)$, 且
  $bold(alpha)_1 + bold(alpha)_2 + bold(alpha)_3 = (1 , 1 , 1)^(upright("T"))$,
  又存在 $a in bb(R)$ 使得
  $bold(A)^3 + (a^5 - 1) bold(A)^2 + 2 a^3 bold(A) + a bold(E) = bold(O) , upright("tr") (bold(A)) = 1$.
  则下列结论中:

  + $r (bold(A)) = 1$;

  + $bold(A)$ 的特征值为 $0 , 0 , 1$;

  + $bold(A)$ 与矩阵 $mat(delim: "(", 1, 0, 0; 0, 2, 0; 0, 0, 0)$ 合同;

  + $vec(1, 1, - 2)$ 为 $bold(A) bold(x) = bold(0)$ 的解

  正确的个数是多少。
  #ps[
    其实是没看懂题，题目中说存在 $a$ 满足方程，意义是存在一个 $a$，当带入 $bold(A)$ 的特征值时，不论 $lambda$ 是多少，都要满足方程。也就是找到满足所有可能的方程的 $a$ 的取值的交集。
    所以对这道题，代入一种情况，求出 $a$ 发现是唯一的，表明，对于其他的情况，当 $a = 0$ 时也应该成立。
  ]
]
#qst("10")[
  当要讨论矩阵的某些在 #hl[方阵] 下才满足的条件时，例如可逆，要注意题目中给的矩阵是否是方阵。
]

#req("21")[
  先放了
]

#qst("22 iii")[
  设 $bold(A)$ 为 2 阶实矩阵, 且
  $bold(A)^2 + bold(E) = bold(O)$. 证明:

  + $bold(A)^(upright("T")) eq.not bold(A)$;

  + 令 $bold(P) = (bold(alpha) , bold(A) bold(alpha))$, $bold(alpha)$
    为任意 2 维非零列向量, 证明 $bold(P)$ 可逆;

  + $bold(A)$ 与矩阵 $bold(B) = mat(delim: "(", 0, - 1; 1, 0)$ 相似.

  #ps[
    要善于利用题目所给的条件和信息，另外在证明可逆的时候，从定义入手如 $bold(P^- A P) = bold(B)$，可以通过找 $bold(A P) = bold(P B)$ 来构造。
  ]
]

== vol 4 - vol 9 (Todo)

#pagebreak()
= 2024 合工大超越 5 + 5 套卷

== vol 1
`2, 5, 6, 9, 10, 12, 15, 17, 22`

#qst("2")[
  设有积分
  $I_1 = integral_0^1 frac(sin x, sqrt(1 - x^2)) dif x , I_2 = integral_0^1 frac(cos x, sqrt(1 - x^2)) dif x$,
  则下列说法正确的是 $(quad)$

  + $I_1$ 发散, $I_2$ 收敛且 $I_2 < 1$

  + $I_1$ 收敛, $I_2$ 发散且 $I_1 < 1$

  + $I_1 , I_2$ 均收敛且 $I_1 < 1 , I_2 < 1$

  + $I_1 , I_2$ 均收敛且 $I_1 < 1 , I_2 > 1$

  #ps[
    + 对于数字 $1$ 要有足够的数学直觉，例如 $integral_0^(pi \/ 2) {sin x, cos x} dif x = 1$。

    + 对于不等式 $x > sin x$ 也要善于嵌套使用：$cos(sin x) > cos(x)$.

    + 对于类似定积分比大小的问题，常规做法就是利用不等式化简定积分，或分部积分化简定积分至方便判断大小的形式。
  ]
]

#qst("6")[
  设 $ f (x , y) = cases(delim: "{", frac(x^2 y, x^2 + y^2) \, quad & x^2 + y^2 eq.not 0, 0\, & x^2 + y^2 = 0,) $ 求 $f''_(x y)(0, 0)$ 与 $f''_(y x)(0 , 0)$ 的存在性。

  #ps[当求解此类题目没有思路时，要尽量和一元函数微分的求解方法联系起来，特别是对于这种分段多元函数。]
]

#qst("9")[
  设 $bold(A) , bold(B)$ 为 $n$ 阶可逆的实对称矩阵, 以下说法正确的个数有几个

  + $bold(A) , bold(B)$ 的列向量组具有相同的线性相关性

  + $bold(A) , bold(B)$ 的行向量组具有相同的线性相关性

  + 存在可逆矩阵 $bold(P)$, 使
    $bold(P)^(upright("T")) bold(A)^2 bold(P) = bold(B)^2$

  + 存在可逆矩阵 $bold(P)$, 使
    $bold(P)^(- 1) bold(A) bold(B) bold(P) = bold(B) bold(A)$
  #ps[
    #set enum(numbering: "1)", start: 3)
    + 矩阵合同的概念不够清楚，需要掌握矩阵合同的概念以及其与实对称矩阵特征值的联系。

    + 矩阵相似的一个常见推论，更一般的，不必要求两个矩阵都相似，照样可以推出 $bold(A B) ~ bold(B A)$.
  ]
]

#qst("10")[
  设二次型
  $f (x_1 , x_2 , dots.h , x_n) = sum_(i = 1)^m (a_(i 1) x_1 + a_(i 2) x_2 + dots.h.c + a_(i n) x_n)^2$ 的矩阵为 $bold(B)$,
  记 $bold(A) = (a_(i j))_(m times n)$, 则当 $(quad)$ 时, 二次型 $f = bold(x)^(upright("T")) bold(B) bold(x)$ 为正定二次型

  + $r (f) = m$

  + $r (f) = n$

  + $r (f) = r (bold(A))$

  + $m = n$

  #ps[
    正定矩阵好题。
    #figure(
      image("../resources/cy-24-1-10.png"),
    )
  ]
]

#qst("12")[
  设 $𝑥 𝑦 = C_1 𝑒^𝑥+ C_2 e^(2x)$ 是某二阶齐次线性微分方程的通解, 则该方程为.
]

#qst("17")[
  设连续函数 $f (x)$ 满足方程
  $f (x) = f (x / 2) + ln (cos x / 2) , - pi < x < pi$, 且 $f (0) = 0$.

  + 求 $f (x)$ 的表达式

  + 讨论 $f prime (x)$ 在 $(- pi , pi)$ 内的连续性
  #ps[
    这是一类题，即 $f(x) = z(f(k x), x)$

    套卷中也有类似的如: #link(<fxeqz-x-fgx>)[欧几里得 Sep Q15].
  ]
]<fxeqz-x-fgx-2>


#qst("22")[
  设 $bold(A)$ 为 3 阶矩阵,
  $bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3$ 为 3 维列向量. 已知
  $bold(A) bold(alpha)_1 = bold(alpha)_2 , bold(A)^2 bold(alpha)_1 = bold(alpha)_3 , bold(A)^3 bold(alpha)_1 = bold(0) , bold(alpha)_3 eq.not bold(0)$.

  + 证明: 对任意常数 $k$, 向量组
    $k bold(alpha)_1 + bold(alpha)_2 , - bold(alpha)_2 + bold(alpha)_3 , bold(alpha)_1 - k bold(alpha)_3$
    线性无关

  + 求 $bold(A)$ 所有特征值与特征向量, 问 $bold(A)$
    能否相似于一个对角阵? 说明理由

  + 求线性方程组
    $bold(A)^(upright("T")) bold(A) bold(x) = bold(A)^(upright("T")) bold(alpha)_3$
    的通解

    #ps[
      #set enum(numbering: "i", start: 2)
      + 在求一个抽象矩阵的特征向量是，如果可将抽象矩阵的一些代数关系写成矩阵乘法，然后构造出矩阵相似，即可方便的求出特征值。
    ]
]

== vol 2
`2, 4, 5, 8, 9, 14, 16, 22`

#qst("2")[
  设 $F (x) = integral_(- 1)^1 lr(|x - t|) e^(- t^2) upright(d) t - 1$, 则函数 $F (x)$ 在定义域内的零点个数有几个
  #ps[
    注意分类讨论时 $x in RR$ 而不应局限于积分上下限。遇到此类题要慢慢来做，不能觉得基础做法复杂就被卡着。
  ]
]

#qst("4")[
  已知 $f (x)$ 为可导函数, $g (x)$ 为连续函数, 且
  $f prime (x) = e^(x^2) - 1 + integral_0^x g (x - t) upright(d) t$,
  $lim_(x arrow.r 0) frac(g (x), x) = - 3$, 则 $(quad)$

  + $x = 0$ 为 $f (x)$ 的极大值点

  + $x = 0$ 为 $f (x)$ 的极小值点

  + $(0 , f (0))$ 为曲线 $y = f (x)$ 的拐点

  + $x = 0$ 不是 $f (x)$ 的极值点, $(0 , f (0))$ 也不是曲线 $y = f (x)$
    的拐点

  #ps[
    其实 $g'(0)$ 是存在的，不能因为题目没有给可导的条件就不朝导数或导数定义的方向去想，况且题目所给的条件完全可以构造出 $g'(0)$。
  ]
]

#qst("5")[
  设 $y = x e^x + x$ 是方程
  $y prime.double + p y prime + q y = a e^x + b$ 的一个特解,
  则下列函数中也是该方程的特解的是 $(quad)$

  + $y = e^(2 x) + x e^x + x$

  + $y = (x + 1) e^x + x$

  + $y = x e^x + 2 x$

  + $y = 2 x e^x + x$

  #ps[
    首先要会彻底 #hl[背诵默写高阶线性微分方程解的结构] 。再说会不会做这道题。

    因为非齐特解也可以由若干项齐次解加一个非齐特解组成，首先先要排除题目所给特解是不是包含某些齐解。根据齐解的结构以及齐解的结构带来的特征方程的根所影响的非齐解的结构，得到所给的特解不包含某些齐解，然后由于非齐特解中的 $e^x$ 项的系数为 $x$，根据解的结构知道特征根必然有一个等于 $1$ 的。
  ]
]

#qst("8")[
  + $3$ 阶非零反对称矩阵的秩为 $2$，此题考查线性方程组解的判断条件。应从矩阵的秩入手，考场上除了想结论，也要会主动构造证明，或举特例来判断这种加了特殊条件的（如三阶非零。。。）矩阵的秩。

  + 矩阵相乘的秩的判断要熟练运用 $r(bold(A B)) >= r(bold(A)) + r(bold(B)) - n$.
]

#qst("9")[
  三元二次型 $f (x_1 , x_2 , x_3) = (x_1 + x_2 + 2 x_3) (x_2 + a x_3)$,
  则二次型的秩 $r (f) = (quad)$

  #set enum(numbering: "A.")
  + 1

  + 2

  + 3

  + 依赖于 $a$ 的取值

  #ref[ https://www.bilibili.com/video/BV1oa4y1m76p?p=31 ]
]

#qst("14")[
  设 $f (x , y)$ 在区域 $D : 0 lt.eq x lt.eq 1 , 0 lt.eq y lt.eq 1$
  上可微, 且

  $f (0 , 0) = 0 , f prime_x (0 , 0) = 1 , f prime_y (0 , 0) = 2$, 则
  $
    lim_(x arrow.r 0^(+)) frac(integral_0^(x^2) upright(d) t integral_(sqrt(t))^x f (t , u) upright(d) u, x^4) = underline(#hide[0 0 0 0]) .
  $

  #ps[
    可微的形式要记得。

    + $ Delta z = f (x_0 + Delta x , y_0 + Delta y) - f (x_0 , y_0) = A Delta x + B Delta y + o (rho) $

    + $
        lim_(Delta x arrow.r 0 , Delta y arrow.r 0) frac(f (x_0 + Delta x , y_0 + Delta y) - f (x_0 , y_0) - (A Delta x + B Delta y), sqrt((Delta x)^2 + (Delta y)^2)) = 0
      $

    + $ Delta z = f (x , y) - f (x_0 , y_0) = A (x - x_0) + B (y - y_0) + o (rho) $

    + $
        lim_(x arrow.r x_0 , y arrow.r y_0) frac(f (x , y) - f (x_0 , y_0) - [A (x - x_0) + B (y - y_0)], sqrt((x - x_0)^2 + (y - y_0)^2)) = 0
      $

      也要看看皮亚诺余项的四则运算。
  ]
]

#qst("16")[
  这道题考试时误用了结论：$|bold(A)| = 0$ 并不代表 $r(bold(A)) = 0$，而是 $r(bold(A)) < n$。另外，特征值特征向量章节要和线性方程组章节联系起来 $(bold(A) - lambda bold(E)) bold(x = 0)$ 矩阵对于特征值 $lambda$ 有几个无关特征向量就代表这个线性方程组有基础解系的向量个数。
]
#pagebreak()
== vol 3
`1, 3, 5, 10, 12, 18, 22`

#qst("1")[
  曲线 $f (x) = x dot.op [2 / x]$ \($[dot.op]$ 表示取整函数) 的渐近线有几条。
  #ps[
    以后遇到取整函数，就默认是下取整 $op("floor") floor(x)$ 吧。
  ]
]
#qst("3")[
  设 $f (x)$ 是在 $(- oo , + oo)$ 内以 $T$ 为周期的连续函数,
  以下命题中正确的个数为 $(quad)$ 个

  + 若 $integral_0^T f (x) upright(d) x = 0$, 则
    $integral_0^x f (t) upright(d) t$ 是以 $T$ 为周期的函数

  + 若 $f (x)$ 是奇函数, 则 $integral_0^x f (t) upright(d) t$ 是以 $T$
    为周期的函数

  + 若 $integral_0^(+ oo) f (x) upright(d) x$ 收敛, 则
    $integral_0^x f (t) upright(d) t$ 是以 $T$ 为周期的函数

  + 函数 $F (x) = integral_0^x [f (t) - f (- t)] upright(d) t$ 是以 $T$
    为周期的函数

  #ps[
    #set enum(numbering: "i")
    要熟悉函数的几个基本性质，特别是对于周期性，要记得那几个周期性的变上限积分变换形式。

    3. 对于上限无穷 $oo$，可以转化为 $lim_(n -> oo) n T = oo$ 从而构造出判断变上限积分周期性的 $integral_0^upright(T) f(x) dif x$。
  ]
]
#req("5")[
  设函数 $y = y (x)$ 由参数方程
  $ cases(
    x = lim_(n arrow.r oo) root(n, t^n + t^(2 n)) + e^(t - 1), ,
    y = ln (1 + t^2)
  ) quad (t > 0) $ 所确定, 则函数 $y = y (x)$ 在点 $x = 2$ 处 $(quad)$

  + 左导数不存在

  + 右导数不存在

  + 左导数和右导数均存在但不相等

  + 可导

  #ps[
    参数方程加分段函数的求导问题，但是这道题第一部上来就没看出来，一般在函数中出现极限的情况，都要分类讨论将 $n$ 去掉，化成纯函数形式。
  ]
]

#qst("10")[
  设 $bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3$ 是齐次方程组
  $bold(A)_(n times n) bold(x) = bold(0)$ 的基础解系, $bold(beta)_i$
  是非齐次方程组 $bold(A) bold(x) = bold(alpha)_i$ 的特解,
  $i = 1 , 2 , 3$, 则 $(quad)$

  + $bold(beta)_1 , bold(beta)_2 , bold(beta)_3$ 线性相关

  + $bold(beta)_1 , bold(beta)_2 , bold(beta)_3$ 线性无关

  + $bold(beta)_1 , bold(beta)_2 , bold(beta)_3$ 可由
    $bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3$ 线性表示

  + $bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3$ 可由
    $bold(beta)_1 , bold(beta)_2 , bold(beta)_3$ 线性表示

  #ps[应熟悉 #hl[线性表示与矩阵乘法的关系]，以及在判断线性相关或无关，以及线性表示相关问题时，应该考虑定义法，假设存在满足定义的一组不全为零的 $k$，然后去反证。
  ]
]

#qst("12")[
  在处理积分时，若出现反函数，不应往求导上想，可以将反函数 $f^(-1)(x) dif x$  视为 $x(y) dif y$，积分改变积分符号不影响积分值。

  但应该想想为什么可以这样做，尤其是在应对这类初等函数的性质的时候尤容易出错。
]

#req("18")[
  设函数 $f (x)$ 在 $[a , b]$ 上连续, 且
  $integral_a^b f (x) upright(d) x = 0 , integral_a^b x f (x) upright(d) x = m > 0$,
  证明存在 $xi in (a , b)$, 使得
  $ lr(|f (xi)|) gt.eq frac(2 m, (b - a)^2) . $


  #ref[`R 2 00 p143 e11`]
]

== vol 4
`1, 5, 9, 14, 15, 16, 17, 20, 21, 22`

#qst("1")[
  设函数 $y = y (x)$ 在点 $x = 0$ 附近由方程
  $2 x - integral_0^y e^(- t^2) upright(d) t = x y$ 所确定, 且
  $y (x) = lambda_1 x + lambda_2 x^2 + o (x^2) (x arrow.r 0)$, 则
  $(lambda_1 , lambda_2) = (quad)$

  + $(2 , 2)$

  + $(2 , - 2)$

  + $(2 , 4)$

  + $(2 , - 4)$

  #ps[
    要记得泰勒展开的通项公式为 $ f(x) = sum_(i = 0)^n (f^((n))(c))/(n!) (x - c)^n + R_n (x) $

    一定不要忘记了 $n!$。
  ]
]

#req("5")[
  设 $f (x) (0 lt.eq x lt.eq a)$ 为正值可积函数且满足
  $f (x) f (a - x) = a^2$, 则 $integral_0^a f (x) d x$ 的取值范围为 \( )

  + $[0 , a]$

  + $\( 0 , a^2 \]$

  + $\[ a , + oo \)$

  + $\[ a^2 , + oo \)$

  #ps[默写基本不等式组与柯西积分不等式。]
]

#qst("8")[
  设 $bold(A)$ 是 $4 times 3$ 的矩阵,
  $bold(B) = mat(delim: "(", t, 0, 2; 0, 2, 0; 1, 0, 3)$ 且
  $r (bold(A)) = 2 , r (bold(A) bold(B) - bold(A)) = 1$, 则必有 $(quad)$

  + $bold(B)$ 可逆, $bold(B) - bold(E)$ 可逆

  + $bold(B)$ 可逆, $bold(B) - bold(E)$ 不可逆

  + $bold(B)$ 不可逆, $bold(B) - bold(E)$ 可逆

  + $bold(B)$ 不可逆, $bold(B) - bold(E)$ 不可逆

  #ps[
    证明 $r(bold(A B)) >= r(bold(A)) + r(bold(B)) - n$，以及其使用条件（若不是方阵，$n$ 应该是多少）
  ]
]

#qst("9")[
  设 $bold(A)$ 为 4 阶矩阵, $lr(|bold(A)|) = 0$, $bold(B)$ 为
  $4 times 3$ 的列满秩矩阵, $2 bold(A) bold(B) + bold(B) = bold(O)$, 则
  $lr(|bold(4) bold(A) + bold(E)|) = (quad)$

  + $- 1$

  + $0$

  + $1$

  + $2$

  #ps[
    对于 $bold(A B) = bold(B)$ 要有基本的直觉去联想到特征值与特征向量。
  ]
]


#qst("17")[
  已知函数 $f (x)$ 在点 $x = 0$ 处二阶可导, 且
  $lim_(x arrow.r 0) frac(f (x) - 1 - 2 x^2, x^2) = 0$, 求
  $lim_(x arrow.r 0) frac(f (x) - f (sin x), x^4)$.

  #ps[这道题提醒了求极限的另一种方式，即拉格朗日中值定理，当极限中出现 $f(a) - f(b)$ 时，且常规的方法无法求解，要记得拉格朗日中值定理。
  ]
]

#req("22")[
  设 $bold(A) , bold(B)$ 均为 3 阶方阵, 其中 $bold(A)$
  为实对称矩阵, $bold(A) = (a_(i j))_(3 times 3) , a_11 = 2$,
  $ bold(B) = mat(delim: "(", 1, 0, - 1; - 1, 0, 1; 0, 2, 0) , $ 且满足
  $(bold(A) - bold(E)) bold(B) = bold(O)$.

  + 求矩阵 $bold(A)$

  + 求可逆矩阵 $bold(P)$, 使 $bold(P)^(- 1) bold(A) bold(P) = bold(Lambda)$

  #ps[
    好题。

    + 这道题有点像解方程，知道了 $bold(A B) = bold(C)$ 的时候，实际上可以将 $bold(A) = a_(i j)$ 设出来，然后代入到矩阵乘法中，求解未知量。在设未知数时，要利用题目所给条件，如题目给了 $bold(A)$ 是对角矩阵，所以应保证矩阵元素关于对角线对称。题目又给了 $r(bold(A -E)) = 1$，所以应保证各行各列成比例。

    + 零矩阵的每个元素都为零。

    + 判断矩阵特征值的方法：若有一个特征值不确定，可以假设为一个数，然后根据相似对角化的定义，将可逆矩阵乘到右边的对角阵上，然后分析和比较矩阵与原矩阵，以此来判断和排除。
  ]
]

#pagebreak()

== vol 5

`5, 8, 10, 13, 15, 18, 19, 20`

#qst("5")[
  积分 $integral_a^(a + 2 pi) frac(e^(sin x), 2 + sin x) sin x dif x$ 的值
  \( )

  + 与 $a$ 无关且恒为正

  + 与 $a$ 无关且恒为负

  + 恒为零

  + 与 $a$ 有关

  #ps[
    + 因为 $sin x$ 是奇函数，故可以将 $g = (e^(sin x)) / (2 + sin x)$ 单独拿出来作为 $sin x$ 的比例因子，去分析 $g$ 在正定义域和负定义域上的函数图像，若正定义域上的函数图像明显大于负定义域上的函数图像，可以认为在正定义域上比例因子大，函数乘积也就是原函数大，故为正。

    + 将积分区域分为恒为正和恒为负的两部分，尝试对两部分进行相同方向上的缩放。

    + 将积分区域分为恒为正和恒为负的两部分，若形式类似，则可以转化为 $a>b, f(a), f(b)$ 的比较关系。

  ]
]

#qst("8")[
  矩阵秩的关系汇总和默写。
]

#req("10")[
  设 $bold(A)$ 为 3 阶矩阵, 满足
  $lr(|bold(A) - bold(E)|) = lr(|bold(A) + bold(E)|) = lr(|bold(A) - 2 bold(E)|) = 0$,
  设 $f (x) = lr(|bold(A)^(- 1) - x bold(E)|) - lr(|bold(A)^(\*)|)$,
  则必存在一点 $x_0 in (0 , 1)$, 使得 $y = f (x)$ 在 $(x_0 , f (x_0))$
  处的切线 \( )

  + 垂直于直线 $y = - 1 / 2 x$

  + 垂直于直线 $y = 1 / 2$

  + 平行于直线 $y = 1 / 2 x$

  + 平行于直线 $y = 3 x + 1 / 2$

  #ps[
    想复杂了，这道题可以转化为中值定理题。

    要注意该题的问法：#highlight[必然存在在 $(a, b)$ 上的一点 $x_0$，使得 $f'(x_0)$ 怎么怎么样，这种题除了可以将导数求出来判断导数的值域之外。也可以用尝试拉格朗日中值定理，即必然存在一点 $f'(x_0) = (f(b) - f(a))/(b - a)$].
  ]
]

#req("13")[
  实际是一个多元函数哦求极值的问题。

]

#req("15")[
  #hl[此类题中一定要谨慎考虑使用换元]，例如，此题
  $ 2/n sum_(i = 1)^n 1/(4 + ((2 i - 1)/n)^2) $
  若做 $j = 2 i - 1$，得到
  $ 2/n sum_(j = 1)^(2 n - 1) 1/(4 + ((j)/n)^2) != 2/n sum_(i = 1)^n 1/(4 + ((2 i - 1)/n)^2) $
  因为当 $(k/n), k = 2i -1$ 时，$k in {1, 3, ..., 2n - 1}$，换元后看似等价，但是因为求和符号上下限是连续的，或稠密的，$(k/n), k = j in {1, 2, 3, ..., 2n-1}$ 导致比远极限多了 $n - 1$ 个偶数项。
]<cy-24-v5-15>

#req("18")[
  高阶线性微分方程解的形式，例如 $y'' + 2y' + 2 = 0$ 时，#highlight[一定要记得不要将常数也算在特征方程中] 即该方程的特征方程是 $r^2 + 2r = 0$ 而不是 $r^2 + 2r + 2 = 0$，常数项是作为非齐次项中的 $f(x)$ 存在的。
]

#req("19")[
  多元函数求极值时，不管多复杂，都要最起码把方程列出来，偏导数求出来！
]

#req("20")[
  数列极限。
]

