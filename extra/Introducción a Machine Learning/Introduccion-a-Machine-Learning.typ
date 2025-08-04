#import "lib.typ": *

#show: template.with(
  title: [Introducción a Machine Learning],
  short_title: "Introducción a Machine Learning",
  description: [Curso Intersemestral: Machine Learning],
  date: datetime(year: 2025, month: 08, day: 04),
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

#include "lectures/lecture1.typ"
