#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Chapter 2",
  authors: ("suspen",),
  language: "ch",
)

= 数列的极限

#theorem("保号性")[
  *TODO*
]

= 杂项


// #set enum(numbering: "1")

#formula("证明收敛大题")[
  + 求出单调性
    + 代换题目中的递推式，根据情况结合保号性
    + 根据结论：令 $x_(n + 1) = f(x_n)$，若 $f'(x) > 0, x_2 > x_1 "单增，" x_2 < x_1  "单减。" f'(x) < 0， "不单调。"$

  + 求出极限
    + 一般是设出极限 $a$，再带入求出极限 $a$，若 $f(x_n+1) = g(x_n)$，两边分别取极限。
]