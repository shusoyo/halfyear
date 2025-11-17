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
  title: "linear algebra problems",
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

= 行列式
#req(`880 §7 Aa Q4`)[
  设 $3$ 阶矩阵 $bold(A) = (a_(i j))_(3 times 3)$ 满足
  $bold(A)^(upright(T)) = k bold(A)^(\*) thin (k > 0)$，\ 若
  $a_11 = a_12 = a_13 = c > 0$，求 $c$ .
]

== 典型的行列式计算方法
#req(`880 §7 Ab Q1`)[
  $ mat(delim: "|", k, 0, - 1, 1; 0, k, 1, - 1; - 1, 1, k, 0; 1, - 1, 0, k;) = thin underline(#hide[a b c]) $

  #ps[
    观察可知，每行之和或每列之和均为 $k$，对于此类行列式，可将除第一行（列）之外的行（列）加到第一行（列）上去，构造出一行（列）的 $k$，提出 $k$ 后，即为一行（列）的 $1$，此时可以很方便的消元并利用展开定理求行列式了。

    此类题型的推广为，除了#highlight[行（列）和相同，在部分行（列）和相同，或部分行（列）和部分相同且不相同的部分为 $0$ 时] 同样可以使用此方法来构造出上述可以提出 “公因式” 的形式，来方便后续消元。
  ]
]

#req(`880 §7 Ab Q5`)[
  $ mat(delim: "|", a, - 1, 0, 0; 0, a, - 1, 0; 0, 0, a, - 1; 4, 3, 2, a + 1) = underline(#hide[a b c]) . $

]
#req(`880 §7 Ac Q3`)[
  计算 $n$ 阶行列式
  $
    D_n = mat(delim: "|", 2, - 1, 0, dots.h.c, 0, 0; - 1, 2, - 1, dots.h.c, 0, 0; 0, - 1, 2, dots.h.c, 0, 0; dots.v, dots.v, dots.v, dots.down, dots.v, dots.v; 0, 0, 0, dots.h.c, 2, - 1; 0, 0, 0, dots.h.c, - 1, 2;)
  $

  #ps[
    对于  $ D_n = mat(delim: "|", a + b, c, 0, dots.h.c, 0, 0; d, a + b, c, dots.h.c, 0, 0; 0, d, a + b, dots.h.c, 0, 0; dots.v, dots.v, dots.v, dots.down, dots.v, dots.v; 0, 0, 0, dots.h.c, a + b, c; 0, 0, 0, dots.h.c, d, a + b;) $

    形的三对角矩阵，通过 $a b = c d$ 求出 $a, b$ 的值，代入公式
    $
      det(bold(D)_n) =
      cases(
        (n + 1) a^n\, quad & a = b,
        (a^(n + 1) - b^(n + 1))/(a - b) & a!=b
      )
    $

  ]
]

#req(`880 §7 Bb Q11`)[
  设 $bold(A) , bold(B)$ 均为 $n$
  阶方阵，$lr(|bold(A)|) = 6$，$lr(|bold(B)|) = 1$，$ bold(C) = mat(delim: "(", bold(A), 3 bold(A)^(\*); (bold(B) / 2)^(- 1), bold(O)) $则
  $lr(|bold(C)|) = underline(#hide[a b c])$.

  #ps[拉普拉斯行列式]
]


== 杂例
#req(`880 §7 Ab Q11`)[设 $3$ 阶方阵
  \ $bold(A) = (bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3)$，$bold(B) = (3 bold(alpha)_1 - bold(alpha)_2 , 3 bold(alpha)_2 - 2 bold(alpha)_1 , 2 bold(alpha)_3 - bold(alpha)_1 - 2 bold(alpha)_2)$，且
  $lr(|bold(B)|) = 14$，求 $lr(|bold(A)|)$.

  #ps[除了用单纯行列式章节的运算准则拆分，还可以将其写为分块矩阵乘法形式。]
]

#req(`880 §7 Ab Q12`)[
  设 $bold(A) = (a_(i j))_(n times n)$ 为 $n$
  阶方阵，$lr(|bold(A)|) = 1$，且 $bold(A)$ 的每列元素之和均为
  $k thin (k eq.not 0)$，则 $bold(A)$ 的代数余子式之和
  $A_11 + A_12 + dots.h.c + A_(1 n) = underline(#hide[a b c])$.

  // #ps[
  //   每行（列）的和相等，在求行列式时，可以用行列式变换将构造出行（列）和。
  // ]
]


#req(`880 §7 Ba Q1`)[
  设 $bold(A)$ 是 $3$ 阶可逆矩阵，$bold(A)^(- 1)$ 的特征值为
  $3 , 2 , 1$，求 $lr(|bold(A)|)$ 的代数余子式之和 $A_11 + A_22 + A_33$
  .

  #ps[
    $tr (bold(A))$ 与其特征值的关系。
  ]
]

