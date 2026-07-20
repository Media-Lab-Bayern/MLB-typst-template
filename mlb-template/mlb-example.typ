#import "vendor/mlb-template/medialab-report.typ": *

#show: template.with(
  title: [A naïve discourse on automation],
  shorttitle: [],
  subtitle: [],
  authors: (
    (
      name: "Johannes Klingebiel",
      role: "Design and Research Manager",
      organization: "Media Lab Bayern, Munich",
      email: "johannes.klingebiel@gmail.com"
    ),
  ),
  cover: read("/assets/emily-irene-photo-co-2u39conwD1I-unsplash.jpg", encoding: none), // path to a cover/title image; if omitted, a placeholder frame is drawn (like the blog's title image space)
  contact-img: read("/assets/IMG_7382-klein.jpg", encoding: none), // path to an author image; if omitted, a placeholder frame is drawn (like the blog's author image space)
  category: "Lab Report",
  tags: ("Research","Artificial Intelligence"),
  document-number: [Version 1.1],
  abstract: [This is a summary of my MA thesis, \"Between Hype and Practice: AI as a professional object at German media events.\"

  The thesis argues that professional discourse around 'AI' at journalism conferences does not just passively describe technological change but actively shapes it. Through dominant modes of \"loud\" futuring—where AI is framed as inevitable, urgent, and transformative—these events narrow the space of possible futures and channel adoption along managerial and tech-deterministic lines. At the same time, more exploratory and critical perspectives remain marginalised or structurally excluded.],
  publisher: [],
  distribution: [Please, don't distribute this document without permission.],
  impressum: true,
  toc: true,
  footer-content: ([],[]),
  contact: false,
  draft: false,
)

= A naïve discourse on automation

This is a summary of my MA thesis, "Between Hype and Practice: AI as a professional object at German media events."#note[Because I promised anonymity to some of the people I interviewed, the thesis will remain unpublished.]

The thesis argues that professional discourse around 'AI' at journalism conferences does not just passively describe technological change but actively shapes it. Through dominant modes of "loud" futuring—where AI is framed as inevitable, urgent, and transformative—these events narrow the space of possible futures and channel adoption along managerial and tech-deterministic lines. At the same time, more exploratory and critical perspectives remain marginalised or structurally excluded.

Drawing on six months of fieldwork, interviews, and an analysis of conference programs, the study shows how certain expectations about AI are publicly performed, circulated, and stabilised. In doing so, it highlights how journalism's adaptation to AI is guided less by technical necessity than by a constrained and uneven discourse.

For questions or comments, please feel free to reach out.

#pagebreak()

= Technology adoption in journalism
Journalism is impossible to separate from its large arsenal of tools and technological systems, from printing presses and content management systems to the more humble pen and paper. In fact, journalism has a long history of evolving with and alongside new technologies—such as the telephone, air conditioning,#note[Yes, you've read that right!] the personal computer, and the internet.#note[The historian Will Mari has written extensively on this:
#linebreak()
#linebreak()
_Mari, W._ (2018). #link("https://doi.org/10.1080/1461670X.2016.1272432")[Technology in the Newsroom: Adoption of the telephone and the radio car from c. 1920 to 1960]. Journalism Studies, 19(9), 1366–1389.
#linebreak()
#linebreak()
_Mari, W._ (2021). #link("https://doi.org/10.1080/17512786.2021.1919544")[Staying Cool: The Impact of Air Conditioning on News Work and the Modern Newsroom]. Journalism Practice, 17(3), 391–410.
#linebreak()
#linebreak()
_Mari, W._ (2022). #link("https://doi.org/10.4324/9780429324871")[Newsrooms and the Disruption of the Internet: A Short History of Disruptive Technologies, 1990–2010] (1st edn). Routledge.]

Crucially, though, this was never a process of straightforward adoption in which journalists picked up a tool and started to use it, but a process of negotiation, in which every new piece was made to fit the logics and norms of the profession.

When email first became common, it seemed like an obvious tool for journalists. It was fast, convenient, and allowed reporters to reach sources instantly. At first glance, it looked like journalists could switch from phone calls to email without much change.

But in practice, things weren't so simple.

Many journalists worried that email made it easier for sources—especially PR representatives—to send carefully crafted, overly polished responses instead of speaking spontaneously. This raised concerns about authenticity and transparency. As a result, some reporters began to treat email responses differently from phone interviews, often following up with calls to confirm quotes or ask more probing questions.

Editors also stepped in. Some newsrooms created informal rules, like requiring reporters to verify important claims through direct conversation rather than relying solely on emailed statements. Others encouraged journalists to be cautious about quoting email responses word-for-word, since they might have been reviewed or edited by multiple people before being sent.

Over time, email became one tool among many, used strategically depending on the situation, rather than a complete replacement for older practices.

This is what is meant by "negotiation": the technology didn't simply change journalism on its own. Instead, journalists adjusted how they used the technology to align with their existing professional values, such as accuracy, independence, and credibility.

Despite this, journalists tend to view technological change as a deterministic force over which they have little say. I want to emphasise that this is a _myth_, that is empirically untenable.#note[This idea is generally referred to as _technological determinism_.
#linebreak()
#linebreak()
_Örnebring, H._ (2010). #link("https://doi.org/10.1177/1464884909350644")[Technology and journalism-as-labour: Historical perspectives]. Journalism, 11(1), 57–74.]

This same process of negotiating has been repeated in the past with automated systems, which also have a long history in journalism as they moved from the production side (printing) to the newsroom in the form of digital systems.

Newer systems such as the #link("https://www.latimes.com/la-me-quakebot-faq-20190517-story.html")[_LA Times_ _QuakeBot_] are built to automatically create stories, based on input data—in this case, earthquake strength and location. In more academic language, these systems are referred to as _anticipatory news infrastructures_, partly or fully automated systems pointed to where journalists expect news to occur.#note[_Ananny, M., & Finn, M._ (2020). Anticipatory news infrastructures: Seeing journalism's expectations of future publics in its sociotechnical systems. New Media & Society, 22(9), 1600–1618.] They are usually not allowed to actually publish stories but push drafts to a human editor for a final check. 

I have already mentioned the fact that technologies in journalism are made to fit the logics and norms of the profession. One crucial norm, I will return to, is the understanding of journalists as gatekeepers. Or to put it more bluntly: The central aspect of the journalistic identity is that journalist get to decide what becomes _news_.

#pagebreak()
= How to speak about the future
While 'AI' is not an entirely new technology, it is certainly one of the most evocative. The term sits somewhere between a field of computer science, a loose bundle of algorithmic methods, and science fiction. It lacks both a comprehensive definition and well-defined boundaries.

It may be that this blurriness, as well as the fact that its approaches are novel and powerful, which make 'AI' such a good catalyst for expectations about the future. What does 'AI' mean for journalism? While no one has a clear answer, it is a good way of filling conference stages.

Let's stay with the idea of expectations for a moment. Expectations, especially shared ones, are an important aspect of innovation work. For example, when people are convinced that artificial intelligence will transform journalism, that expectation can attract funding, encourage experimentation, shape research agendas, and influence how organisations prepare for the future—even before the technology has fully delivered on its promises. And the fact that they're doing this might, in turn, actually bring about that exact change. Expectations, in other words, work like a form of gravity, pulling people into common orbits. #note[_Borup, M., Brown, N., Konrad, K., & Van Lente, H._ (2006). #link("https://doi.org/10.1080/09537320600777002")[The sociology of expectations in science and technology]. Technology Analysis & Strategic Management, 18(3–4), 285–298.]

Expectations, of course, are not static but can change. Early expectations towards a technology's impact are often grandiose, while later ones—when the technology, its capabilities and flaws are known—will be more grounded and reasonable.#note[An innovation manager I talked to mentioned explicitly how much of his job was the management of expectations inside his newsrooms, mostly correcting over-inflated ones, while being on a limited budget.] _Hype_ is one way of talking about these earlier expectations, where people might deliberately oversell and overpromise. An important aspect of hype is that grandiose claims about the future are impossible to verify in the present. You can either believe them or not, based on often spotty circumstantial evidence. Hype then—returning to the gravity metaphor—can work like a black hole, bending reality around it. #note[_Pollock, N., & Williams, R._ (2026). #link("https://doi.org/10.1017/9781009644013")[After Hype: The Business of Taming the Digital Economy]. Cambridge University Press.]

=== Loud and quiet futuring on stage

With that out of the way, let's turn to how people at the conferences I visited discussed the future of 'AI' in journalism. Generally speaking, I observed two modes or registers of futuring: _loud_ and _quiet_.#note(dy:25em)[I leaned on the fieldwork of Andreas Hepp on the ways Bay Area 'AI' groups talked about the future.
#linebreak()
#linebreak()
_Hepp, A._ (2026). #link("https://doi.org/10.1177/01634437261454515")[The imaginative landscape of AI: Locating Silicon Valley's "quiet futuring"]. Media, Culture & Society.]

#table(
  // columns: 5,
  columns: (0.8fr, 1fr, 1fr, 1fr, 1fr),
  table.header(
    [*Term*], [*Audience*], [*Purpose*], [*Treatment of the Future*], [*Key Characteristics*],
  ),
  [*Loud futuring*],
  [Broad audience],
  [To perform expectations for alignment and legitimation],
  [The future is presented as settled and inevitable, regardless of the actual uncertainty involved],
  [Closer to a classic prediction than an open question; emphasizes certainty and commitment],

  [*Quiet futuring*],
  [Smaller community or in-group],
  [To exchange expectations (often through prototypes) for coordination and sense-making],
  [The future remains open, with uncertainty, friction, and failure treated as admissible parts of the process],
  [Emphasizes exploration, negotiation, and shared understanding],
)

