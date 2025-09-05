#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: project.with(
  title: "math paper set",
  language: "ch",
  authors: "suspen",
  outl: [
    #outline(
      indent: auto,
      title: text(yellow.negate(space: rgb))[Contents],
      depth: 2,
    )
  ],
  title_page: true,
)

#show: thmrules.with(qed-symbol: $square$)

#let qst = qst.with(numbering: none)


= R 302 2012
``


= R 302 2013

`2, 7, 19, 20, 23`

#qst([1])[
  在严格证明 $alpha(x) -> 0$ 时，可以根据题目所给 $abs(alpha(x)) < pi/2$ 得，$sin(alpha(x))$ 是单调的，也即有 $sin(alpha(x))$ 存在反函数，故 $lim_(x -> 0) alpha(x) = lim_(x -> 0) arcsin(sin(alpha(x))) = 0$.
]

#qst("2")[
  对于导数定义的写法，一定要保证自变量形式完全相等，即 $ lim_(n -> oo)(f(2/n) - f(0))/(2/n) = f'(0) != lim_(n -> oo) (f(2/n) - f(0))/(1/n). $


  另有： $exists f,$ 使 $lim_(n -> oo) n[f(x + 1/n) - f(x)] = c$ 存在，但 $f$ 处处不可导。
  $ f = "狄利克雷函数" D = cases(1\, quad & x in QQ, , 0\, &x in RR without QQ) "（处处不连续，也处处不可导）" $

  #ref[`R1 2013, R3 2013`]
]

#qst("3")[
  P8 扩展：第二类间断点也可以有原函数。
]

#qst("7")[
  分块矩阵乘法凑出 #hl[向量组等价的定义]。
]

#qst("8")[
  $
    "实对称矩阵相似" <=> "具有相同的特征多项式" <=> "具有相同的特征值"
  $
  (why $<=>$ ?)
]

#qst("11")[
  熟悉图像
  $r = cos 3theta quad (- pi/6 <= theta <= pi/6)$

  #image("../resources/R-302-2013-11.png", width: 50%)
]

#qst("14")[
  当答案算出来有多个时，要尽可能多的利用题目所给条件，想办法排除。
]

#qst("15")[
  记忆 $cos x$ 的泰勒展开，考试实在想不起来巧法是就要试试能不能直接硬用泰勒算。
]

#qst("17")[
  可以用极坐标尝试一下。
]


#qst("19")[
  太难算了。。。
]

#qst("20")[
  不能只依靠观察法，对于不等式 $ln(x_n) + 1/(x_(n + 1)) < 1$ 要善于利用已知的不等关系 $x_n > 0, 1/(x_n) > 0$ 来推得 $ln(x_(n)) < 1 - 1/(x_(n + 1)) < 1$ 这样就可以求出上界。

  另外，根据 #hl[极限的保序性] 可以推得不等关系 $ln a + 1/a <= 1$ 注意保序性，由原函数推极限，会加上等号。
]

#qst("21")[
  型心和质心公式。
]

#qst("23")[
  + 第一问证明有点玄，不知道是否严格，应该再验证一次，并记忆官方解法。

  + 第二问再看看。
]
