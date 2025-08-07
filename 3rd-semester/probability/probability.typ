#import "lib.typ": *

#show: template.with(
  title: [Probabilidad I],
  short_title: "Probabilidad I",
  description: [Notas basadas en el curso impartido en la Facultad de Ciencias, UNAM.],
  date: datetime(year: 2025, month: 07, day: 03),
  authors: (
    (
      name: "Aru",
      link: "https://aruzdh.netlify.app",
    ),
  ),
  paragraph_indent: 0em,
  paper_size: "a4",
  cols: 1,
  text_lang: "es",
  accent: "#0b4934",
  h1-prefix: "chapter",
  colortab: true,
)

#include "./chapters/chapter1.typ"
#include "./chapters/chapter2.typ"
#include "./chapters/chapter3.typ"
#include "./chapters/chapter4.typ"
#include "./chapters/chapter5.typ"
#include "./chapters/chapter6.typ"
