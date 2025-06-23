#import "../setup/main.typ": *

#show: project.with(
  title: "考研高数",
  language: "ch",
  authors: ("suspen", "courier"),
  outl: [
    #outline(indent: auto, title: "目录", depth: 2)
  ],
  title_page: true,
)


#include "ch0.typ"
#include "ch1.typ"
#include "ch2.typ"
#include "ch3-4.typ"
#include "ch5-6.typ"
#include "ch8-9.typ"
#include "ch10-12.typ"
#include "ch13.typ"
#include "ch14.typ"

#include "preliminary.typ"
#include "appendix.typ"
