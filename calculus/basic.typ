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

= 基础知识

== 因式分解
#example[
  + $a^3 plus.minus b^3 = (a plus.minus b)(a^2 minus.plus a b plus b^2)$
  + $ln(a b c) = ln(a) + ln(b) + ln(c) space ("将乘法变为加法，便于求导")$

]

== 不等式
#theorem[
  $ 2 / (1/a + 1/b) <= sqrt(a b) <= (a + b) / 2 <= sqrt((a^2 + b^2) / 2), space (a, b > 0) $
]

#theorem[
  + $abs(size: #120%, |a| - |b|)  <= |a - b| $
  + $abs(a plus.minus b) <= |a| + |b|$

]

== 反三角函数
// TODO

== 杂项
#formula("求根公式")[
  For equation $a x^2 + b x + c = 0, a != 0$:
  $ x = (-b plus.minus sqrt(b^2 - 4 a c)) / (2 a) $
]

#knowledge[
  $ sqrt(x^2) = |x| $
]

#theorem("二项式定理")[
  $ (a + b) ^ n = sum_(k = 0)^n C^k_n thin a^k thin b^(n-k) $
]
// #box(height: 180pt)
#formula("二项式定理的近似计算和放缩")[

  $ (1+x)^n ≈ 1 + n x + n(n+1)/2 x^2 + … thin space $
  $ (|x|≪1 "或n较大时可以只取得前几项。当x较小时,也可以使用泰勒展开得出") $ 
  
]

#formula("极限相关二级结论")[
  
  + $lim_(x->infinity)(1+a/x)^(b x + d) = e ^(a b)$


]