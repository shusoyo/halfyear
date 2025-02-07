#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(language: "ch")

= 一元函数积分学的计算
ps: 要注意公式，方法适用的条件。

== 不定积分的计算

#annotation("凑微分法")[ ]
#annotation("换元法")[ ]

#annotation("分部积分法")[ ]
#annotation("有理函数的积分")[ ]

== 定积分的计算

#theorem("牛顿莱布尼茨公式")[ ]

#annotation("换元法")[]
#annotation("分部积分法")[ ]
#annotation("求定积分时的一些常见结论总结")[
  + 奇偶性
  + 华里士公式
  + 区间再现
]

== 变限积分的计算
