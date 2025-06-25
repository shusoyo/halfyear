#import "../setup/conf.typ": *

#show: project.with(
  title: "考研高数",
  language: "ch",
  authors: ("suspen", "courier"),
  outl: [
    #outline(
      indent: auto,
      title: text(yellow.negate(space: rgb))[目录],
      depth: 2,
    )
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
#include "ch7.typ"
#include "ch8.typ"

#include "preliminary.typ"
#include "appendix.typ"
