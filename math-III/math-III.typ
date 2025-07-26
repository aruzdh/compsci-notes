#import "lib.typ": *

#show: template.with(
  title: [Matematicas III],
  short_title: "Calculo Vectorial",
  description: [],
  date: datetime(year: 2025, month: 01, day: 17),
  authors: (
    (
      name: "Aru",
      link: "https://aruzdh.netlify.app",
    ),
  ),
  bibliography_file: "./bibliography/bibliography.bib",
  paper_size: "a4",
  cols: 1,
  h1-prefix: "chapter", // chapter or lecture
  text_lang: "es",
  accent: maroon,
  colortab: true,
)

#include "./chapters/chapter1.typ"

