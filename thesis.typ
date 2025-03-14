#import "lib.typ": *

// Определение шаблона 
#show: template.with(
  // Это может быть удалено, если не используется программный код:
  languages: (
    rust: 
      (name: "Rust", 
      icon: icon(image("images/brand-rust.svg")), 
      color: rgb("#CE412B")),
    python: 
     (name: "Python",
     icon: icon(image("images/brand-python.svg")),
     color: rgb("#3572A5"))
  ),
  logo: image("./images/logo.svg",width: 50%),
)

// Обозначения и сокращения 
#import "./common/acronyms.typ": acronyms-entries
#import "./common/symbols.typ": symbols-entries
#print-glossary(acronyms-entries+symbols-entries)

// Основные части документа 
#include "./parts/intro.typ"

#show heading.where(level:1): set heading(numbering: "1.")
#include "./parts/part1.typ"
#include "./parts/part2.typ"
#include "./parts/part3.typ"

// Выключить нумерацию выходных данных 
#show heading: set heading(numbering:none)

// Заключение 
#include "./parts/conclusion.typ"

#bibliography(title: "СПИСОК ИСПОЛЬЗОВАННЫХ ИСТОЧНИКОВ", ("./common/external.bib","./common/author.bib"), style: "gost-r-705-2008-numeric")

#show outline: set heading(outlined: true)

// Приложения 
#include "./parts/appendix.typ"