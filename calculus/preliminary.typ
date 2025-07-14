#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Basic Knoweledge",
  language: "ch",
)

= Preliminary

== 不等式
#annotation("常见不等式及证明")[
  + https://space.bilibili.com/328805110/lists/1102302

  + https://zhuanlan.zhihu.com/p/566860871
]

#proposition("基本不等式组")[
  $ 2 / (1 / a + 1 / b) <= sqrt(a b) <= (a + b) / 2 <= sqrt((a^2 + b^2) / 2), space (a, b > 0) $
  可归纳出 $|a b| <= (a^2 + b^2) / 2$
]

#proposition("绝对值不等式组")[
  + $abs(size: #120%, |a| - |b|) <= |a - b|$
  + $abs(a plus.minus b) <= |a| + |b|$
]

#proposition([柯西--施瓦茨不等式])[
  假设 $f (x)$ 和 $g (x)$ 在区间 $[a , b]$ 上可积，那么
  $ integral_a^b f^2 (x) dif x dot.op integral_a^b g^2 (x) dif x >= (integral_a^b f (x) g (x) dif x)^2 $

  #proof[若 $f (x) = 0$，显然不等式成立。

    若 $f (x) eq.not 0$，则 $integral_a^b f^2 (x) d x > 0$，引入 $lambda$，有

    $
      integral_a^b [lambda f (x) + g (x)]^2 d x
      &= integral_a^b [lambda^2 f^2 (x) + g^2 (x) + 2 lambda f (x) g (x)] d x
      \
      &= lambda^2 integral_a^b f^2 (x) d x + 2 lambda integral_a^b f (x) g (x) d x + integral_a^b g^2 (x) d x gt.eq 0
    $
    将其视为 $lambda$ 的二元一次方程，则由其根判别式
    $ Delta = (2 integral_a^b f (x) g (x) d x)^2 - 4 integral_a^b f^2 (x) d x integral_a^b g^2 (x) d x lt.eq 0 $
    移项后即为所证。
  ]
]

#proposition("常见不等关系")[

  + 若 $0 < a < x < b, 0 < c < y < d,$ 则有 $c / b < y / x < d / a.$

  + 当 $0 < x < pi / 4$时，$x < tan x < 4 / pi x.$

  + 当 $0 < x < pi / 2$时，$sin x > 2 / π x, sin x < x < tan x.$

  + 当 $0 <= x <= 1$时，$arctan x <= x <= arcsin x.$

  + 当 $0 < x "时", 1 / (1 + x) < ln(1 + 1 / x) < 1 / x "或" x / (1 + x) < ln(1 + x) < x.$

  + $e^x >= x + 1.$
]

== 三角函数

#annotation[
  + $sin x$ 在 $[0, pi]$ 上与 $x$ 轴围成区域的面积为 $2$, 将该区域的底边 $4$ 等分，所得的小区域的面积分别是 $1 - sqrt(2) / 2, sqrt(2) / 2, sqrt(2) / 2, 1 - sqrt(2) / 2$
]

#proposition("三角变换")[
  + $sin x + cos x = sqrt(2) (sqrt(2) / 2 sin x + sqrt(2) / 2 cos x) = sqrt(2) sin(x + pi / 4)$ 辅助角公式.
  + $arctan x + arctan 1 / x = pi / 2 (x > 0)$
]

#annotation("反三角函数相关讲解视频")[
  + https://www.bilibili.com/video/BV1uz421q7e8
]

#proposition("反三角函数")[
  + $sin (arcsin a) = a, (a in [-1, 1])$.

  + $arcsin (sin theta) = theta, (theta in [-pi/2, pi/2])$.
]

== 多项式
#proposition("求根公式")[
  若方程 $a x^2 + b x + c = 0, a != 0$, 则有
  $x = (-b plus.minus sqrt(b^2 - 4 a c)) / (2 a)$.
]
#annotation()[
  #hl[
    $sqrt(x^2) = |x|$
  ]
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

#proposition("二维平面中点到直线的距离")[
  设在二维平面上直线 $L$ 的方程为 $A x + B y + C = 0$，点 $P_0$ 的坐标为 $(x_0 , y_0)$，则点 $P_0$ 到直线 $L$ 的距离公式为 $ d = lr(|A x_0 + B y_0 + C|) / sqrt(A^2 + B^2) . $
]

#proposition([球的体积])[
  即 $y^2 + x^2 = r^2$ 绕 $x$ 或 $y$ 轴的旋转体体积：
  $ V = 2 integral_0^r 2 pi x sqrt(r^2 - x^2) dif x = 4 / 3 pi r^3. $
]

#proposition("弧长公式")[
  $L = r theta$ .
]

#annotation("基本物理公式")[
  + 力与位移方向相同时，做功 $W = F d$.
]

== 杂项

#annotation("因式分解")[
  + $a^3 plus.minus b^3 = (a plus.minus b)(a^2 minus.plus a b plus b^2)$.
  + $ln(a b c) = ln(a) + ln(b) + ln(c)$ （将乘法变为加法，便于求导）。
]

#proposition([$op("sgn")$ 符号函数])[
  $
    op("sgn") = cases(
      -1 quad & x < 0,
      0 & x = 0,
      1 & x > 0,
    )
  $
]

#annotation("中学数学基础讲解")[
  + https://space.bilibili.com/1632276842/lists/3683198
]

// #annotation("凑出奇函数")[
//   + $ a > 1 时, 1 / (a^x + 1)-1 / 2 , (a^x - 1) / (a^x + 1) "均为奇函数。 " $
//   + 含有指数函数的分式，考虑凑出奇函数。$f(x) = g(x) + k$ ，如果能凑出奇函数$g(x)$
//     , 则$f(x) + f(-x) = 2k$。
// ]

