#import "lib.typ": *

#show: template.with(
  title: [Compiladores],
  short_title: "Compiladores",
  description: [Compiladores],
  date: datetime(year: 2026, month: 02, day: 03),
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

