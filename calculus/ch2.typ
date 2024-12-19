#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Chapter 2",
  language: "ch",
)

= 数列的极限

#theorem("收敛数列的保号性")[
  有数列 $lim_(n -> oo) {x_n} = a >_((<)) b$，则 $exists N in NN^+, "当" n > N, "有" x_n >_((<)) b$. 反之，若有 $b in RR, x_n >=_((<=)) b$，则 $lim_(n -> oo) = a >=_((<=)) b$.
]

#theorem("归结原则")[
  $exists x in accent(U, circle) (x_0), lim_(x -> x_0) f(x) = A, forall lim_(n -> oo)x_n = x_0$, 有$lim_(n -> oo) f(x_n) = A.$
]
#knowledge[
  + 当 $x -> 0$ 时，$x_n = 1/n, lim_(n -> oo)x_n = 0$.
  + 当 $x -> +oo$ 时，$x_n = n, lim_(n -> oo)x_n = +oo$.
  + 相反的，当 $lim_(n -> oo) x_n -> a, and x_n != a, lim_(x -> a)f(x) = lim_(n -> oo)f(x_n) = A$.
]

#formula("证明收敛大题")[
  + 求出单调性
    - 代换题目中的递推式，根据情况结合保号性
    - 根据结论：令 $x_(n + 1) = f(x_n)$，若 $f'(x) > 0, x_2 > x_1 "单增，" x_2 < x_1  "单减。" f'(x) < 0， "不单调。"$

  + 求出极限
    - 一般是设出极限 $a$，再带入求出极限 $a$，若 $f(x_n+1) = g(x_n)$，两边分别取极限。
]
