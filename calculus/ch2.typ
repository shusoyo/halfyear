#import "../setup/main.typ": *
#import "../setup/theorem.typ": *

#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "Chapter 2",
  authors: (
    "suspen",
  ),
  language: "ch",
)

= 数列的极限

#theorem("保号性")[

]

= 杂项 
#formula("放缩二级结论")[
 + $ lim_(x->infinity)(a^n + b^n + ……)^(1/n) = max{a,b,……}$
 + $"若"0 < a < x < b  ,  0 < c < y < d , space "则" c/b < y/x < d/a  $
 + $"当"0 < x < pi/4 "时", space x < tan x < 4/pi x$
 + $"当"0 < x < pi/2 "时", space sin x > 2/π x$
 + $"当"0 <= x <= 1 "时", space arctan x <= x <= arcsin x$
 + $"当"0 < x "时", space 1/(1 + x) < ln(1 + 1/x) < 1/x space "或" space x/(1 + x) < ln(1 + x) < x $
]

#formula("证明收敛大题")[
  + $"求出单调性"$
    $ \ $
    $space (1) "代换题目中的递推式，根据情况结合保号性"$
    $ \ $
    $space (2) "结论" x_(n + 1) = f(x_n) ,thin  "若"f quote.single (x) > 0 ,space x_2 > x_1 "单增"
    ,space x_2 <x_1  "单减"。 thin f quote.single (x) < 0 ,thin "不单调"$
    $ \ $
  + $"求出极限"$
    $ \ $
    $space (1) "一般是设出极限a,  再带入求出极限a" ,"若"space thin f(x_n+1) = g(x_n) , space "两边分别取极限"$

]