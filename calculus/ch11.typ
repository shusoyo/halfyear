#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project.with(language: "ch")

= 一元函数积分学的应用（一）积分等式与不等式
== 积分等式

#theorem("积分中值定理的推广")[
  有函数 $f(x), g(x)$ 在 $[a, b]$ 上连续，#text(fill: rgb(blue))[$g(x)$ 在 $[a, b]$ 上不变号], $exists xi in (a, b), integral_b^a f(x) g(x) dif x = f(xi) integral_b^a g(x) dif x.$
]
