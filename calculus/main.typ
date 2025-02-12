#import "../setup/main.typ": *

#show: project.with(
  title: "Basic Math",
  language: "ch",
  authors: ("suspen", "courier"),
  outl: [
    #outline(indent: true, title: "目录", depth: 2)
  ],
  title_page: true,
)

#include "ch0.typ"
#include "ch1.typ"
#include "ch2.typ"
#include "ch3.typ"
#include "ch4.typ"
#include "ch5.typ"
#include "ch6.typ"
#include "ch8.typ"
#include "ch9.typ"
#include "ch10.typ"

#include "appendix.typ"
