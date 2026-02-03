#import "lib.typ": *

#show: template.with(
  title: [Matemáticas para las Ciencias Aplicadas IV],
  short_title: "Matemáticas para las Ciencias Aplicadas IV",
  description: [2026-1],
  date: datetime(year: 2025, month: 08, day: 11),
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
  accent: orange,
  colortab: true,
)

#include "./weeks/week1.typ"
#include "./weeks/week2.typ"
#include "./weeks/week3.typ"
#include "./weeks/week4.typ"
#include "./weeks/week5.typ"
#include "./weeks/week6.typ"
#include "./weeks/week7.typ"
#include "./weeks/week8.typ"
#include "./weeks/week9.typ"
#include "./weeks/week10.typ"
#include "./weeks/week11.typ"

