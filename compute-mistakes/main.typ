#import "../setup/conf.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#let ps = x => box[#text(yellow.negate(space: rgb))[hints: ] #emph[#x]]

#let ref = x => box[#text(yellow.negate(space: rgb))[ref: ] #emph[#x]]
#let qst = thmplain("qst", "Q", base: none, inset: (
  bottom: 1em,
  left: 0em,
  right: 0em,
)).with(breakable: false, numbering: none)


#show: project.with(
  title: "compute mistakes",
  language: "ch",
  authors: "suspen",
  outl: [
    #outline(
      indent: auto,
      title: text(yellow.negate(space: rgb))[Contents],
      depth: 2,
    )
  ],
  title_page: true,
  compat_title_page: true,
)

= 计算错误与失误大赏

#[
  #set enum(numbering: "i")
  + 计算 $c integral_a^b f'(x) dif x$ 时，要注意是 $c f(b) - c f(a)$ 而不是 $c f(b) - f(a)$。

  + 定积分上下限代入时，应是 $f(a) - f(b)$ 注意符号！

  + 多项式带括号时，应展开每一项，不能心算，以免漏乘！

  + 构造参数方程，应代入验证看是否正确！

  + 读题要细致，图像题要注意是给的哪个函数的图像。

  + #hl[$1^oo$ 类极限不能漏写底数 $e$。]

  + $bold(A)^(upright(T)) bold(A)$ 不要看成  $bold(A) bold(A)^(upright(T))$.

  + 心算时不要过度联想，使 $1/(1 + x^2)$ 变成 $1/(1 + x^2)^2$

  + 二重积分区域对称后不要忘记乘 $2$.

  + 要看清给的坐标点是什么，不要弄混了 $x,y$ 轴。

  + 矩阵初等变换时用铅笔写，写大一点，变一次直接在原矩阵上用橡皮修改！

  + $integral x dif x = integral 1/2 dif x^2$  一定不要忘记 $1/2$.

  + $f^-(f(x)) = x != 1$ 一定要记得！

  + 积分上下限在计算过程中抄错。

  + 括号前的系数没有分配到括号内的每一项中。

  + 抄错题！
]

= 检查原则
