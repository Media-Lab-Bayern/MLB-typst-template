# README – Erstellung von Reports mit unserem Template

## Überblick

Dieses Projekt stellt ein einheitliches Template zur Verfügung, mit dem wir Reports strukturiert und visuell konsistent erstellen können. Ziel ist es, Inhalte klar, professionell und wiedererkennbar aufzubereiten – unabhängig davon, wer den Report erstellt.

Das Template basiert auf **Typst**, einem modernen Tool zur Dokumentenerstellung (ähnlich wie Word oder LaTeX, aber einfacher und flexibler).

Ein Beispiel findest du hier: [mlb-example.pdf](mlb-template/mlb-example.pdf)

## Für wen ist dieses Dokument gedacht?

Dieses README richtet sich an alle im Team – auch ohne technischen Hintergrund.
Du musst **keine Programmierkenntnisse** haben, um damit zu arbeiten.

## Kurz gesagt

Du musst nur:

1. Metadaten ausfüllen
2. Inhalte schreiben
3. Gestaltungselemente (Boxen, Zitate, Randnotizen) gezielt einsetzen
4. PDF exportieren

Alles andere übernimmt das Template für dich.

## Überblick über Projektstruktur

```
.
├── assets
│   ├── ...   // Ordner für Bilder oder Grafiken
│   ├── logos
│   │   └── ...   // Logos für den Report
│   └── loops.png
├── mlb-template   // Hauptordner für das Report-Template 
│   ├── mlb-example.typ // Beispiel-Report
│   ├── references.bib // Beispiel Literaturverzeichnis
│   ├── short_ref.csl
│   └── vendor
│       └── mlb-template
│           └── ...   // Template-Dateien
└── readme.md
```

## Grundprinzip

Ein Report besteht aus zwei Teilen:

1. **Struktur (Template)** → ist bereits vorgegeben
2. **Inhalt (dein Text)** → wird von dir eingefügt

Du arbeitest also hauptsächlich mit Text und ein paar einfachen Einstellungen.

## So erstellst du einen Report

### 1. Datei öffnen

Öffne die `.typ`-Datei (z. B. `medialab-report.typ`) in einem geeigneten Editor
(z. B. Visual Studio Code mit der Erweiterung für tinymist oder Typst Web App).

### 2. Metadaten ausfüllen

Am Anfang der Datei findest du einen Bereich wie diesen:

```typst
#template(
  title: [Report Title],
  subtitle: none,
  authors: (
    (
      name: "First Last",
      role: none,
      organization: none,
    ),
  ),
  date: datetime.today(),
  abstract: none,
  ...
)
```

Hier trägst du die wichtigsten Informationen ein:

* **title** → Titel des Reports
* **subtitle** → optionaler Untertitel
* **authors** → Name(n) der Autor:innen
* **date** → Datum (kann meist so bleiben)
* **abstract** → kurze Zusammenfassung (optional, aber empfohlen)

Weitere optionale Angaben für `#template(...)`:

* **category** → Kicker-Zeile über dem Titel (z. B. "Media Trends")
* **cover** → Pfad zu einem Titelbild
* **tags** → Liste von Schlagworten, die als kleine Pillen angezeigt werden
* **document-number** → Kennnummer, die oben rechts auf jeder Seite erscheint
* **draft** → `true`/`false`, blendet einen "Draft"-Wasserzeichen und Hinweis ein
* **distribution** → Vertraulichkeitshinweis in der Fußzeile (z. B. "Intern")
* **toc** → `true`, um automatisch ein Inhaltsverzeichnis zu erzeugen
* **contact** → `true`, um am Ende einen Kontakt-Kasten mit Foto einzublenden (benötigt `contact-img`)
* **author-bio** → Dictionary `(name: "...", bio: "...", image: none)` für eine "Artikel geschrieben von"-Box am Ende
* **bib** → Literaturverzeichnis (siehe `references.bib`)
* **impressum** → `true`/`false`, blendet die Impressum-Seite am Ende ein/aus

### 3. Inhalte schreiben

Unterhalb des Templates kommt dein eigentlicher Inhalt.

Du kannst einfache Überschriften und Text verwenden:

```typst
= Kapitel 1

Das ist ein Absatz mit Inhalt.

== Unterkapitel

Weitere Inhalte hier.
```

* `=` = Hauptkapitel
* `==` = Unterkapitel
* `===` = Abschnitt
* `====` = Schritt-/Listen-Unterüberschrift (z. B. "Die richtige Plattform wählen")

### 4. Gestaltungselemente nutzen

Das Template bringt eine Reihe fertiger Bausteine mit, die du direkt im Text verwenden kannst. Alle Beispiele kannst du 1:1 in deine `.typ`-Datei kopieren und anpassen.

#### Hervorgehobene Box – `styledbox`

Für Key Insights, Fazits oder wichtige Zahlen, die zusammengefasst im Fließtext hervorstechen sollen.

```typst
#styledbox[
  Wichtige Erkenntnis oder Kernaussage
]
```

Optional lässt sich die Hintergrundfarbe anpassen (Standard ist ein helles Türkis):

```typst
#styledbox(color: mlb-calming-blue.lighten(80%))[
  Wichtige Erkenntnis oder Kernaussage
]
```

#### Kennzahlen-Kachel – `outcome`