_Loud_ futuring was especially prevalent on the large stages and on panels, while _quiet_ futuring generally happened in smaller settings or off-stage.

Executives and managers are generally inclined to present more big-picture, _loud_ visions. In an interview, one such speaker mentioned feeling pressured internally to present an image of success, rapid technological progress, and the importance of their work for the future. This way of speaking at conferences can also help set the agenda within organisations, as speakers can position themselves as authorities. The game here is setting and managing expectations publicly.

Similarly, it is possible to design spaces for more measured and _quiet_ futuring, such as at practitioner meetups and more closed gatherings.#note[A good example here is the "AI for Media" community of practice. While not completely free from overselling and _loud_ futures, both were less prominent on stage.]

Structurally, both modes of talking about the future were protected. Audience questions were either limited to the last couple of minutes of a session, if allowed at all, or pushed off-stage. Who gets to speak can set the tone without pushback.

This does not mean that critical voices were not present, but they were either in the minority at panels or isolated at their own sessions, prompting one attendee to remark that he feels there are "two completely different audiences" when it comes to AI.

Crucially, I want to point out here that the line between those audiences does not run between adoption of 'AI' vs non-adoption or resistance, but in how 'AI' was understood: as a managerial tool vs 'AI' as a socio-technical system with inherent power-relations.#note(dy:-17em)[For example, most of the speakers in the group discussed below did not show a deeper understanding of how AI systems are built and embedded in broader social and technical contexts.

