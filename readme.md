# README – Erstellung von Reports mit unserem Template

## Überblick

Dieses Projekt stellt ein einheitliches Template zur Verfügung, mit dem wir Reports strukturiert und visuell konsistent erstellen können. Ziel ist es, Inhalte klar, professionell und wiedererkennbar aufzubereiten – unabhängig davon, wer den Report erstellt.

Das Template basiert auf **Typst**, einem modernen Tool zur Dokumentenerstellung (ähnlich wie Word oder LaTeX, aber einfacher und flexibler).

Ein Beispiel findest du hier: [mlb-example.pdf](mlb-template/mlb-example.pdf)

## Für wen ist dieses Dokument gedacht?

Dieses README richtet sich an alle im Team – auch ohne technischen Hintergrund.
Du musst **keine Programmierkenntnisse** haben, um damit zu arbeiten.

## Überblick

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
(z. B. Typst Web App oder lokal installiertes Tool).

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

### 4. Gestaltungselemente nutzen

Das Template bietet fertige Bausteine, z. B.:

#### Hervorgehobene Box

```typst
#styledbox(mlb-turquoise, [
Wichtige Erkenntnis oder Kernaussage
])
```

Gut geeignet für:

* Key Insights
* Fazits
* wichtige Zahlen

### 5. Inhaltsverzeichnis (optional)

Wenn aktiviert, wird automatisch ein Inhaltsverzeichnis erstellt.

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

## Best Practices

* Schreibe klar und verständlich (keine unnötigen Fachbegriffe)
* Nutze Zwischenüberschriften
* Hebe wichtige Aussagen hervor
* Halte Absätze kurz
* Denke aus Sicht der Leser:innen

## Häufige Fragen

### Muss ich programmieren können?

Nein. Du arbeitest hauptsächlich mit Text und einfachen Markierungen.

### Was mache ich, wenn etwas nicht funktioniert?

* Prüfe zuerst, ob Klammern `()` und `[]` korrekt gesetzt sind
* Frage im Team nach Unterstützung

### Kann ich das Layout ändern?

Grundsätzlich nein – das Template sorgt für Konsistenz.
Falls etwas fehlt, bitte im Team abstimmen.

## Ziel des Templates

* Einheitliche Reports
* Schnellere Erstellung
* Bessere Lesbarkeit
* Professionelles Erscheinungsbild

## Ansprechpartner

Bei Fragen oder Problemen wende dich an:

* Johannes Klingebiel

## Kurz gesagt

Du musst nur:

1. Metadaten ausfüllen
2. Inhalte schreiben
3. PDF exportieren

Alles andere übernimmt das Template für dich.
