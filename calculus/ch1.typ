#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Basic Knoweledge",
  language: "ch",
)


= 数列极限

== 概念与性质
#definition([数列极限 $epsilon - N$ 语言描述])[
  $
    lim_(x -> x_0) x_n = a <=> forall epsilon > 0, exists N in NN^+, 当 n > N 时，有 |x_n - a| < epsilon.
  $
]

#proposition("有界性")[
  若数列极限 ${x_n}$ 存在，则数列 ${x_n}$ 有界。
]

#proposition("保号性")[
  有数列 $lim_(n -> oo) {x_n} = a >_((<)) b in RR$，则 $exists N in NN^+,$ 当 $n > N,$ 有 $x_n >_((<)) b$. 反之，若有 $x_n >=_((<=)) b$，则 $lim_(n -> oo) = a >=_((<=)) b$.
  #ps[极限推数列是严格有序，数列推极限是非严格有序。]
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
#proposition("夹逼准则")[
  若存在 $N$，当 $n > N$ 时，$x_n lt.eq y_n lt.eq z_n$，且
  $lim_(n arrow.r oo) x_n = lim_(n arrow.r oo) z_n = a$，则
  $lim_(n arrow.r oo) y_n = a$。
]

#proposition("单调有界准则")[
  单调有界数列必有极限。即单调增加、有上界的数列必有极限，单调减少、有下界的数列必有极限。
]

#annotation()[
  函数极限有对应的以上两条准则。
]


== 扩充知识
#theorem([#emph[Stolz] 定理用于判定 $oo / oo$])[
  已知 ${ b_n }$
  严格单调递增趋于正无穷，且
  $ lim_(n arrow.r oo) frac(a_(n + 1) - a_n, b_(n + 1) - b_n) = A, $ 其中
  $A$ 是有限数或 $+ oo$ 或 $- oo$，则
  $ lim_(n arrow.r oo) a_n / b_n = A . $
]