Instead, their knowledge was mainly limited to the visible parts of these systems, such as user interfaces, model benchmarks, and programming frameworks, rather than the underlying infrastructures, data practices, economical, and organisational factors that shape how AI works.]

== Who gets to speak?

Across all conferences, stage access followed a clear hierarchy. Executives and technical experts dominated the programs, and a subset of these speakers reappeared with striking regularity: of the 489 speakers, 35 (7%) appeared more than 3 times.

#figure(
  image("/assets/Number of Stage Appearances Graph 2.png"),
  caption:[The number of appearances of speakers across all conferences.]
)

The existence of this vanguard group#note[_Hilgartner, S._ (2015). Capturing the Imaginary: Vanguards, visions and the synthetic biology revolution. In Science and Democracy. Routledge.] is not surprising. 'AI' remains a quick moving field, which makes it difficult for conference organisers to gauge expertise. Instead they have to rely on proxies, such as the already established prominence of people in the 'AI' discourse. It is ultimately (re-)produced by the curatorial practices of conference organisers.#note(dy:-1em)[It is worth noting, that the audience does not uncritically listen to this group. I had people describe some of these speakers to me as "dogmatic", even "NPCs" that leave their teams out dry to stand on stages.]

This group, then, has an outsized power to set expectations and define what the future of 'AI' in journalism could look like. Further, as interactions at conferences and interviews have shown, this group is tightly networked. This does not mean—and I don't want to imply this—that the group is deliberately presenting a certain version of the future. But it is clear that the people on stage share a surprisingly similar vision, narrowing the discourse around 'AI'. 

