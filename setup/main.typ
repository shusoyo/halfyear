#let project(title: "", authors: (), body, language: "en", outl : [], title_page: false) = {
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set heading(numbering: "1.1 ")

  set text(font: ("Libertinus Serif", "Noto Serif CJK SC"), lang: language, size: 11pt)
  
  // set text(font: ("New Computer Modern", "Noto Serif CJK SC"), lang: language, size: 11pt, weight: "medium")
  
  show math.equation: set text(font: ("New Computer Modern Math", "Libertinus Serif", "Noto Serif CJK SC"))
  
  show raw: set text(font: "Fira Code", weight: "medium")

  show heading: set block(above: 1.4em, below: 1em)
//  show heading.where(level: 1): it => {
//    v(1em)
//    [#it]
//  }

  show regex("[“”‘’．，。、？！：；（）｛｝［］〔〕〖〗《 》〈 〉「」【】『』─—＿·…\u{30FC}]+"): set text(font: "Noto Serif CJK SC")

//  show outline.entry.where(
//    level: 1
//  ): it => {
//    v(14pt, weak: true)
//
//    let no_fill_it = {it.body ;h(1fr); it.page}
//    strong(no_fill_it)
//  }

  if title_page {
    page([
    #v(6.18em)
    #align(center)[
      #block(text(weight: 700, 1.75em, title))
    ]

    #v(1em)
    #align(center)[
      #raw("suspen")
      
      #datetime.today().display("[year] 年 [month] 月 [day] 日")
    ]

    #outl
  ])
  }



  // Main body.
  set terms(tight: true)
  show link: underline

  body
}

// #let parbk() = {text()[#v(0.0em, weak: true)];text()[#h(0em)]}
