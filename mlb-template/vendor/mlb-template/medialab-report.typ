#import "drafting.typ": *

// == LAYOUT ==
#let margin-right = 8cm

// == BRAND ==

#let wideblock(content) = block(width:100%+2.5in,content)
#let styledbox(color, content) = box(
  width: 100%,
  fill: color,
  radius: 8pt,
  inset: (x: 16pt, y: 14pt),
  content
)

#let sans-fonts = (
  "IBM Plex Sans",
)

#let heading-fonts = (
  "PP Formula",
)

// Colors
#let mlb-turquoise = rgb("#007083")
#let mlb-marin = rgb("#04313E")
#let mlb-calming-blue = rgb("#90B4C2")
#let mlb-yellow = rgb("#FAFD6F")

// == TEMPLATE ==
#let template(
  language: none,
  title: [Report Title],
  shorttitle: none,
  subtitle: none,
  cover: none,
  category: none, // e.g. "Media Trends" — shown as the kicker line, like the blog's topic eyebrow
  authors: (
    (
      name: "First Last",
      role: none,
      organization: none,
      location: none,
      email: none
    ),
  ),
  contact-img: none, // path to an author image; if omitted, a placeholder frame is drawn (like the blog's author image space)
  tags: none, // e.g. ("Journalismus", "New Work", "Strategie") — shown as small outlined pills, like the blog's topic tags
  date: datetime.today(),
  document-number: none,
  draft: none,
  distribution: none,
  abstract: none,
  publisher: none,
  contact: true,
  toc: none,
  author-bio: none, // dict: (name: "...", bio: "...", image: none) — closing "Artikel geschrieben von" note; image is optional, a rounded placeholder is drawn if omitted
  impressum: true,
  bib: none,
  doc
) = {
  // Document metadata
  let first_author = if type(authors) == array {
    authors.first()
  } else {
    authors
  }

  set document(
    title: title,
    author: if type(first_author) == dictionary {
      first_author.name
    } else {
      first_author
    },
  )

  // Headings
  
  show heading: set text(hyphenate: false)

  // H1
  show heading.where(level: 1): it => {
    set text(size: 1.5em, weight: "bold", fill: mlb-marin)
    set par(leading: 0.5em)
    block(above: 2em, below: 1.5em, it.body)
  }

  // H2
  show heading.where(level: 2): it => {
    set text(size: 1.3em, weight: "bold", fill: mlb-marin)
    v(2.4em, weak: false)
    block(
      above: 1em,
      below: 1em,
      it.body,
    )
  }

  // H3 — Subsections ("So sind die Plattformen miteinander verbunden")
  show heading.where(level: 3): it => {
    set text(size: 1.1em, weight: "bold", fill: black)
    block(above: 1.5em, below: 1em, it.body)
  }

  // H4 — Step/list-style sub-headers ("Die richtige Plattform wählen")
  show heading.where(level: 4): it => {
    set text(size: 1em, weight: "bold", fill: mlb-turquoise)
    block(above: 1em, below: 0.4em, it.body)
  }

  // Tables and figures
  show figure: set figure.caption(separator: [.#h(0.5em)])
  show figure.caption: set align(left)
  show figure.caption: set text(font: sans-fonts, size: 0.75em, fill: mlb-turquoise)

  show figure.where(kind: table): set figure.caption(position: top)
  show figure.where(kind: table): set figure(numbering: "I")
  show figure.where(kind: table): it => wideblock(it)
  show table: it => wideblock(it)

  show figure.where(kind: image): set figure(supplement: [Figure], numbering: "1")

  show figure.where(kind: raw): set figure.caption(position: top)
  show figure.where(kind: raw): set figure(supplement: [Code], numbering: "1")
  show raw: set text(font: sans-fonts, size: 10pt)

  // Table styling: horizontal rules only, brand-neutral gray
  set table(
    stroke: (x, y) => (
      top: if y == 0 { 0pt + gray } else { none },
      bottom: 0.5pt + gray,
    ),
    inset: (x: 8pt, y: 6pt),
    align: left + top
  )

  // Table typography styling
  show table.cell.where(y: 0): set text(weight: "bold", size: 0.8em)
  show table.cell.where(y: 0): upper
  show table.cell: set par(justify: false)
  show table.cell: set text(font: sans-fonts, size: 0.75em)

  // Equations
  set math.equation(numbering: "(1)")
  show math.equation: set block(spacing: 0.65em)

  show link: underline

  // Lists
  set enum(
    indent: 1em,
    body-indent: 1em,
  )
  show enum: set par(justify: false)
  set list(
    indent: 1em,
    body-indent: 1em,
  )
  show list: set par(justify: false)

  // Page setup
  set page(
    paper: "a4",
    columns: 1,
    margin: (
      left: 2cm,
      right: margin-right,
      top: 3cm,
      bottom: 2.5cm,
    ),
    header: context {
      if counter(page).get().first() > 1 {
        box(
        width: 100% + margin-right - 2cm,
        grid(
          columns: (1fr, auto),
          align: (left + top, right + top),
          [
            #text(
              fill: mlb-turquoise,
              font: sans-fonts,
              size: 8pt,
              tracking: 0.02em,
            )[
              #if document-number != none { 
                box(
                  stroke: 0.6pt + mlb-turquoise,
                  inset: (x: 9pt, y: 4pt),
                  radius: 999pt,
                  text(size: 0.75em, upper(document-number)),
                ) 
                }
              #h(1em)
              #if shorttitle != none { upper(shorttitle) } else { upper(title) }
              #if publisher != none {
                linebreak()
                upper(publisher)
              }
            ],
          ],
          image(
            "../../../assets/logos/MLB-1-line.svg",
            width: 4cm,
            fit: "contain",
          ),
        ),
        )
      } else {
        image(
            "../../../assets/logos/MLB-1-line.svg",
            width: 6cm,
            fit: "contain",
          )
      }
    },
    footer: context {
      let pagenum = counter(page).get().first()
      box(
        width: 100% + margin-right - 2cm,
        {
          set text(fill: mlb-turquoise, font: sans-fonts, size: 8pt)
          if pagenum == 1 {
            if draft [
              Draft document, #date.display().
              #linebreak()
            ]
            if distribution != none [
              #strong(distribution)
            ]
          } else {
            grid(
              columns: (1fr, auto),
              align: (left + horizon, right + horizon),
              {
                if draft [
                  Draft document, #date.display().
                  #linebreak()
                ]
                if distribution != none [
                  #strong(distribution)
                ]
              },
              box(
                radius: 999pt,
                inset: (x: 6pt, y: 3pt),
                stroke: (paint: mlb-turquoise, thickness: 0.6pt),
                text(fill: mlb-turquoise, weight: "bold", size: 7.5pt, [#pagenum])
              )
            )
          }
        }
      )
    },
    background: context {
      let pagenum = counter(page).get().first()
      //if pagenum == 1 {
       // rect(width: 100%, height: 100%, fill: mlb-marin)
      //}
      if draft {
        rotate(45deg, text(font: sans-fonts, size: 200pt, fill: rgb("FFEEEE"))[DRAFT])
      }
    }
  )

  // Set default text and paragraph styles for the body of the report
  set text(
    font: sans-fonts,
    style: "normal",
    weight: "regular",
    hyphenate: true,
    size: 11pt,
    lang: language,
  )
  set par(
    justify: false,
    leading: 0.65em,
    first-line-indent: 1em
  )
  show par: set par(
    spacing: 0.65em
  )

  // === Frontmatter ===

  let titleblock(title: none, subtitle: none) = wideblock({
      set text(
        hyphenate: false,
        size: 40pt,
        font: heading-fonts,
        weight: "regular"
      )
      set par(
        justify: false,
        leading: 0.2em,
        first-line-indent: 0pt
      )
      title
      if subtitle != none {
        set text(size: 11pt, weight: "regular", font: sans-fonts)
        v(-0.5em)
        subtitle
      }
    })

  let tagsblock(tags) = wideblock({
    if tags.len() > 0 {
      v(0.8em)
      set text(font: sans-fonts, size: 8pt, fill: mlb-turquoise, tracking: 0.03em)
      for (i, tag) in tags.enumerate() {
        box(
          stroke: 0.6pt + mlb-turquoise,
          inset: (x: 9pt, y: 4pt),
          radius: 999pt,
          upper(tag)
        )
        if i < tags.len() - 1 {h(4pt)}
      }
    }
  })

  // Cover image — a wide, rounded rectangle at the top of the report
  let coverimageblock(cover) = wideblock({
    v(0.5em)
    let frame-height = 2.2in
    if cover != none {
      box(
        width: 100%,
        height: frame-height,
        radius: 8pt,
        clip: true,
        image(cover, width: 100%, height: frame-height, fit: "cover")
      )
    } else {
    }
  })
  // Info block
  let infoblock(category, date, document-number) = wideblock({
    if category != none or date != none {
          h(16pt)
          text(
            font: sans-fonts,
            size: 0.6em,
            fill: mlb-turquoise,
            tracking: 0.05em,
            {
              if category != none {upper(category)}
              if category != none and date != none {[ #sym.dot.c ]}
              if date != none {date.display("[day].[month].[year]")}
              if document-number != none {
                [ #sym.dot.c ]
                upper(document-number)
              }
            }
          )
        }
      })

  // Author blocks
  let authorblock(authors, columns) = wideblock({
    set text(font: sans-fonts, size: 0.8em)
    v(0em)
    box(
      fill: mlb-turquoise.lighten(90%),
      radius: 8pt,
      inset: (x: 16pt, y: 14pt),
      {
        if authors.len() == 1 {
          text(size: 0.8em, weight: "bold", fill: mlb-turquoise, tracking: 0.05em, upper[Author])
        } else {
          text(size: 0.8em, weight: "bold", fill: mlb-turquoise, tracking: 0.05em, upper[Authors])
        }
        v(0.8em)
        for i in range(calc.ceil(authors.len() / columns)) {
          let end = calc.min((i + 1) * columns, authors.len())
          let is-last = authors.len() == end
          let slice = authors.slice(i * columns, end)
          grid(
            columns: slice.len() * (1fr,),
            gutter: 1em,
            align: (top, top),
            ..slice.map(author => align(left, {
              strong(author.name)
              if "role" in author [
                \ #author.role
              ]
              if "organization" in author [
                \ #author.organization
              ]
              if "email" in author [
                \ #author.email
              ]
              v(0.5em, weak: false)
            }))
          )
          if not is-last {
            v(16pt, weak: true)
          }
        }
      }
    )
  })

  // Closing contact field — always appended at the very end of the
  // report (after references, if any), showing each author's name
  // and how to reach them.
  
  let contactblock(authors) = wideblock({
  let authors-list = if type(authors) == array {authors} else {(authors,)}
  let author = authors-list.first()
  v(2em, weak: true)
  set par(first-line-indent: 0em)
  box(
    width: 90%,
    fill: mlb-yellow,
    radius: 8pt,
    inset: (x: 16pt, y: 14pt),
    {
      text(font: sans-fonts, size: 8pt, fill: mlb-marin, tracking: 0.05em, strong(upper[Kontakt]))
      v(0.6em)
      grid(
        columns: (100pt, 1fr),
        gutter: 2em,
        box(
          width: 100pt,
          height: 100pt,
          clip: true,
          radius: 4pt,
          image(contact-img, width: 100pt, height: 100pt, fit: "cover")
        ),
        {
          text(font: sans-fonts, size: 1.2em, weight: "bold", author.name)
          if "role" in author and author.at("role") != none [
            #linebreak()
            #v(0.4em)
            #text(font: sans-fonts, size: 1em, author.role)
          ]
          if "email" in author and author.at("email") != none [
            #linebreak()
            #v(0.4em)
            #text(font: sans-fonts, size: 1em, author.email)
          ]
        },
      )
    }
  )
})

  let abstractblock(abstract) = styledbox(mlb-turquoise.lighten(90%), {
      set text(font: sans-fonts)
      set par(first-line-indent: 0em)
      text(size: 0.64em, weight: "bold", fill: mlb-turquoise, tracking: 0.05em, upper[Abstract])
      v(0.8em)
      abstract
    })

  // TOC
  let tocblock() = wideblock(context {
    set text(font: sans-fonts, size: 0.8em)
    
    show link: it => it.body

    text(size: 0.8em, weight: "bold", fill: mlb-turquoise, tracking: 0.05em, upper[Inhaltsverzeichnis])
    v(0.8em)

    let sections = query(heading.where(level: 1))
    for (i, it) in sections.enumerate() {
      let pagenum = counter(page).at(it.location()).first()
      link(it.location(), grid(
        columns: (auto, 1fr, auto),
        column-gutter: 0.4em,
        align: (left + horizon, horizon, right + horizon),
        it.body,
        box(width: 1fr, repeat(text(fill: luma(180), size: 8pt)[.])),
        text(fill: mlb-turquoise, str(pagenum))
      ))
      if i < sections.len() - 1 {
      }
    }
    v(3em, weak: true)
  })

  titleblock(title: title, subtitle: subtitle)
  tagsblock(tags)
  coverimageblock(cover)
  v(1.5em, weak: true)
  if abstract != none {
    grid(
      columns: (0.5fr, 0.1fr),
      gutter: 1em,
      align: (top, top),
      {
        abstractblock(abstract)
      },
      {
        box(width: 100%, {
          authorblock(authors, 1)
          infoblock(category, date, document-number)
        })
      }
    )
  } else {
    authorblock(authors, 2)
    infoblock(category, date, document-number)
  }
  pagebreak()
  if toc {tocblock()}

  doc

  // ------------------------------------------------------------
  // Author bio — closing note mirroring the blog's "Artikel
  // geschrieben von" section, including a space for the author's
  // portrait (rounded, like the site's circular avatar). If no
  // image is supplied, a rounded placeholder is drawn instead.
  // ------------------------------------------------------------
  if author-bio != none {
    wideblock({
      v(2em, weak: true)
      line(length: 100%, stroke: 0.4pt + mlb-turquoise)
      v(1em)
      let avatar-size = 0.85in
      let avatar-image = author-bio.at("image", default: none)
      grid(
        columns: (avatar-size, 1fr),
        gutter: 12pt,
        align: (top, top),
        if avatar-image != none {
          box(
            width: avatar-size, height: avatar-size,
            radius: 999pt, clip: true,
            image(avatar-image, width: avatar-size, height: avatar-size, fit: "cover")
          )
        } else {
          box(
            width: avatar-size, height: avatar-size,
            radius: 999pt,
            stroke: (paint: mlb-turquoise, thickness: 0.6pt, dash: "dashed"),
            fill: luma(250),
            align(center + horizon, text(
              font: sans-fonts, size: 7pt, style: "italic", fill: luma(150),
              [Foto]
            ))
          )
        },
        {
          text(font: sans-fonts, size: 8pt, fill: mlb-turquoise, tracking: 0.05em, upper[Artikel geschrieben von])
          v(0.5em)
          text(font: sans-fonts, size: 11pt, weight: "bold", author-bio.name)
          v(0.4em)
          text(font: sans-fonts, size: 10pt, emph(author-bio.bio))
        }
      )
    })
  }

  show bibliography: set text(font: sans-fonts)
  show bibliography: set par(justify: false)
  set bibliography(title: none)
  if bib != none {
    heading(level: 1, [References])
    bib
  }
  if contact {
  contactblock(authors)
  }
  if impressum {
  v(1em)
  styledbox(mlb-turquoise.lighten(95%),
    {
    set text(fill: mlb-marin.lighten(25%), size: 0.8em)
    set par(first-line-indent: 0em)
    [==== Impressum]
    linebreak()
    [*Medien.Bayern GmbH* \
    Balanstr. 73 / Haus 11 \
    81541 München \
    himedia-lab.de
    \
    \
    © MEDIA LAB BAYERN ] 
    date.display("[year]")
    linebreak()
    linebreak()
    [V.I.S.D.P.: Annette Kümmel.]
    linebreak()
    linebreak()
    [Das Media Lab Bayern eine ist Initiavite der Medien.Bayern GmbH und wird gefördert durch die Bayerische Landeszentrale für neue Medien und die Bayerische Staatskanzlei.]
    }
  )
  }
}

/* Sidenotes
Display content in the right margin with the `note()` function.
Takes 2 optional keyword and 1 required argument:
  - `dy: length | auto` Adjust the vertical position (default `auto`, which lets
    `drafting`'s built-in collision avoidance stack consecutive notes instead of
    overlapping them). Pass an explicit length only when you want to hand-tune a
    single note's position.
  - `numbered: bool` Display a footnote-style number in text and in the note (default `true`).
  - `content: content` The content of the note.
*/
#let notecounter = counter("notecounter")

#let sidenote-lift = -2em
#let sidenote-color = luma(100)
// Sidenote markers reuse the single brand accent instead of the
// original template's separate red, keeping the palette to one
// restrained accent color throughout the document.
#let sidenote-number-color = mlb-turquoise

#let note(dy:auto, numbered:true, content) = {
  if numbered {
    notecounter.step()
    text(weight:"regular",fill:sidenote-number-color,super(context notecounter.display()))
  }
  text(size:0.75em,font: sans-fonts,fill:sidenote-color,{
    show emph: it => smallcaps(text(style: "normal", it.body))
    box(move(dy: sidenote-lift, margin-note(if numbered {
      text(weight:"regular",font:sans-fonts,size:0.75em,fill:sidenote-number-color,{
        context notecounter.display()
        h(1em, weak: true)
      })
      content
    } else {
      content}
      ,dy:dy,
      stroke: none,
      side: right,
      margin-right: margin-right - 2cm,
      margin-left: margin-right - 4cm,
      page-width: margin-right + 2cm,
      page-offset-x: 0in,
    )))
  })
  }

/* Sidenote citation
Display a short citation in the right margin with the `notecite()` function.
Takes 2 optional keyword and 1 required argument.
  - `dy: length | auto` Adjust the vertical position (default `auto`, same
    stacking behavior as `note()` above).
  - `supplement: content` Supplement for the in-text citation (e.g., `p.~7`), (default `none`).
  - `key: label` The bibliography entry's label.

CAUTION: if no bibliography is defined, then this function will not display anything.
*/
#let notecite(dy:auto,supplement:none,key) = context {
  let elems = query(bibliography)
  if elems.len() > 0 {
    cite(key,supplement:supplement,style:"ieee")
    note(
      cite(key,form: "full",style: "short_ref.csl"),
      dy:dy,numbered:false
    )
  }
}
