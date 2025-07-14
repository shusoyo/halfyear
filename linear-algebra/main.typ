#import "../setup/conf.typ": *

#show: project.with(
  title: "基础线性代数",
  language: "ch",
  authors: ("suspen", "courier"),
  outl: [
    #outline(indent: auto, title: "目录", depth: 2)
  ],
  title_page: true,
)

#include "./ch1.typ"
#include "./ch2.typ"
#include "./ch3.typ"
#include "./ch0.typ"
