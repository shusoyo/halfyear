#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#import "./lib.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project


= Appendix

#proposition("分块矩阵的特征值和特征向量")[
  设 $bA = mat(bA_1, bO; bO, bA_2)$ ，其特征值为 $bA_1$ 与 $bA_2$ 的特征值。
  其特征向量 TODO ?
  #annotation()[
    https://www.bilibili.com/video/BV19q4y1M7Hu/
  ]
]

#proposition([$r(bold(A)) = 1$ 总结])[
  + 假设 $bold(A) = (a_(i j))_(n times n)$ 则 $exists va = (a_1, a_2, dots , a_n)^tsp, vb = (b_1, b_2, ..., b_n)^tsp,$ $bold(A) = va^tsp vb .$

  + $tr(bold(A)) = va dot vb .$

  #annotation()[
    + $tr(bold(A))$ 是 $bold(A)$ 主对角线上所有元素的和。
  ]

  #annotation()[
    https://www.bilibili.com/video/BV1kK4y137sW
  ]
]