It is thus even more important to note who was absent from these stages:
- audiences themselves, present only symbolically as "users" or "target groups"
- journalists from the newsroom floor
- union or workers council representatives
- legal or regulatory voices
- HCI experts, UX designers, or practitioners with automation expertise from outside journalism.

This limited set of voices has consequences for how 'AI' is imagined and deployed.

== Sidenote: _AI for Media_ as a pioneer community

AI for Media, co-organised by the public broadcaster Bayerischer Rundfunk and the publishing house Ippen, deserves a brief note. The group was conceived as a community of practice, bringing together practitioners to share their experiences with 'AI' and present concrete projects.

It can be described as a pioneer community: a group united by the idea of being early movers, experimenting with practices they see as future-oriented. The community is shaped by a curatorial elite and acts as an intermediary between more speculative visions of the future and the broader field, helping to select and shape what becomes relevant.#note[_Hepp, A._ (2025). #link("https://doi.org/10.1177/14614448241253766")[Curators of digital futures: The life cycle of pioneer communities]. New Media & Society, 27(9).]

Compared to other settings, presentations at AI for Media were generally more _quiet_ in how they approached the future. Failures, uncertainty, and open discussion were encouraged.#note[This was partly the result of the gathering of what attendees understood as a well-meaning in-group, as well as formats such as the "Problem Pitch", in which challenges and work-in-progress projects were presented, asking the audience for help.] This does not mean that _loud_ futuring was absent. In particular, welcome talks—which linked each meetup topic to a broader vision of its future relevance—and presentations by founders often advanced more narrow and assertive visions of the future.
#pagebreak()
= The inevitability and urgency of 'AI'

If there's one thing almost every speaker could agree on, then that 'AI' is _inevitable_ and that its adoption is a matter of _urgency_. Speakers repeatedly invoked the present moment in exaggerated terms, describing it as a "big transformation," an "AI revolution," or an "age of disruption" in which the "speed of change is unrelenting." At its most dramatic, this rhetoric was framed as a question of journalism's very survival.

In some instances, the rhetoric took on epochal tones, as multiple speakers compared the present of 'AI' to past technological changes, such as the printing press, even arguing the media industry is facing the "greatest disruption since the Industrial Revolution."  Here, speakers borrowed the retrospective inevitability of past transformations, while side-stepping the inherent messiness of these upheavals when it came to their social, cultural, labour and economic changes. And, of course, the fact that these changes took decades, if not centuries, to take effect betrays their apparent urgency.#note[_Cook, S. D. N._ (1995). #link("https://doi.org/10.1007/978-94-015-8418-0_4")[The Structure of Technological Revolutions and the Gutenberg Myth]. In J. C. Pitt (Ed.), New Directions in the Philosophy of Technology (pp. 63–83). Springer Netherlands.]

