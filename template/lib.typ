// Imports =============================================================

#import "@preview/whalogen:0.2.0": ce
#import "@preview/theorion:0.3.3": *
#import cosmos.fancy: *
#show: show-theorion

// Template ============================================================

#let template(
  // The title of the lecture notes
  title: "Lecture Notes Title",

  // The short_title is shown in the running header
  short_title: none, // string

  // The description of the lecture notes; is optional. Example:
  // description: [A template for lecture notes]
  description: none,

  // The date of the lecture notes; is optional. Example
  // datetime(year: 2020, month: 02, day: 02)
  date: none,

  // An array of authors. For each author you can specify a name, orcid, and affiliations.
  // affiliations should be content, e.g. "1", which is shown in superscript and should match the affiliations list.
  // Everything but the name is optional.
  authors: (), // Changed to empty tuple for clarity if no authors

  // Enable/disable the list of figures, tables, and listings.
  lof: false,
  lot: false,
  lol: false,

  // The path to a bibliography file if you want to cite some external works.
  bibliography_file: none,
  // Citation style
  bibstyle: "apa",

  // The article's paper size. Also affects the margins.
  paper_size: "a4",
  // page orientation
  landscape: false,

  // The number of columns to be used in the page
  cols: 1,

  // The text and code font. Must be a valid font name.
  text_font: "STIXTwoText",
  code_font: "Fira Mono",
  math_font: "STIX Two Math",
  
  // Paragraph's indentation
  paragraph_indent: 1em, 
  
  // Default heading numbering format
  heading_numbering: "1.1", 
  
  // Default lang
  text_lang: "en", 
  
  // The color of the lecture notes' accent color. Must be a valid HEX color.
  accent: "#DC143C",
  h1-prefix: "Lecture",
  colortab: false,
  
  // Math equations numbering
  math_equation_numbering: none,
  
  // The lecture notes' content.
  body
) = {
  // Determine the accent color, ensuring it's a Typst color object
  let accent_color = {
    if type(accent) == str {
      rgb(accent)
    } else if type(accent) == "color" {
      accent
    } else {
      rgb("#DC143C") // Default accent color if invalid type
    }
  }

  // Construct string title from title content for metadata
  let str_title = ""
  if type(title) == content and title.has("children") {
    for element in title.children {
      if element.has("text") {
        str_title = str_title + element.text + " "
      }
    }
  } else if type(title) == str {
    str_title = title
  }
  str_title = str_title.trim(" ")

  // Set document metadata
  set document(title: str_title, author: authors.map(author => author.name))

  // Set the text and code font globally
  set text(font: text_font, size: 10pt)
  show raw: set text(font: code_font)
  show math.equation: set text(font: math_font)
  
  // Set the document's language
  set text(lang: text_lang) 

  // Set the default heading numbering
  set heading(numbering: heading_numbering)

  // Make links underlined and colored, except for author names
  show link: it => {
    let author_names = ()
    for author in authors {
      author_names.push(author.name)
    }

    if it.body.has("text") and it.body.text in author_names {
      it // Display author links as-is
    } else {
      // Other links are underlined, dotted, offset, and colored with accent
      underline(stroke: (dash: "densely-dotted"), offset: 2pt, text(fill: accent_color, it))
    }
  }

  // Configure the page layout and header
  set page(
    paper: paper_size,
    columns: cols,
    flipped: landscape,
    numbering: "1",
    number-align: center,
    header: context {
      let elems = query(
        selector(heading.where(level: 1)).before(here())
      )

      let head_title = text(fill: accent_color, {
        if short_title != none { short_title } else { str_title }
      })

      if elems.len() == 0 {
        align(right, "") // Empty header if no level 1 heading yet
      } else {
        let current_heading = elems.last()
        // Display title on left, current heading on right
        head_title + h(1fr) + emph(
          if current_heading.numbering != none {
            h1-prefix + " " + counter(heading.where(level: 1)).display("1: ") + current_heading.body
          } else {
            current_heading.body
          }
        )
        v(-6pt) // Adjust vertical position for the line
        line(length: 100%, stroke: (thickness: 1pt, paint: accent_color, dash: "solid")) // Horizontal line
      }
    },
    // Optional background color tab
    background: if colortab {
      place(top + right, rect(fill: gradient.linear(angle: 45deg, white, accent_color), width: 100%, height: 1em))
    } else { none }
  )

  // Configure footer for boxes (e.g. def, thm, cor)
  show: show-theorion 
  
  // Configure equation numbering and spacing.
  set math.equation(numbering: math_equation_numbering)
  show math.equation: eq => {
    set block(spacing: 0.65em) // Vertical spacing around equations
    eq
  }

  // Configure lists indentation
  set enum(indent: 10pt, body-indent: 6pt)
  set list(indent: 10pt, body-indent: 6pt)

  // Configure level 1 heading numbering format
  show selector(heading.where(level: 1)): set heading(numbering:
    (..nums) => h1-prefix + " " + nums
      .pos()
      .map(str)
      .join(".") + ":",
  )

  // Disable numbering for specific major headings (e.g., Contents, Lists, References)
  show selector(heading.where(body: [Contents]))
    .or(heading.where(body: [List of Figures]))
    .or(heading.where(body: [List of Tables]))
    .or(heading.where(body: [List of Listings]))
    .or(heading.where(body: [References])
  ): set heading(numbering: none)

  // Add vertical space after all headings
  show heading: it => {
    it
    v(12pt, weak: true)
  }

  // Style inline raw code (e.g., `code`)
  show raw.where(block: false): it => box(fill: luma(236), inset: (x: 2pt), outset: (y: 3pt), radius: 1pt)[#it]

  // Configure figure captions for tables and add spacing for raw figures
  show figure.where(kind: table): set figure.caption(position: top)
  show figure.where(kind: raw): it => {
    v(0.5em)
    it
    v(0.5em)
  }

  // Display the paper's title and description on the title page
  align(center, [
    #set text(18pt, weight: "bold")
    #title
  ])
  if description != none {
    align(center, box(width: 90%)[
      #set text(size: 12pt, style: "italic")
      #description
    ])
  }
  v(18pt, weak: true)

  // Display authors
  align(center)[
    #if authors.len() > 0 {
      box(inset: (y: 10pt), {
        authors.map(author => {
          text(11pt, weight: "semibold")[
            #if "link" in author {
              [#link(author.link)[#author.name]]
            } else { author.name }
          ]
        }).join(", ", last: {
          if authors.len() > 2 {
            ", and"
          } else {
            " and"
          }
        })
      })
    }
  ]
  v(6pt, weak: true)

  // Display publication/last updated date
  if date != none {
    align(center, table(
      columns: (auto, auto),
      stroke: none,
      gutter: 0pt,
      align: (right, left),
      [#text(size: 11pt, "Published:")],
      [#text(
        size: 11pt,
        fill: accent_color,
        weight: "semibold",
        date.display("[month repr:long] [day padding:zero], [year repr:full]")
      )],
      text(size: 11pt, "Last updated:"),
      text(
        size: 11pt,
        fill: accent_color,
        weight: "semibold",
        datetime.today().display("[month repr:long] [day padding:zero], [year repr:full]")
      )
    ))
  } else {
    align(center,
      text(size: 11pt)[Last updated:#h(5pt)] + text(
        size: 11pt,
        fill: accent_color,
        weight: "semibold",
        datetime.today().display(
          "[month repr:long] [day padding:zero], [year repr:full]"
        )
      )
    )
  }
  v(18pt, weak: true)

  // Style outline entries (Table of Contents)
  show outline.entry: it => {
    text(fill: accent_color, it)
  }

  // Display the lecture notes' table of contents.
  heading(level: 1, outlined: false)[Contents]
  outline(indent: auto, title: none)

  // Conditionally display Lists of Figures, Tables, and Listings
  if lof or lot or lol {
    show heading.where(level: 1): set text(size:0.9em) // This might be conditional scaling for these specific headings
    if lof {
      v(4pt)
      heading(level: 1)[List of Figures]
      outline(
        indent: auto,
        title: none,
        target: figure.where(kind: image),
      )
    }

    if lot {
      v(4pt)
      heading(level: 1)[List of Tables]
      outline(
        indent: auto,
        title: none,
        target: figure.where(kind: table),
      )
    }

    if lol {
      v(4pt)
      heading(level: 1)[List of Listings]
      outline(
        indent: auto,
        title: none,
        target: figure.where(kind: raw),
      )
    }

    // Decorative separator after lists
    align(center)[#v(1em) * \* #sym.space.quad \* #sym.space.quad \* *]
  }

  v(2em, weak: true)

  // Set paragraph justification and line breaks
  set par(
    justify: true,
    linebreaks: "optimized",
    leading: 1em,
    first-line-indent: paragraph_indent 
  )

  // Display the lecture notes' main content.
  body

  v(24pt, weak: true)
  
  // Display bibliography
  if bibliography_file != none {
     align(center)[#v(0.5em) * \* #sym.space.quad \* #sym.space.quad \* * #v(0.5em)]
     bibliography(bibliography_file, title: [References], style: bibstyle)
   }
}
