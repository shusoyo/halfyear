#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Basic Knoweledge",
  language: "ch",
)

= 函数的极限与连续

#definition("等价无穷小")[
  有 $a in RR union {infinity, -infinity}. "有函数" f, g, h$ 在 $x = a$ 附近（临域内）有定义，且
  $ lim_(x -> a) f(x) / h(x) = 1 $
  则有
  $
    lim_(x->a) f(x) / g(x) = lim_(x ->a) h(x) / g(x) \
    lim_(x->a) g(x) / f(x) = lim_(x ->a) g(x) / h(x) \
  $
  即 $f$ 与 $h$ 为等价无穷小，记作 $f ~ h, (x -> a)$。
]

#knowledge("常见的等价无穷小")[
  + $x ~ sin x ~ tan x ~ arcsin x ~ arctan x ~ ln(1 + x) ~ e^x - 1 ~ ln(x + sqrt(x^2 + 1))$
  + $a^x -1 ~ x ln a$
  + $1 - cos x ~ 1 / 2 x^2$
  + $(1 + x)^a - 1 ~ a x$

  #remark[
    + @Equivalent-Infintesimal 中的常用的等价无穷小，使用时需要注意应满足前提条件 $x -> 0$。
    + 在进行等价无穷小代换时，只能在分子分母形式时替换（可以通过极限运算法则化简为单项式）。
  ]
] <Equivalent-Infintesimal>


#definition("7 种未定式")[
  $ 0 / 0, infinity / infinity , 0 dot infinity, infinity - infinity, infinity^0, 0^0, 1^infinity $
]

#remark[
  无界不一定要有无穷大的量，如 $f(x) = x sin x$.
]

#theorem[
  $lim f(x) / g(x) = A, "如果" f(x) "与" g(x) "其中之一等于" 0, "则另一个也为" 0.$
]

#proof[
  $f(x) = f(x) / g(x) g(x), lim f(x) = lim f(x) / g(x) lim g(x) = A times lim g(x) = A times 0 = 0.$
]

#theorem[
  + 当 $lim f(x)$ 存在，而 $lim g(x)$ 不存在时，有 $u(x) = f(x) + g(x), lim u(x)$ 必定不存在。
  + 当 $f(x), g(x)$ 都不存在时，$u(x)$ 不一定存在。
]
