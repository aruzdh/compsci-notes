#import "lib.typ": *

#show: template.with(
  title: [Linear Algebra],
  short_title: "Linear Algebra",
  
  description: [Notes based on the #cite(<friedberg2018linear>, form: "prose") book.],
  date: datetime(year: 2025, month: 6, day: 24),
  authors: (
    (
      name: "Carlos Arturo Hernández Vázquez",
      link: "https://aruzdh.netlify.app",
    ),
  ),

  bibliography_file: "./bibliography/friedberg.bib",
  paper_size: "a4",
  cols: 1,
 
  accent: "#0b4934",
  h1-prefix: "Chapter",
  colortab: true,
)

= Vector Spaces

#include "./chapters/chapter1.typ"
