#let project(title: "", authors: (), body, language: "en", outl: [], title_page: false) = {
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set heading(numbering: "1.1 ")

  // fonts settings
  set text(
    font: ("Libertinus Serif", "Noto Serif CJK SC"),
    lang: language,
    size: 11pt,
    weight: "light",
  )
  show raw: set text(font: "Fira Code", weight: "medium")
  show math.equation: set text(font: ("New Computer Modern Math", "Libertinus Serif"), size: 12pt)
  show math.equation: it => {
    show regex("\p{script=Han}"): set text(font: "Noto Serif CJK SC", weight: "light", size: 11pt)
    show regex("\p{script=Han}\s*,"): it => [#show regex("\s*,"): it => [#text(
          font: "Noto Serif CJK SC",
          "，",
        )]
      #it]

    // show regex("[,]"): it => [#text(font: "Noto Serif CJK SC", "，")]
    show regex("[,]"): it => [ , ]
    show regex("[。.]"): it => [ . ]
    it
  }
  show regex("[。]"): it => [ . ]
  show regex("\p{script=Han}\s*\."): it => [ . ]
  show regex("[,]"): it => [ , ]
  show regex("\p{script=Han}\s*,"): it => [#show regex(","): it => [，]
    #it]

  show emph: text.with(font: ("Libertinus Serif", "Adobe Kaiti Std R"))

  // auto spacing. eg: 第4章 -> 第 4 章
  set text(cjk-latin-spacing: auto)

  // https://typst-doc-cn.github.io/guide/FAQ/multiple-files
  show ref: it => {
    if query(it.target).len() == 0 {
      return text(fill: red, "<未找到引用" + str(it.target) + ">")
    }
    it
  }

  set page(margin: 1.5cm)

  show math.ast: math.thin

  set enum(indent: 1.5em)

  show heading: set block(above: 1.4em, below: 1em)

  // show regex("[“”‘’．，。、？！：；（）｛｝［］〔〕〖〗《 》〈 〉「」【】『』─—＿·…\u{30FC}]+"): set text(font: "Noto Serif CJK SC")

  if title_page {
    page([
      #v(6.18em)
      #align(center)[
        #block(text(weight: 700, 1.75em, title))
      ]

      #v(1em)
      #align(center)[
        #raw("suspen, courier")

        #datetime.today().display("[year] 年 [month] 月 [day] 日")
      ]

      #show outline.entry.where(level: 1): it => {
        v(12pt, weak: true)
        strong(it)
      }
      #outl
    ])
  }

  // Main body.
  set terms(tight: true)
  show link: underline

  body
}