Similarly, the critical management scholar Chris Grey has argued that the idea of an unprecedented, unrelenting moment of change is effectively self-fulfilling. Acting on the assumption of change will ultimately bring it about. Crucially, Grey continues, this notion is also strategic, as "a significant rhetorical device to provoke fear and provide a justification for particular organisational changes." #note[_Grey, C._ (2022). A very short, fairly interesting and reasonably cheap book about studying organizations (Fifth edition). SAGE.]

I think it is less important if these things will turn out to be true, as such expectations—as mentioned above—can turn into self-fulfilling prophecies. What is more interesting is what this rhetoric forecloses: the question of _whether_ the usage of 'AI' is strategically warranted; instead, the discourse is depoliticised and limited to the _shape_ of that adoption.

That is not to say that how 'AI' is created and deployed by big tech companies does not put material pressure on journalism's business model or professional territory. Still, speakers seldom took the time to consider the technology's power dimensions.

= 'AI' as a managerial technology

The question, then, is what speakers expected to gain from adopting 'AI'. As most speakers held management positions, it is not surprising that this coloured their vision.

'AI', in other words, was expected to increase journalism in _speed_ and _scale_. In particular, successful projects were narrated along those lines, with a focus on metrics such as article counts or production time.

_Speed_ is native to journalism. It is so deeply embedded in the profession that one of the core distinctions of a good newsroom is who broke a story first. In fact, if there's one criterion that determines whether journalists adopt a technology, it is whether it speeds up news production.#note[This is arguably the reason why journalists liked _Twitter_ so much, as it worked (once) like the cross of a newsticker and professional social network.] That 'AI' is used and argued for along this line is not surprising.

_Scale_, on the other hand, has a different lineage. As a core value, it is found in software engineering, especially in _Silicon Valley's_ startup economy.#note[_Pfotenhauer, S., Laurent, B., Papageorgiou, K., & Stilgoe,  and J._ (2022). #link("https://doi.org/10.1177/03063127211048945")[The politics of scaling]. Social Studies of Science, 52(1), 3–34.] Journalism has, over the last decade, imported software engineering and startup practices (e.g., design thinking, lean innovation),#note[_Meese, J., & Seipp, T._ (2025). #link("https://doi.org/10.1080/21670811.2025.2573074")[The Press as Platform: Institutional Isomorphism and the Strategic Adoption of Platform Logics]. Digital Journalism.] and thus also imported _scale_ as a value to build its organisations, business models, and technologies around.

'AI', in other words, is imagined and deployed in line with managerial and software engineering logics. While it was described as a disruption and a break with history, it was still imagined along the well-trodden historical paths of the industry.

It is thus worth noting what was seldom promised on stage: qualitatively better journalism. This is not to say that _speed_ and _scale_ cannot be indicators of quality or that there aren't challenges that align particularly well with these values, but that this kind of distinction was never made. Similarly, while speakers discussed _efficiency_ at length, _effectiveness_ remained an underexplored, but in my opinion, important avenue for 'AI' use.

= Humans in loops

What then is the journalist's new place in automated systems? Here, more than on any other topic, we can see the clearest negotiation around 'AI'. Multiple speakers and showcases ensured that a journalist remained the final authority over a piece to be published. A gatekeeper, either as a legal necessity, as a final check to ensure factual correctness, or to defend against potential internal headwind.

These configurations were generally described as _human-in-the-loop_. That said, the exact ways in which these loops functioned, what information people were expected to monitor at which speeds and with what kind of input, remain unexplored. Not one speaker provided details.#note[One way to interpret _human-in-the-loop_ then is to understand it as a _buzzword_. A discoursive signpost, which is not meant to be excavated for deeper meaning.
#linebreak()
#linebreak()
_Bensaude Vincent, B._ (2014). #link("https://doi.org/10.1177/0963662513515371")[The politics of buzzwords at the interface of technoscience, market and society: The case of 'public engagement in science']. Public Understanding of Science, 23(3), 238–253.]

