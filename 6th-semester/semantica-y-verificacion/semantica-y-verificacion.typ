#import "lib.typ": *

#show: template.with(
  title: [Semántica y Verificación],
  short_title: "Semántica y Verificación",
  description: [Semántica y Verificación],
  date: datetime(year: 2026, month: 02, day: 06),
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
  accent: "#282828",
  colortab: true,
)

#include "./weeks/week1.typ"

