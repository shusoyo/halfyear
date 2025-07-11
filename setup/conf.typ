#import "@preview/i-figured:0.2.4"

#let project(title: "", authors: (), body, language: "en", outl: [], title_page: false) = {
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set heading(numbering: "1.1.a ")

  // fonts settings
  set text(
    font: (
      (name: "New Computer Modern", covers: "latin-in-cjk"),
      "Noto Serif CJK SC",
    ),
    lang: language,
    size: 11pt,
    weight: "light",
  )

  show raw: set text(
    font: "Fira Code",
    weight: "regular",
  )

  show math.equation: set text(
    font: (
      "New Computer Modern Math",
      (
        name: "New Computer Modern",
        covers: regex("\p{script=Han}"),
      ),
      "Adobe Kaiti Std R",
    ),
    size: 11pt,
  )

  show emph: text.with(font: (
    "New Computer Modern",
    "Adobe Kaiti Std R",
  ))

  show regex("[。]"): it => [. ]

  // auto spacing. eg: 第4章 -> 第 4 章
  set text(cjk-latin-spacing: auto)

  // Reference when in multiple files
  // https://typst-doc-cn.github.io/guide/FAQ/multiple-files
  show ref: it => {
    if query(it.target).len() == 0 {
      return text(fill: red, "<未找到引用" + str(it.target) + ">")
    }
    it
  }

  // page size
  // set page(margin: 1.5cm)
  show heading: set block(above: 1.4em, below: 1em)
  show heading.where(level: 1): set align(center)

  set enum(indent: 1.2em)

  // https://typst-doc-cn.github.io/guide/FAQ/math-equation.html#%E5%A6%82%E4%BD%95%E8%AE%A9%E8%87%AA%E5%AE%9A%E4%B9%89%E6%95%B0%E5%AD%A6%E5%85%AC%E5%BC%8F%E7%BC%96%E5%8F%B7
  show math.equation: i-figured.show-equation.with(only-labeled: true)
  show heading: i-figured.reset-counters

  show math.ast: math.thin

  // show link: underline.with(stroke: 1.5pt + red, offset: 2pt)
  show link: it => text(yellow.negate(space: rgb))[#it]

  // outline
  if title_page {
    show outline.entry.where(level: 1): set outline.entry(fill: line(length: 0%))
    show outline.entry.where(level: 1): it => {
      v(17pt, weak: true)
      strong(text(yellow.negate(space: rgb))[#it])
    }

    page([
      #v(6.18em)
      #align(center)[
        #block(text(weight: 700, 1.85em, title))
        #v(1em)

        #link("https://github.com/shusoyo")[`suspen`]`,`
        #link("https://github.com/Couriee")[`courier`]

        #datetime.today().display("[year] - [month] - [day]")

        #v(1em)
        #outl
      ]
    ])
  }

  // Main body.
  set terms(tight: true)

  body
}

#let lim = $limits(lim)$

#let bluetxt = text.with(yellow.negate(space: rgb))
#let redtxt = text.with(rgb("#e60012"))

#let hilight = x => box(fill: rgb("#fffd11a1"))[#emph[#x]]