Notably absent from these discussions was the term's critical lineage. Lisanne Bainbridge, writing on the "Ironies of Automation,"#note[_Bainbridge, L._ (1983). Ironies of automation. Automatica, 19(6), 775–779. https://doi.org/10.1016/0005-1098(83)90046-8] warned that placing humans in supervisory roles over increasingly automated systems risks deskilling and fatigue—the human is asked to monitor a system precisely when they are losing the expertise needed to detect its failures. Further, humans in such positions are often left with a bundle of unrelated tasks that a systems designer cannot automate but that they are expected to fulfil, thereby degrading a system's functionality. On stages, this warning went unmentioned: the loop was adopted as a reassuring label, stripped of the potential dangers of such configurations.

The product of journalism is, in other words, not just a piece of content, but also a journalist. Building systems to replace skills or certain decision-making steps could result in less capable, less observant, less autonomous journalists and—in the worst case—a diminished public sphere.
#note(dy:-5em,[
  #figure(
    image("/assets/loops.png"),
    caption:[The Euthanasia Coaster is a hypothetical steel roller coaster and euthanasia device designed with the sole purpose of killing its passengers.]
  )
])

The limited diversity of speakers and, especially, the absence of people with HCI or automation expertise, resulted in a very narrow understanding of how automated systems were to be built and monitored.

= The datafication and liquidation of journalism

It is thus not surprising that thinking with 'AI' leads to thinking about data, especially input data. While some use cases presented were interesting (such as helping with newsroom planning based on local council minutes), others were ethically fraught, such as automatically generating articles from police reports.#note[Giving PR departments of police units uncontrolled access to reporting is, in my opinion, way beyond what should be considered a reasonable use case, even though human police reporting is also not always up to journalism's own normative standards.] This datafication also extends inwards. The archive of news organisations is recast as a data pool that automated systems will draw from.

Some people imagine a future where AI doesn't just help write articles, but replaces the article itself—breaking journalism down into raw facts that get reassembled differently for each reader.

Here, articles were reimagined as being created out of  "information bits" or as "bundles of facts", which can be poured, like a liquid, into various personalised formats. #note[_Newman, N._ (2026). Journalism and technology trends and predictions 2026. Reuters Institute for the Study of Journalism. https://doi.org/10.60625/RISJ-PS1D-NP11] Here, then, gatekeeping (or any other form of editorial control) is completely delegated to the machine. It is, in my own words, a particularly _loud_ future.

The article, whatever its limitations, functions as a unit of authorship and thus accountability: someone wrote it, someone published it, and someone can be held responsible for its claims. When journalism is reconceived as a data pipeline, this accountability structure may become difficult to sustain.

Arguably, this kind of vision can also be read in the context of 'AI' as an inevitable, epochal shift. This expectation, then, necessitates a similar epochal reimagining of journalism itself. It should be noted that, here again, the unasked question on stage (and off stage) was _whether_ that future is desirable. Instead, where people argued for it, it was similarly seen as inevitable.

= A final note
The field of journalism has imported a substantial vocabulary and corresponding logics from software engineering and automation research. What it has not imported, at least on the stages I examined, is the critical lineage from which these terms originally arose. Whether this is by design or by accident is not a question my thesis can answer, and I do not think it needs to be answered for my argument to hold, as the effect is the same either way.

An industry discourse that adopts this vocabulary while remaining structurally isolated from automation's own critical literature in HCI and UX research is at risk of relearning, the hard way, lessons—about deskilling, about misplaced oversight, about the "ironies" Bainbridge identified forty years ago—that are already established elsewhere. Critical, politically literate accounts of 'AI' were staged but contained from the managerial mainstream, further impoverishing the discourse.

Journalism runs the risk, supported rather than checked by the events meant to inform its adaptation to 'AI', of bending itself around narrow, exaggerated, tech-deterministic expectations of what that adaptation requires. Bainbridge's ironies were not a one-time warning but described a recurring pattern: pursuing efficiency, speed, and scale through automation quietly produces new and less familiar modes of failure.

Journalism has, at present, few structural safeguards against repeating that pattern, not because its practitioners are uncritical but because the events shaping its future currently offer few opportunities for that criticism to reach the stage at all.