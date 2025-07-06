#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(language: "ch")


= 函数及其性态

#definition("奇偶性")[

]

#proposition("判断函数的奇偶性")[
  + $f(x) + f(-x)$ 必为偶函数

  + $f(x) - f(-x)$ 必为奇函数

  + $f[phi(x)]$ （内偶则偶，内奇同外）

  + 函数求导或积分一次，改变一次奇偶性

  + $f(a + b) = f(a) + f(b)$ 则 $f(x)$ 为奇函数.
]

#definition("周期性")[

]
#proposition("周期性的重要结论")[
  若 $f(x)$ 周期为 $T$,

  + $f(a x + b)$ 周期为 $T / abs(a)$.

  + $integral_0^x f(t) dif t$ 只有在 $integral_0^T f(x) dif x = 0$ 时以 $T$ 为周期。

  + 求导不改变周期.

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

  + $f (x)$ 在 $[a,b]$ 上连续 $arrow.r.double f (x)$ 在 $[a,b]$
    上有界；

  + $f (x)$ 在 $(a,b)$ 上连续，且 $f (a^(+))$ 和 $f (b^(-))$ 存在
    $arrow.r.double f (x)$ 在 $(a,b)$ 上有界；
    #annotation[
      区间 $(a , b)$ 改为无穷区间
      $(-oo,b) , (a,+ oo) , (- oo,+ oo)$ 结论仍成立。
    ]

  + $f' (x)$ 在区间 $I$ 上有界 $arrow.r.double f (x)$ 在 $I$
    上有界。
]

#annotation[
  + 初等函数在定义域上连续，初等函数的导数也是初等函数。
]

