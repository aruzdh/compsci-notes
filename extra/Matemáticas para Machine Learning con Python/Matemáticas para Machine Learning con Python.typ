#import "lib.typ": *

#show: template.with(
  title: [Matemáticas para Machine Learning con Python],
  short_title: "Matemáticas para Machine Learning con Python",
  description: [Curso intersemestral impartido por SOSBI, UNAM],
  date: datetime(year: 2025, month: 06, day: 30),
  authors: (
    (
      name: "Aru",
      link: "https://aruzdh.netlify.app",
    ),
  ),
  bibliography_file: "./bibliography/bibliography.bib",
  paper_size: "a4",
  cols: 1,
  h1-prefix: "lecture", // chapter or lecture
  text_lang: "es",
  accent: maroon,
  colortab: true,
)

#include "./lectures/lecture1.typ"

