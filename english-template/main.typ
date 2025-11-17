#import "../setup/conf.typ": *

#show: project.with(
  title: "English Template",
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
)

#let rpb = x => box[#text(yellow.negate(space: rgb))[] #emph[#underline(x)]]

= 图表作文


== Para 1

=== sentences 1
The bar/line/pie chart illustrates the statistics/changes concerning #rpb[图表主题] from #rpb[起始年份] to #rpb[结束年份].


=== sentences 2

+ #rpb[动态图-多项目] Specifically, the number/percentage of #rpb[甲] increased/decreased dramatically from #rpb[A数据] in #rpb[A年份] to #rpb[B数据] in #rpb[B年份], while #rpb[乙] also showed a upward/downward trend.​

+ #rpb[动态图-单项目] Specifically, the number/percentage of #rpb[甲] showed a mild increase/decrease, rising/falling from #rpb[A数据] in #rpb[A年份] to #rpb[B数据] in #rpb[B年份].​

+ #rpb[静态图] In particular, #rpb[甲] accounts for the largest proportion at #rpb[A数据]; in contrast, #rpb[乙] constitutes the smallest share with only #rpb[B数据].

=== sentences 3
+ This phenomenon/trend/number(s)/figure(s) clearly indicates that #rpb[完整句].​

+ The phenomenon/trend/number(s)/figure(s) shown in the chart is a clear reflection of #rpb[名词性成分].

== Para 2

=== sentences 1

+ This phenomenon/trend can be attributed to a couple of key factors.

+ Several factors are behind this phenomenon/trend.

=== sentences 2 (social level)

// 这是画图题的方向
// ==== goodness for society
// _论点_ ：
// + On a societal level, a culture that encourages #rpb[核心品质] is more likely to foster innovation and social progress.（适用于创新、坚持、合作等）​

// + From a societal perspective, #rpb[核心品质] is indispensable for building a harmonious and civilized society. （适用于环保、诚信、孝顺、沟通等）​

// + On a macro level, #rpb[核心品质] can cultivate a better environment for the growth of the next generation.

// _论据_ ：
// + This is because #rpb[核心品质] creates an environment where #rpb[积极现象得以发生].​

// + This can be explained by the fact that #rpb[接完整的句子] ...

// #pagebreak()
==== reason at society level

_论点_ ：
+ On a societal level, the rapid development of #rpb[相关领域] has played a crucial role.​

+ On a macro level, there has been a growing emphasis on #rpb[相关理念/政策].​

+ From a societal perspective, a profound shift in #rpb[相关方面] (serves as a key driving force)/(has been a major cause).​

_论据_ ：
+ For instance, with #rpb[社会原因的具体体现], #rpb[该现象的具体表现].​

+ Specifically, #rpb[社会原因] has led to #rpb[一系列具体变化或行为].

==== result (optionally)

+ As a result, #rpb[一个积极的社会层面结果].​
+ Consequently, #rpb[一个积极的社会层面结果].​
+ This, in turn, helps to #rpb[一个积极的社会层面结果].

=== sentences 3 (personally)

+ Additionally, from an individual's perspective, a growing desire for #rpb[个人需求/目标] also plays a vital role.​
+ What's more, on a personal level, the shift in people's mindset towards #rpb[新的观念] cannot be ignored.​
+ On a micro level, this trend is also fueled by the fact that individuals are increasingly #rpb[个人的某种行为或状态].

== Para 3

=== sentences 1
+ From what has been discussed, we can draw the conclusion that #rpb[换一种说法重申中心论点].

+ In conclusion, it is a combination of #rpb[社会原因] and #rpb[个人原因] that has contributed to this phenomenon/trend.​

+ To sum up, the trend/phenomenon is a natural result of both societal progress and changing individual needs.

=== sentences 2

+ Looking ahead, we have every reason to believe that the number/percentage of #rpb[...] will witness further growth in the years to come.​

+ Given the current momentum, it is reasonable to predict that this trend will continue in the foreseeable future.
