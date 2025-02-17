#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Basic Knoweledge",
  language: "ch",
)

= 基础知识

== 函数变换

#knowledge("因式分解")[
  + $a^3 plus.minus b^3 = (a plus.minus b)(a^2 minus.plus a b plus b^2)$.
  + $ln(a b c) = ln(a) + ln(b) + ln(c)$ （将乘法变为加法，便于求导）。
]

#knowledge("凑出奇函数")[
  + $ a > 1时，1 / (a^x + 1)-1 / 2 , (a^x - 1) / (a^x + 1) "均为奇函数。 " $
  + 含有指数函数的分式，考虑凑出奇函数。$f(x) = g(x) + k $ ，如果能凑出奇函数$g(x)$
    , 则$f(x) + f(-x) = 2k  $。
]

== 不等式
#knowledge("基本不等式组")[
  $ 2 / (1 / a + 1 / b) <= sqrt(a b) <= (a + b) / 2 <= sqrt((a^2 + b^2) / 2), space (a, b > 0) $
]

#knowledge("绝对值不等式组")[
  + $abs(size: #120%, |a| - |b|) <= |a - b|$
  + $abs(a plus.minus b) <= |a| + |b|$
]

=== 不等式放缩

#knowledge("常见放缩或夹逼准则不等式")[
  + $ lim_(n->oo)(a^n + b^n + ……)^(1 / n) = max{a, b, ...} $

  + 若 $0 < a < x < b, 0 < c < y < d, $ 则有 $c/b < y/x < d/a$
  + 当 $0 < x < pi/4 "时",  x < tan x < 4/pi x$
  + 当 $0 < x < pi/2 "时",  sin x > 2/π x$
  + 当 $0 <= x <= 1 "时", arctan x <= x <= arcsin x$
  + 当 $0 < x "时", 1/(1 + x) < ln(1 + 1/x) < 1/x "或" x/(1 + x) < ln(1 + x) < x $
  + $e^x >= x + 1$
]

// TODO
// == 反三角函数
// TODO

== 杂项
#formula("求根公式")[
  若方程 $a x^2 + b x + c = 0, a != 0$, 则有
  $ x = (-b plus.minus sqrt(b^2 - 4 a c)) / (2 a) $
]

#knowledge[
  $sqrt(x^2) = |x|$
]

#annotation[
  $binom(n, k) = n! / (k! (n - k)!)$
]

#theorem("二项式定理")[
  $ (a + b)^n = sum_(k = 0)^n binom(n, k) thin a^k thin b^(n-k) $
]

// #box(height: 180pt)
#formula("二项式定理的近似计算和放缩")[
  $ (1+x)^n ≈ 1 + n x + n(n+1) / 2 x^2 + ... $
  $|x| << 1$ 或n较大时可以只取得前几项。当x较小时,也可以使用泰勒展开得出
]

#formula("极限相关二级结论")[
  + $lim_(x->infinity)(1+a / x)^(b x + d) = e^(a b)$
]

#formula("常用的麦克劳林展开式")[
  + $e^x = 1 + x + 1 / (2!) x^2 + …… + 1 / (n!) x^n + o(x^n)$ \

  + $sin x = x - (x^3) / (3!) + …… + (-1)^n space (x^(2n + 1)) / (2n + 1)! + o(x^(2n + 1))$\
  + $cos x = 1 - (x^2) / (2!) + (x^4) / (4!) -…… + (-1)^n (x^(2n)) / ((2n)!) + o(x^(2n))$\
  + $1 / (1 - x) = 1 + x + x^2 + …… + x^n + o(x^n)$\
  + $1 / (1 + x) = 1 - x + x^2 - …… + (-1)^n x^n + o(x^n)$\
  + $ln(1 + x) = x - (x^2) / 2 + (x^3) / 3 + (-1)^(n-1) (x^n) / (n) + o(x^n)$
  + $(1 + x)^a = 1 + a x + a(a - 1) / (2!) x^2 + …… + (a(a - 1)……(a - n + 1)) / n! x^n + o(x^n)$
] <fm1-maclaurin-expansion>

