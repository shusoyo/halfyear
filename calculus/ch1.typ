#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Basic Knoweledge",
  authors: (
    "suspen",
  ),
  language: "ch",
)

= 函数的极限与连续
#knowledge("常见的等价无穷小")[
  + $x ~ sin x ~ tan x ~ arcsin x ~ arctan x ~ ln(1 + x) ~ e^x - 1 ~ ln(x + sqrt(x^2 + 1))$
  + $a^x -1 ~ x ln a$
  + $1 - cos x ~ 1/2 x^2$
  + $(1 + x)^a - 1 ~ a x$
] <Equivalent-Infintesimal>

#remark[
  无界不一定要有无穷大的量，如 $f(x) = x sin x$.
]

#theorem[
  $lim f(x)/g(x) = A, "if one of" f(x) "and" g(x) "equal to" 0, "the another is" 0.$
]

#proof[
   $f(x) = f(x) / g(x) g(x), lim f(x) = lim f(x) / g(x) lim g(x) = A times lim g(x) = A times 0 = 0. $
]

#theorem[
  + 当 $lim f(x)$ 存在，而 $lim g(x)$ 不存在时，有 $u(x) = f(x) + g(x), lim u(x)$ 必定不存在。
  + 当 $f(x), g(x)$ 都不存在时，$u(x)$ 不一定存在。
]

#remark[
  + @Equivalent-Infintesimal 中的常用的等价无穷小，使用时需要注意应满足前提条件 $x -> 0$。
  + 求极限时，只能在分子分母形式时替换。
]
