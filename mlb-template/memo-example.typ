#import "vendor/mlb-template/medialab-report.typ": *

#show: template.with(
  show-titlepage: false,
  show-author-info: false,
  show-abstract: false,
  show-toc: false,
  show-impressum: false,
  show-contact: false,
  draft: false,

  // Metadata
  language: "en",
  title: [Decision Memo],
  shorttitle: [Decision Memo],
  subtitle: none,
  authors: (
    (
      name: "First Last",
      role: none,
      organization: none,
      location: none,
      email: none,
    ),
  ),
  date: datetime.today(),
  document-number: [For decision],
  publisher: none,
  distribution: "All rights reserved",
  abstract: none,
  author-bio: none,
  bib: none,

  // Layout information
  titlepage-cover: none,
  contact-img: none,
  category: "Memo",
  tags: ("Decision", "Internal"),
)

#styledbox[
  *Recommendation:* Here would be the recommended decision in one or two sentences, including the main reason for it.
]

== Context and options

Here would be the minimum background needed to understand the decision. Keep this focused on what has changed and why a decision is needed now.

Compare two or three realistic options. For each, briefly state the main benefit and trade-off.

- *Option A:* Here would be a short description of the option, its benefit, and its trade-off.
- *Option B:* Here would be a short description of another option, its benefit, and its trade-off.

The recommendation should follow from the priorities that matter most. #note()[This is a helpful sidenote explaining a concept: decision criteria are the priorities used to compare options.]

== Next steps

+ Here would be the first action, its owner, and when it is due.
+ Here would be the next action, its owner, and when it is due.

*Decision:* Approve / revise / decline. Here would be a brief space for a condition or comment.
