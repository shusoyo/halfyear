#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Basic Knoweledge",
  language: "ch",
)

= 前置知识及部分知识点汇总速记

== 函数变换

#knowledge("因式分解")[
  + $a^3 plus.minus b^3 = (a plus.minus b)(a^2 minus.plus a b plus b^2)$.
  + $ln(a b c) = ln(a) + ln(b) + ln(c)$ （将乘法变为加法，便于求导）。
]

#knowledge("凑出奇函数")[
  + $ a > 1 时, 1 / (a^x + 1)-1 / 2 , (a^x - 1) / (a^x + 1) "均为奇函数。 " $
  + 含有指数函数的分式，考虑凑出奇函数。$f(x) = g(x) + k $ ，如果能凑出奇函数$g(x)$
    , 则$f(x) + f(-x) = 2k  $。
]

== 不等式
#knowledge("基本不等式组")[
  $ 2 / (1 / a + 1 / b) <= sqrt(a b) <= (a + b) / 2 <= sqrt((a^2 + b^2) / 2), space (a, b > 0) $
  可归纳出 $|a b| <= (a^2 + b^2) / 2$
]

#knowledge("绝对值不等式组")[
  + $abs(size: #120%, |a| - |b|) <= |a - b|$
  + $abs(a plus.minus b) <= |a| + |b|$
]

#knowledge("常见不等关系")[

  + 若 $0 < a < x < b, 0 < c < y < d, $ 则有 $c/b < y/x < d/a.$

  + 当 $0 < x < pi/4 $时，$ x < tan x < 4/pi x.$

  + 当 $0 < x < pi/2 $时，$ sin x > 2/π x, sin x < x < tan x.$

  + 当 $0 <= x <= 1  $时，$ arctan x <= x <= arcsin x.$

  + 当 $0 < x "时", 1/(1 + x) < ln(1 + 1/x) < 1/x "或" x/(1 + x) < ln(1 + x) < x.$

  + $e^x >= x + 1.$
]

== 三角函数

#annotation("常见结论")[
  + $sin x$ 在 $[0, pi]$ 上与 $x$ 轴围成区域的面积为 $2$, 将该区域的底边 $4$ 等分，所得的小区域的面积分别是 $1 - sqrt(2)/2, sqrt(2)/2, sqrt(2)/2, 1 - sqrt(2)/2$
]

#annotation("三角变换")[
  + $sin x + cos x = sqrt(2) (sqrt(2) / 2 sin x + sqrt(2) / 2 cos x) = sqrt(2) sin(x + pi /4)$ 辅助角公式.
  + $arctan x + arctan 1 / x = pi / 2 (x > 0)$
]

== 杂项
#formula("求根公式")[
  若方程 $a x^2 + b x + c = 0, a != 0$, 则有
  $x = (-b plus.minus sqrt(b^2 - 4 a c)) / (2 a)$.
]

#knowledge[
  $sqrt(x^2) = |x|$
]



#theorem("二项式定理")[
  $ (a + b)^n = sum_(k = 0)^n binom(n, k) thin a^k thin b^(n-k) $
  #annotation("组合数")[
    $binom(n, k) = n! / (k! (n - k)!)$
  ]

  #annotation("二项式定理的近似计算和放缩")[
    $ (1+x)^n ≈ 1 + n x + n(n+1) / 2 x^2 + ... $
    $|x| << 1$ 或 $n$ 较大时可以只取得前几项。当 $x$ 较小时,也可以使用泰勒展开得出
  ]
]

== 常用
#knowledge("求极限时常见的等价无穷小")[
  + $x ~ sin x ~ tan x ~ arcsin x ~ arctan x ~ ln(1 + x) ~ e^x - 1 ~ ln(x + sqrt(x^2 + 1))$

  + $a^x -1 ~ x ln a$
  + $1 - cos^alpha x ~ alpha / 2 x^2$
  + $(1 + x)^a - 1 ~ a x$
] <Equivalent-Infintesimal>

#formula("常用的麦克劳林展开式")[
  + $e^x = 1 + x + x^2 / 2 + x^3 / 6 + dots.h.c + frac(x^n, n !) + o (x^n)$

  + $arcsin x = x + x^3 / 6 + dots.h.c + frac((2 n - 1) ! !, (2 n) ! !) frac(x^(2 n + 1), 2 n + 1) + o (x^(2 n + 1))$

  + $arctan x = x - x^3 / 3 + dots.h.c + (- 1)^n frac(x^(2 n + 1), 2 n + 1) + o (x^(2 n + 1))$

  + $tan x = x + x^3 / 3  + dots.h.c + sum_(n = 1)^oo frac((- 1)^(n - 1) 2^(2 n) (2^(2 n) - 1) B_(2 n), (2 n) !) x^(2 n - 1) + o (x^(2 n - 1))$ 其中 $B_(2 n)$ 是伯努利数。

  + $sin x = x - x^3 / 6 + dots.h.c + (- 1)^n frac(x^(2 n + 1), (2 n + 1) !) + o (x^(2 n + 1))$

  + $cos x = 1 - x^2 / 2 + dots.h.c + (- 1)^n frac(x^(2 n), (2 n) !) + o (x^(2 n))$

  + $frac(1, 1 - x) = 1 + x + x^2 + x^3 + dots.h.c + x^n + o (x^n)$

  + $frac(1, 1 + x) = 1 - x + x^2 - x^3 + dots.h.c + (- 1)^n x^n + o (x^n)$

  + $ln (1 + x) = x - x^2 / 2 + x^3 / 3 - dots.h.c + (- 1)^(n + 1) x^n / n + o (x^n)$

  + $(1 + x)^a = 1 + a x + frac(a (a - 1), 2) x^2 + dots.h.c + frac(a (a - 1) dots.h.c (a - n + 1), n !) x^n + o (x^n)$


] <fm1-maclaurin-expansion>

#annotation[
  + 初等函数在定义域上连续，初等函数的导数也是初等函数。
]



