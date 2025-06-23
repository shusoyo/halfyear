#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Basic Knoweledge",
  language: "ch",
)


#let lim = $limits(lim)$



= 数列极限

#definition([数列极限 $epsilon - N$ 语言描述])[
  $
    lim_(x -> x_0) x_n = a <=> forall epsilon > 0, exists N in NN^+, 当 n > N 时，有 |x_n - a| < epsilon.
  $
]

#properties("有界性")[
  若数列极限 ${x_n}$ 存在，则数列 ${x_n}$ 有界。
]
#properties("保号性")[
  有数列 $lim_(n -> oo) {x_n} = a >_((<)) b in RR$，则 $exists N in NN^+, "当" n > N, "有" x_n >_((<)) b$. 反之，若有 $x_n >=_((<=)) b$，则 $lim_(n -> oo) = a >=_((<=)) b$.
]

// #theorem("归结原则")[
//   $exists x in accent(U, circle) (x_0), lim_(x -> x_0) f(x) = A, forall lim_(n -> oo)x_n = x_0$, 有$lim_(n -> oo) f(x_n) = A.$
// ]

// #annotation[
//   + 当 $x -> 0$ 时，$x_n = 1 / n, lim_(n -> oo)x_n = 0$.
//   + 当 $x -> +oo$ 时，$x_n = n, lim_(n -> oo)x_n = +oo$.
//   + 相反的，当 $lim_(n -> oo) x_n -> a, and x_n != a, lim_(x -> a)f(x) = lim_(n -> oo)f(x_n) = A$.
// ]

== 无穷小和无穷大

#proposition("数列极限中常用的无穷大的比较")[
  当 $n arrow.r oo$
  时：
  $ ln^a n lt.double n^beta lt.double a^n lt.double n ! lt.double n^n, (a > 0 , beta > 0 , a > 1). $
]
== 极限存在准则


== 扩充知识
#theorem([#emph[Stolz] 定理用于判定 $oo / oo$])[
  若
  $lim_(n arrow.r oo) y_n = + oo$，且至少从某一项开始在 $n$ 增大时 $y_n$
  亦增大，即 $y_(n + 1) > y_n$，则
  $ lim_(n arrow.r oo) x_n / y_n = lim_(n arrow.r oo) frac(x_n - x_(n - 1), y_n - y_(n - 1)) . $
  等式右边极限（有限或者无穷）存在推出左边有相同的极限。我们可以先应用这个定理把极限确定下，在尝试转换思路求
  $lim_(n arrow.r oo) (x_n / y_n - A) = 0$，也许会有奇效。
]