Zeigt eine einzelne Kennzahl mit großer Zahl an, z. B. für Studienergebnisse ("87 % der Nutzer:innen …"). Ohne `number` zeigt die Kachel stattdessen nur einen kleinen Akzentbalken über dem Text – nützlich für kurze Stichpunkte im gleichen Kachel-Look.

```typst
#outcome(number: "87", suffix: "%")[
  der Befragten nutzen die App täglich
]

#outcome[
  Kurzer Stichpunkt ohne Kennzahl
]
```

#### Kennzahlen-Raster – `outcomes-grid`

Ordnet mehrere `outcome`-Kacheln nebeneinander in gleich hohen Spalten an – ideal für eine Übersicht mehrerer Ergebnisse auf einen Blick.

```typst
#outcomes-grid(
  columns: 2,
  h => outcome(height: h, number: "87", suffix: "%")[
    der Befragten nutzen die App täglich
  ],
  h => outcome(height: h, number: "3.2", suffix: "x")[
    höhere Reichweite im Vergleich zum Vorjahr
  ],
)
```

Jedes Element wird als kleine Funktion `h => outcome(height: h, ...)` übergeben – das sorgt dafür, dass alle Kacheln automatisch gleich hoch werden, egal wie viel Text sie enthalten. Für drei oder vier Kacheln nebeneinander einfach `columns: 3` bzw. `columns: 4` setzen und entsprechend viele Einträge ergänzen.

#### Randnotiz – `note`

Fügt eine nummerierte Fußnote im Text ein, deren Erläuterung am rechten Seitenrand erscheint (statt am Seitenende wie eine klassische Fußnote).

```typst
Ein Satz mit einer Randnotiz#note[
  Hier steht die zusätzliche Erklärung, die am Rand angezeigt wird.
].
```

Mit `numbered: false` erscheint die Notiz ohne Nummer im Text.

#### Randnotiz mit Quellenangabe – `notecite`

Wie `note`, aber verweist zusätzlich auf einen Eintrag im Literaturverzeichnis (`references.bib`). Funktioniert nur, wenn dem Report ein `bib:` übergeben wurde.

```typst
Eine Aussage, die belegt werden soll#notecite(<quelle-key>).
```

#### Erklärkasten am Rand – `explainer`

Ein grauer Kasten am rechten Seitenrand, z. B. um einen Fachbegriff zu erklären, ohne den Lesefluss im Haupttext zu unterbrechen.

```typst
#explainer[
  *Fachbegriff:* Kurze Erklärung, was das bedeutet.
]
```

#### Zitat im Fließtext – `quote`

Für ein Zitat, das wie normaler Text im Textfluss eingebettet ist, optional mit Quellenangabe.

```typst
#quote(attribution: "Max Mustermann, CEO")[
  Das ist ein Zitat im Fließtext.
]
```

#### Zitat am Rand – `marginquote`

Größeres, auffälligeres Zitat, das am rechten Seitenrand angezeigt wird – eignet sich für prägnante Aussagen, die zusätzlich zum Haupttext hervorgehoben werden sollen.

```typst
#marginquote(attribution: "Max Mustermann")[
  Eine prägnante Aussage am Rand.
]
```

#### Herausgestelltes Zitat – `pullquote`

Ein breites, fettgedrucktes Zitat über die volle Textbreite – etwas dezenter als `largequote`, aber deutlich hervorgehoben.

```typst
#pullquote(attribution: "Max Mustermann")[
  Ein wichtiges Zitat, das im Layout auffällt.
]
```

#### Großes Zitat – `largequote`

Die größte und auffälligste Zitat-Variante, in der Überschriften-Schriftart gesetzt – für besonders zentrale Aussagen, z. B. am Anfang eines Kapitels.

```typst
#largequote(attribution: "Max Mustermann")[
  Eine zentrale Aussage, die den Ton des Kapitels setzt.
]
```

> **Hinweis:** Alle Rand-Elemente (`note`, `notecite`, `explainer`, `marginquote`) benötigen Platz am rechten Seitenrand. Sie können manuell mit `(dy: WERT)` (z. B. `px`, `cm`, `em`, `pt`) verschoben werden, falls sie sich mit anderen Elementen überschneiden.

### 5. Inhaltsverzeichnis (optional)

Wenn `toc: true` gesetzt ist, wird automatisch ein Inhaltsverzeichnis aus deinen Überschriften erstellt.

### 6. Export

Am Ende exportierst du den Report als PDF.

Je nach Tool:

* „Export“ oder „Compile“ klicken
* oder entsprechenden Befehl ausführen

## Design & Stil

Das Template enthält bereits:

* Schriftarten
* Farben (z. B. Türkis, Blau)
* Layout (Abstände, Breiten)

Bitte **nicht eigenständig verändern**, damit alle Reports einheitlich bleiben.

## Häufige Fragen

### Muss ich programmieren können?

Nein. Du arbeitest hauptsächlich mit Text und einfachen Markierungen.

### Was mache ich, wenn etwas nicht funktioniert?

* Prüfe zuerst, ob Klammern `()` und `[]` korrekt gesetzt sind
* Frage im Team nach Unterstützung

### Kann ich das Layout ändern?

Grundsätzlich nein – das Template sorgt für Konsistenz.
Falls etwas fehlt, bitte im Team abstimmen.

## Ansprechpartner

Bei Fragen oder Problemen wende dich an:

* Johannes Klingebiel