#req(`880 §7 Bb Q4`)[
  设 $bold(A)$ 是 $3$ 阶方阵，且满足
  $lr(|bold(A) - bold(E)|) = lr(|bold(A) + 2 bold(E)|) = lr(|2 bold(A) + 3 bold(E)|) = 0$，则
  $lr(|2 bold(A)^(\*) - 3 bold(E)|) = underline(#hide[a b c])$.

  #ps[
    行列式与特征值的关系，$lambda$ 与 $f(lambda)$ 的关系。
  ]
]

#req(`880 §7 Bb Q6`)[
  设 $bold(alpha\, beta) , bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3$
  均为 $4$
  维列向量，$bold(A) = (bold(alpha) , bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3)$，$bold(B) = (bold(beta) , bold(alpha)_1 , bold(alpha)_2 , bold(alpha)_3)$，且
  $lr(|bold(A)|) = 2$，$lr(|bold(B)|) = 1$，则
  $lr(|bold(A)^(- 1) + bold(B)^(- 1)|) = underline(#hide[a b c])$.

]

#req(`880 §7 Bb Q7`)[
  设 $n$ 阶行列式
  $
    lr(|bold(A)|) = mat(delim: "|", 0, 1, 0, dots.h.c, 0; 0, 0, 2, dots.h.c, 0; dots.v, dots.v, dots.v, , dots.v; 0, 0, 0, dots.h.c, n - 1; n, 0, 0, dots.h.c, 0)
  $
  则 $lr(|bold(A)|)$ 的第 $k$ 行元素的代数余子式之和 $A_(k 1) + A_(k 2) + dots.h.c + A_(k n) = underline(#hide[a b c])$.
]

#req(`880 §7 Bc Q1`)[
  计算 $n$ 阶行列式
  $
    D_n = mat(delim: "|", b - a_1^2, - a_1 a_2, dots.h.c, - a_1 a_n; - a_2 a_1, b - a_2^2, dots.h.c, - a_2 a_n; dots.v, dots.v, , dots.v; - a_n a_1, - a_n a_2, dots.h.c, b - a_n^2)
  $

  #ps[
    按照 $r(bold(A)) = 1$ 来做。
  ]
]


#pagebreak()

= 矩阵

#req(`880 §8 Aa Q4`)[
  设矩阵
  $bold(A) = mat(delim: "(", 1, 1, 1; 0, 1, 0; 2, k, 3; k - 1, 5, 1)$ 与
  $bold(B) = mat(delim: "(", 1, 1, 1; 0, 1, - 1; 2, 3, k; 3, 5, 1)$
  等价，求 $k$ 的取值范围。

  #ps[
    同型矩阵的等价，要和向量组等价做区分。
  ]
]

#req(`880 §8 Aa Q4`)[
  设 $bold(A) = mat(delim: "(", 1, 0, - 1; 2, a, 1; 1, 2, 1)$, $bold(B)$
  是3阶矩阵，且
  $r (bold(B)) = 2 , r (bold(A B)) = 1$,
  $bold(A)^(\*)$ 与 $bold(B)^(\*)$

  分别是 $bold(A)$ 与 $bold(B)$
  的伴随矩阵，则正确的是（ ）。

  + $ r [mat(delim: "(", bold(A)^(\*), bold(O); bold(A), bold(B))] = 3 $

  + $ r [mat(delim: "(", bold(A), bold(O); bold(O), bold(B)^(\*))] = 3 $

  + $ r [mat(delim: "(", bold(A)^(\*), bold(B); bold(O), bold(A))] = 3 $

  + $ r [mat(delim: "(", bold(A), bold(B)^(\*); bold(O), bold(B))] = 3 $

  #ps[
    有关分块矩阵的秩的结论：

    + $r(bold(A) + bold(B)) lt.eq r (bold(A) , bold(B)) lt.eq r (bold(A)) + r (bold(B)) , r (bold(A) + bold(B)) lt.eq r [vec(bold(A), bold(B))] lt.eq r (bold(A)) + r (bold(B))$.

    + 设 $bold(A)$ 可逆, 则
      $r [mat(delim: "(", bold(A), bold(O); bold(C), bold(D))] = r (bold(A)) + r (bold(D)) , r [mat(delim: "(", bold(A), bold(B); bold(O), bold(D))] = r (bold(A)) + r (bold(D))$.

    + $r [mat(delim: "(", bold(A), bold(O); bold(O), bold(B))] = r (bold(A)) + r (bold(B)) , r [mat(delim: "(", bold(O), bold(A); bold(B), bold(O))] = r (bold(A)) + r (bold(B))$.

    + $r [mat(delim: "(", bold(A), bold(O); bold(C), bold(D))] gt.eq r (bold(A)) + r (bold(D)) , r [mat(delim: "(", bold(A), bold(B); bold(O), bold(D))] gt.eq r (bold(A)) + r (bold(D))$.

  ]
]

#req(`880 §8 Ab Q7`)[
  若 $bold(A)^n = bold(O)$，$n$ 为正整数，求
  $(bold(E) - bold(A))^(- 1)$

  #ps[
    长除法。
  ]
]
