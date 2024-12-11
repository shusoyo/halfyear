#import "../setup/main.typ": *

#show: project.with(
  title: "Basic Mathmatical",
  authors: ("suspen",),
  language: "ch",
  outl: [
    #outline(indent: true, title: "目录", depth: 2)
  ],
  title_page: true,
)

#show math.ast: math.thin
#let obey = math.tilde

#include "ch0.typ"
#include "ch1.typ"
#include "ch2.typ"
#include "ch3.typ"
