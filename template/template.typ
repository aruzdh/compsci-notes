#import "lib.typ": *

#show: template.with(
  title: [Math Notes],
  short_title: "A bunch of defs and theorems",
  description: [Notes based on a regular math course.],
  date: datetime(year: 1999, month: 12, day: 31),
  authors: (
    (
      name: "Aru",
      link: "https://aruzdh.netlify.app",
    ),
  ),
  
  bibliography_file: "./bibliography/bibliography.bib",
  paper_size: "a4",
  cols: 1,
  
  accent: "#0b4934",
  h1-prefix: "Chapter",
  colortab: true,
)

= Math Notes

#include "./chapters/chapter1.typ"
