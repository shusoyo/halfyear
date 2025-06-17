#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)
#show: project.with(language: "ch")

// #show math.equation.where(block: false): math.display
#let mkItg = f => $integral #f dif x$

= Appendix

#apdx("积分表")[
  #block(height: 300pt)[
    #columns(2)[
      + $mkItg(x^mu) = x^(mu + 1) / (mu + 1) + C$

      + $mkItg(1 / x) = ln abs(x) + C$

      + $mkItg(sec^2 x) = tan x + C$

      + $mkItg(csc^2 x) = - cot x + C$

      + $mkItg(a^x) = a^x / (ln a) + C$

      + $integral sin x thin upright(d) x = - cos x + C$

      + $integral cos x thin upright(d) x = sin x + C$

      + $integral sec x tan x thin upright(d) x = sec x + C$

      + $integral csc x cot x thin upright(d) x = - csc x + C$

      + $integral sec x thin upright(d) x = ln lr(|sec x + tan x|) + C$

      + $integral csc x thin upright(d) x = ln lr(|csc x - cot x|) + C$

      + $integral frac(upright(d) x, a^2 + x^2) = 1 / a arctan x / a + C$

      + $integral frac(upright(d) x, a^2 - x^2) = frac(1, 2 a) ln lr(|frac(a + x, a - x)|) + C$

      + $integral frac(upright(d) x, sqrt(a^2 - x^2)) = arcsin x / a + C$

      + $integral frac(upright(d) x, sqrt(x^2 + a^2)) = ln lr(|x + sqrt(x^2 + a^2)|) + C$

      + $integral frac(upright(d) x, sqrt(x^2 - a^2)) = ln lr(|x + sqrt(x^2 - a^2)|) + C$
    ]
  ]
]

#apdx("求极限时常见的等价无穷小")[
  + $x ~ sin x ~ tan x ~ arcsin x ~ arctan x ~ ln(1 + x) ~ e^x - 1 ~ ln(x + sqrt(x^2 + 1))$

  + $a^x -1 ~ x ln a$
  + $1 - cos^alpha x ~ alpha / 2 x^2$
  + $(1 + x)^a - 1 ~ a x$
] <Equivalent-Infintesimal>


#apdx("麦克劳林展开式")[
  + $e^x = 1 + x + x^2 / 2 + x^3 / 6 + dots.h.c + frac(x^n, n !) + o (x^n)$

  + $arcsin x = x + x^3 / 6 + dots.h.c + frac((2 n - 1) ! !, (2 n) ! !) frac(x^(2 n + 1), 2 n + 1) + o (x^(2 n + 1))$

  + $arctan x = x - x^3 / 3 + dots.h.c + (- 1)^n frac(x^(2 n + 1), 2 n + 1) + o (x^(2 n + 1))$

  + $tan x = x + x^3 / 3 + dots.h.c + sum_(n = 1)^oo frac((- 1)^(n - 1) 2^(2 n) (2^(2 n) - 1) B_(2 n), (2 n) !) x^(2 n - 1) + o (x^(2 n - 1))$ 其中 $B_(2 n)$ 是伯努利数。

  + $sin x = x - x^3 / 6 + dots.h.c + (- 1)^n frac(x^(2 n + 1), (2 n + 1) !) + o (x^(2 n + 1))$

  + $cos x = 1 - x^2 / 2 + dots.h.c + (- 1)^n frac(x^(2 n), (2 n) !) + o (x^(2 n))$

  + $frac(1, 1 - x) = 1 + x + x^2 + x^3 + dots.h.c + x^n + o (x^n)$

  + $frac(1, 1 + x) = 1 - x + x^2 - x^3 + dots.h.c + (- 1)^n x^n + o (x^n)$

  + $ln (1 + x) = x - x^2 / 2 + x^3 / 3 - dots.h.c + (- 1)^(n + 1) x^n / n + o (x^n)$

  + $(1 + x)^a = 1 + a x + frac(a (a - 1), 2) x^2 + dots.h.c + frac(a (a - 1) dots.h.c (a - n + 1), n !) x^n + o (x^n)$
] <fm1-maclaurin-expansion>
