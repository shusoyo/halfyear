#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project.with(language: "ch")
#show math.equation.where(block: false): math.display

= 函数、极限、连续

#qst(`A P6 E1`)[
  已知函数 $ f \( x \) = (integral_0^x ln( 1 + t^2 ) dif t) / (x^alpha)$ 在 $( 0 , + oo )$ 上有界，求 $alpha$ 的取值范围.
]

#qst(`A P13 E5`)[
  证明：
  + 若 $lim_(n arrow.r oo) a_(n + 1) / a_n = a$，且 $\| a \| < 1$，则 $lim_(n arrow.r oo) a_n = 0$；

  + $lim_(n arrow.r oo) frac(2^n n !, n^n) = 0 \, lim_(n arrow.r oo) frac(3^n n !, n^n) = + oo$.
]


#qst(`A P14 E6`)[
  + 证明：对任意的正整数 $n$，都有 $1/(n + 1) < ln(1 + 1/n) < n$ 成立。

  + 设 $a_n = 1 + 1/2 + ... + 1/n - ln n, (n = 1, 2, ...)$ ，证明数列 ${ a_n }$ 收敛。
]

#qst(`A P17 E1`)[

  + $lim_(x -> 1) (ln cos(x - 1)) / (1 - sin pi / 2 x)$
]

#qst(`A P36 E4`)[
  设 $x_1 = 2 \, x_(n + 1) = 2 + 1 / x_n med \( n = 1 \, 2 \, dots.h.c \)$，求极限 $lim_(n arrow.r oo) x_n$.
]



#qst(`A P36 E5`)[
  设 $f \( x \)$ 可微，且 $0 < f' \( x \) lt.eq frac(1, 2 + x^2)$，数列 $x_0 = A \, x_n = f \( x_(n - 1) \) \, n = 1 \, 2 \, dots.h.c$. 证明 $lim_(n arrow.r oo) x_n$ 存在且是方程 $f \( x \) = x$ 的唯一实根.
]

#qst(`A P44 E1`)[
  设函数 $f \( x \) = frac(x, a + e^(b x))$ 在 $\( - oo \, + oo \)$ 内连续，且 $lim_(x arrow.r - oo) f \( x \) = 0$，则常数 $a\, b$ 应满足什么条件 ？
]

#qst(`A P45 E2`)[
  设 $f \( x \)$ 和 $phi \( x \)$ 在 $\( - oo \, + oo \)$ 上有定义，$f \( x \)$ 为连续函数，且 $f \( x \) eq.not 0 \, phi \( x \)$ 有间断点，判断 $phi ( f ( x ) ), \[ phi \( x \) \]^2f, \( phi \( x \) \), frac(phi \( x \), f \( x \))$ 是否有间断点。
]

#qst(`A P46 E5`)[
  求极限
  $lim_(t arrow.r x) (frac(sin t, sin x))^(x \/ (sin t - sin x))$，记此极限为
  $f \( x \)$，求函数 $f \( x \)$ 的间断点并指出类型。
]

#qst(`A P48 E4`)[
  设 $f \( x \)$ 在 $\( - oo \, + oo \)$ 上连续，且 $lim_(x arrow.r oo) frac(f \( x \), x) = 0$，试证存在 $xi in \( - oo \, + oo \)$，使 $f \( xi \) + xi = 0$.
]

#qst(`B P129 E2.5`)[
  已知 $a_n = 1 - frac(\( - 1 \)^n, n) med \( n = 1 \, 2 \, dots.h.c \)$，判断 ${ a_n }$ 是否有最大最小值.
]

#qst(`B P131 E2.7`)[
  当 $x arrow.r 0$ 时，判断 $1 / x sin 1 / x$ 是无界变量还是无穷大量.
]

#qst(`B P142 E2.17`)[
  判断 “存在正整数 $N$，当 $n gt.eq N$ 时，恒有
  $\| x_n - a \| lt.eq 1 / n$ ” 是否与数列 ${ x_n }$ 收敛于 $a$ 等价。
]

#qst(`C E2.3`)[
  设 ${ a_n }$ 非负有界，$b_n = sum_(k = 1)^n frac(k, a_n + n^2)$，求
  $lim_(n arrow.r oo) 1 / b_n$.
]

#qst(`R 2 08 a:lyf-p33`)[
  设函数 $f \( x \)$ 在 $\( - oo \, + oo \)$
  内单调有界，${ x_n }$ 为数列，下列命题正确的是（#h(1cm)）.
  #grid(
    columns: (1fr, 1fr),
    [
      + 若 ${ x_n }$ 收敛，则 ${ f \( x_n \) }$ 收敛.

      + 若 ${ x_n }$ 单调，则 ${ f \( x_n \) }$ 收敛.
    ],
    [
      3. 若 ${ f \( x_n \) }$ 收敛，则 ${ x_n }$ 收敛.

      + 若 ${ f \( x_n \) }$ 单调，则 ${ x_n }$ 收敛.],
  )
]

#qst(`B P140 E2.15`)[
  已知方程 $x = cos x$ 在 $(0 \, pi / 3)$ 内有唯一实根 $a$，设 $- 1 lt.eq x_1 lt.eq 1$，定义 $x_(n + 1) = cos x_n\, n = 1\, 2\, dots.h.c$，证明 $lim_(n arrow.r oo) x_n$ 存在，且极限值就是 (1) 中的 $a$。
]

#qst(`R 2 06 a:lyf-p36`)[
  设数列 ${ x_n }$ 满足
  $0 < x_1 < pi \, x_(n + 1) = sin x_n med \( n = 1 \, 2 \, dots.h.c \)$, 证明 $lim_(n arrow.r oo) x_n$ 存在，并求该极限.
]

#qst(`R 2 02 a:lyf-p45`)[
  设函数 $f \( x \)$ 在 $x = 0$ 的某邻域内具有二阶连续导数，且 $f (0) != 0, $$ f' \( 0 \) eq.not 0 \, f'' \( 0 \) eq.not 0$。证明：存在唯一的一组实数 $lambda_1 \, lambda_2 \, lambda_3$，使得当 $h arrow.r 0$ 时，$lambda_1 f \( h \) + lambda_2 f \( 2 h \) + lambda_3 f \( 3 h \) - f \( 0 \)$ 是比 $h^2$ 高阶的无穷小。
]

#qst(`R 2 06 a:lyf-p46`)[
  试确定常数 $A \, B \, C$ 的值, 使得
  $e^x \( 1 + B x + C x^2 \) = 1 + A x + o \( x^3 \)$，其中 $o \( x^3 \)$
  是当 $x arrow.r 0$ 时比 $x^3$ 高阶的无穷小量。
]

// #qst(``)[

// ]
