#import "vendor/mlb-template/medialab-report.typ": *

#show: template.with(
  show-titlepage: false,
  show-author-info: true,
  show-abstract: true,
  show-toc: false,
  show-impressum: false,
  show-contact: true,
  draft: false,

  // Metadata
  language: "en",
  title: [Project Proposal],
  shorttitle: [Project Proposal],
  subtitle: none,
  authors: (
    (
      name: "Firstname Lastname",
      role: "Author",
      organization: "Media Lab Bayern",
      location: "München",
      email: "firstname@media-lab.de",
    ),
  ),
  date: datetime.today(),
  document-number: [Draft],
  publisher: none,
  distribution: "Confidential",
  abstract: [This project proposal outlines the key aspects of the proposed initiative, including its objectives, delivery plan, and the decisions required for moving forward.],
  author-bio: none,
  bib: none,

  // Layout information
  titlepage-cover: none,
  contact-img: read("/assets/author.jpg", encoding: none),
  category: "Project proposal",
  tags: ("Planning", "Decision"),
)

Here would be a short description of the opportunity, who it affects, and what the proposed project would change.

#styledbox[
  In this box you'd find additional information about key assumptions, dependencies, or related work.
]

== Project plan

+ *Prepare:* Here would be a description of the initial research or planning, with an owner and timeframe.
+ *Deliver:* Here would be a description of the main project work and its key milestone.
+ *Evaluate:* Here would be a description of how and when the team would review the results.

== Tables

Summarize the schedule and responsibilities in a table. Replace the placeholders with the project's actual phases, owners, dates, and deliverables.

#table(
  columns: (1fr, 1fr, 1fr, 1.6fr),
  table.header(
    [*Phase*],
    [*Owner*],
    [*Timing*],
    [*Milestone / deliverable*],
  ),
  [Prepare],
  [Name / team],
  [Start–date],
  [Here would be the preparation milestone],
  [Deliver],
  [Name / team],
  [Date range],
  [Here would be the main project output],
  [Evaluate],
  [Name / team],
  [End–date],
  [Here would be the review or evaluation],
)

== KPIs

Use the KPI boxes for numeric targets. Replace the placeholder values and descriptions with the measures that fit this project.

#v(10pt) // Adds vertical space before the KPI section

#outcomes-grid(
  columns: 2,
  h => outcome(height: h, number: "25", suffix: "%")[
    Here would be the target percentage for a project KPI and how it would be measured.
  ],
  h => outcome(height: h, number: "4", suffix: " weeks")[
    Here would be the target duration for a project KPI and how it would be measured.
  ],
)

*Decision:* Here would be the specific approval or resources requested, and the date a decision is needed.

#v(1fr) // Moves contact information to the bottom of the page
