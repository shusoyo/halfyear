#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Basic Knoweledge",
  language: "ch",
)

= Preliminary

== 不等式
#proposition("基本不等式组")[
  $ 2 / (1 / a + 1 / b) <= sqrt(a b) <= (a + b) / 2 <= sqrt((a^2 + b^2) / 2), space (a, b > 0) $
  可归纳出 $|a b| <= (a^2 + b^2) / 2$
]

#proposition("绝对值不等式组")[
  + $abs(size: #120%, |a| - |b|) <= |a - b|$
  + $abs(a plus.minus b) <= |a| + |b|$
]

#proposition("常见不等关系")[

  + 若 $0 < a < x < b, 0 < c < y < d,$ 则有 $c / b < y / x < d / a.$

  + 当 $0 < x < pi / 4$时，$x < tan x < 4 / pi x.$

  + 当 $0 < x < pi / 2$时，$sin x > 2 / π x, sin x < x < tan x.$

  + 当 $0 <= x <= 1$时，$arctan x <= x <= arcsin x.$

  + 当 $0 < x "时", 1 / (1 + x) < ln(1 + 1 / x) < 1 / x "或" x / (1 + x) < ln(1 + x) < x.$

  + $e^x >= x + 1.$
]

== 函数变换
#annotation("因式分解")[
  + $a^3 plus.minus b^3 = (a plus.minus b)(a^2 minus.plus a b plus b^2)$.
  + $ln(a b c) = ln(a) + ln(b) + ln(c)$ （将乘法变为加法，便于求导）。
]

// #annotation("凑出奇函数")[
//   + $ a > 1 时, 1 / (a^x + 1)-1 / 2 , (a^x - 1) / (a^x + 1) "均为奇函数。 " $
//   + 含有指数函数的分式，考虑凑出奇函数。$f(x) = g(x) + k$ ，如果能凑出奇函数$g(x)$
//     , 则$f(x) + f(-x) = 2k$。
// ]

== 三角函数

#annotation[
  + $sin x$ 在 $[0, pi]$ 上与 $x$ 轴围成区域的面积为 $2$, 将该区域的底边 $4$ 等分，所得的小区域的面积分别是 $1 - sqrt(2) / 2, sqrt(2) / 2, sqrt(2) / 2, 1 - sqrt(2) / 2$
]

#proposition("三角变换")[
  + $sin x + cos x = sqrt(2) (sqrt(2) / 2 sin x + sqrt(2) / 2 cos x) = sqrt(2) sin(x + pi / 4)$ 辅助角公式.
  + $arctan x + arctan 1 / x = pi / 2 (x > 0)$
]

== 多项式
#proposition("求根公式")[
  若方程 $a x^2 + b x + c = 0, a != 0$, 则有
  $x = (-b plus.minus sqrt(b^2 - 4 a c)) / (2 a)$.
]

#annotation[
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

== 数列求和
#proposition("等差数列求和公式")[
  设等差数列的第一项为 $a_1$，公差为 $d$，前 $n$ 项和 $S_n$ 有
  $ S_n = n / 2 (2 a_1 + (n - 1) d) $
] <等差数列求和公式>

#proposition("等比数列求和")[
  设等比数列的第一项为 $a_1$，公比为 $q$，前 $n$ 项和为 $S_n$ 有
  $ S_n = cases(a_1 frac(1 - q^n, 1 - q) quad &(q != 1), , n a_1 quad &(q = 1)) $
] <等比数列求和公式>

== 物理几何应用相关

#proposition([球的体积])[
  即 $y^2 + x^2 = r^2$ 绕 $x$ 或 $y$ 轴的旋转体体积：
  $ V = 2 integral_0^r 2 pi x sqrt(r^2 - x^2) dif x = 4 / 3 pi r^3. $
]
