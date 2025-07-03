#import "lib.typ": *


#show: template.with(
  title: [Probabilidad I],
  short_title: "A bunch of defs and theorems",
  description: [Notes based on a regular math course.],
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
  h1-prefix: "Capítulo",
  colortab: true,
)

#include "./chapters/chapter1.typ"
#include "./chapters/chapter2.typ"
