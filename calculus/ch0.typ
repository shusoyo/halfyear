#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(language: "ch")


= 函数及其性态

#definition("奇偶性")[
  + $f(x) + f(-x)$ 必为偶函数。

  + $f(x) - f(-x)$ 必为奇函数。
]

#proposition()[

  + 根据 @不定积分的定义，即 $integral f'(x) dif x = f(x) + C$，可以判断原函数与被积函数的奇偶性关系。

  + $f(a + b) = f(a) + f(b)$ 则 $f(x)$ 为奇函数.

  + 设 $f(x)$ 连续，$integral_0^x f(x) dif x$ 的奇偶性与 $f(x)$ 不同。
]

#definition("周期性")[

]

#proposition()[
  若 $f(x)$ 周期为 $T$,

  + $f(a x + b)$ 周期为 $T / abs(a)$.

  + 若 $f(x)$ 可导，则 $f'(x)$ 仍是周期函数，而 $integral f(x) dif x$ 不一定为周期函数.

  + $integral_0^x f(t) dif t$ 只有在 $integral_0^T f(x) dif x = 0$ 时以 $T$ 为周期。（根据原函数与变上限积分的关系可知，原函数的周期性也可以凭此判断。）
]

#proposition("定积分中涉及到的周期性的性质")[
  设函数 $f(x + T) = f(x)$.
  + $integral_(a)^(a + T) f(x) dif x = integral_0^T f(x) dif x$.
    #proof[
      $
        integral_(a)^(a + T) f(x) dif x = integral_a^0 f(x) dif x + integral_0^T f(x) dif x + integral_T^(a + T) f(x) dif x
      $
      对于上式中等号右边第三项，做变量代换，令 $t = x - T$，得
      $
        integral_T^(a + T) f(x) dif x ==>^(t = x - T) integral_0^a f(t + T) dif t = -integral_a^0 f(x) dif x
      $
      将上式代入到第一个式子中，消去等号右边第一项，即为所求。
    ]

  + $integral_0^(n T) f(x) dif x = n integral_0^T f(x) dif x$.
]



#definition("有界性")[
  若 $exists M > 0 , forall x in I , lr(|f (x)|) lt.eq M$,
  则称 $f (x)$ 在 $I$ 上有界。
]

#proposition("有界性的判定")[
  + 利用定义；

  + @有界与最值定理

  + $f (x)$ 在 $(a,b)$ 上连续，且 $f (a^(+))$ 和 $f (b^(-))$ 存在
    $arrow.r.double f (x)$ 在 $(a,b)$ 上有界；
    #proof[
      构造新的在有界区间上的连续函数
      $
        g(x) = cases(
          f(a^+)\, quad & x = a,
          f(x)\, & x in (a, b),
          f(b^-)\, & x = b,
        )
      $
      由 @有界与最值定理 易得 $g(x)$ 在 $[a, b]$ 有界。
    ]
    #annotation[
      区间 $(a , b)$ 改为无穷区间
      $(-oo,b) , (a,+ oo) , (- oo,+ oo)$ 结论仍成立。
    ]

  + $f' (x)$ 在区间 $I$ 上有界 $arrow.r.double f (x)$ 在 $I$
    上有界。
    #proof[
      由 @lagrange-midvalue-theorem 可得 $f(x) = f(x_0) + (x - x_0)f'(xi)$ 均为有限值，故为有界函数。
    ]
]

#annotation[
  + 初等函数在定义域上连续，初等函数的导数也是初等函数。
]

