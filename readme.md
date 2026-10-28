# README – Erstellung von Reports mit unserem Template

## Überblick

Dieses Projekt stellt ein einheitliches Template zur Verfügung, mit dem wir Reports strukturiert und visuell konsistent erstellen können. Ziel ist es, Inhalte klar, professionell und wiedererkennbar aufzubereiten – unabhängig davon, wer den Report erstellt.

Das Template basiert auf **Typst**, einem modernen Tool zur Dokumentenerstellung (ähnlich wie Word oder LaTeX, aber einfacher und flexibler).

Beispiele findest du hier:

* [Case Study (PDF)](mlb-template/case-study-example.pdf)
* [Projektvorschlag (PDF)](mlb-template/project-proposal-example.pdf) · [Typst-Quelldatei](mlb-template/project-proposal-example.typ)
* [Memo / Entscheidungsvorlage (PDF)](mlb-template/memo-example.pdf) · [Typst-Quelldatei](mlb-template/memo-example.typ)

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

```text
.
├── assets
│   ├── ...   // Ordner für Bilder oder Grafiken
│   ├── logos
│   │   └── ...   // Logos für den Report
│   └── loops.png
├── mlb-template   // Hauptordner für das Report-Template 
│   ├── mlb-example.typ // Beispiel-Report
│   ├── references.bib // Beispiel Literaturverzeichnis
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

### 2. Template-Parameter anpassen

Die Parameter sind hier in der praktischen Reihenfolge der `mlb-example.typ` organisiert. Nicht benötigte optionale Angaben kannst du auf ihrem Standardwert lassen.

**Layout Options:**

* **show-titlepage** → Titelseite ein-/ausblenden
* **show-author-info** → Autor:innen- und Infoblock unabhängig von der Titelseite ein-/ausblenden
* **show-abstract** → Zusammenfassung unabhängig von Titelseite und Autor:innenblock ein-/ausblenden
* **show-toc** → Inhaltsverzeichnis ein-/ausblenden
* **show-impressum** → Impressum ein-/ausblenden
* **show-contact** → Kontaktblock am Ende ein-/ausblenden
* **draft** → Entwurfsmarkierung ein-/ausschalten

**Metadaten:**

* **language** → Dokumentsprache
* **title** → Titel des Reports
* **shorttitle** → Kurztitel für Kopfzeilen
* **subtitle** → Untertitel
* **authors** → Autor:innen mit optionaler Rolle, Organisation, Ort und E-Mail
* **date** → Datum des Reports
* **document-number** → Dokumentnummer
* **publisher** → Herausgeberangabe
* **distribution** → Vertraulichkeitshinweis
* **abstract** → Text der Zusammenfassung
* **author-bio** → Autor:innen-Biografie am Ende
* **bib** → Literaturverzeichnis, z. B. aus `references.bib`

**Layout Informationen:**

* **titlepage-cover** → Bild auf der Titelseite
* **contact-img** → Bild für den Kontaktblock
* **category** → Kategorie oder Themenzeile
* **tags** → Schlagwörter auf der Titelseite

### 3. Inhalte schreiben

Unterhalb des Templates kommt dein eigentlicher Inhalt.

#### Überschriften und Text

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

#### Links

Eine Web-Adresse, die du einfach so in den Text schreibst, wird automatisch in einen klickbaren Link verwandelt:

```typst
Mehr Infos unter https://example.com.
```

Willst du stattdessen einen eigenen Linktext anzeigen (z. B. "hier klicken" statt der ganzen URL), nutzt du `#link(...)`:

```typst
Weitere Details findest du #link("https://example.com")[hier].
```

#### Listen

Für eine **Aufzählung mit Punkten** beginnst du jede Zeile mit einem Bindestrich:

```typst
- Erster Punkt
- Zweiter Punkt
- Dritter Punkt
```

Für eine **nummerierte Liste** beginnst du jede Zeile mit einem Pluszeichen:

```typst
+ Erster Schritt
+ Zweiter Schritt
+ Dritter Schritt
```

Möchtest du einen Unterpunkt einrücken, setzt du einfach eine zusätzliche Einrückung (Leerzeichen oder Tabulator) vor die nächste Zeile:

```typst
- Hauptpunkt
  - Unterpunkt dazu
```

#### Bilder

Um ein Bild ohne Bildunterschrift einzufügen (z. B. ein Logo oder eine dekorative Grafik), reicht:

```typst
#image("assets/mein-bild.png")
```

Willst du die Größe kontrollieren, z. B. damit das Bild nicht die ganze Seitenbreite einnimmt:

```typst
#image("assets/mein-bild.png", width: 70%)
```

Der Pfad bezieht sich auf den `assets`-Ordner aus der Projektstruktur – leg deine Bilder also am besten dort ab.

#### Abbildungen mit Bildunterschrift – `figure`

Wenn ein Bild eine **Bildunterschrift** und eine **automatische Nummerierung** ("Abbildung 1", "Abbildung 2", ...) bekommen soll, verwendest du `#figure(...)` statt `#image(...)` allein:

```typst
#figure(
  image("assets/mein-bild.png", width: 80%),
  caption: [Kurze Beschreibung, was auf dem Bild zu sehen ist],
)
```

Willst du später im Text auf genau diese Abbildung verweisen (z. B. "siehe Abbildung 2"), gibst du ihr ein Label und verlinkst darauf:

```typst
#figure(
  image("assets/mein-bild.png", width: 80%),
  caption: [Kurze Beschreibung],
) <mein-bild>

Wie in @mein-bild zu sehen ist, ...
```

Typst nummeriert die Abbildung automatisch und aktualisiert die Nummer selbstständig, auch wenn du später weitere Abbildungen einfügst oder die Reihenfolge änderst.

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