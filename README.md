#Das Lektorprojekt
*für die see-base Webseite*

1) **Installation:**
    
## benötigte Pakete:

 * lektor - Der Static-Site Generator & CMS
 * sassc  - Precompiler für CSS-Dateien
 * rsync  - Zum deployen

2) **Verwendung:**

* Navigiert zum Wurzelordner des Lektor-Projektes (der Ordner mit der <name>.lectorproject Datei).
* Gebt 'lektor server' ein um die Admin-Oberfläche zu starten.
* Navigiert in eurem Webbrowser zu 'localhost:5000'
    
  *Um Inhalte zu bearbeiten, navigiert auf die zu bearbeitende Seite und klickt auf das Stift-Symbol in der Rechten oberen Ecke.*

##    Besonderheiten einzelner Seiten:

###    Startseite:
* Um Bilder zu ändern müssen diese erst als Anhang hinzugefügt werden.
* Die Icons der Feature-Boxes müssen mit dem Klassennamen des Icons angegeben werden:
  *Das Schema ist: 'fa-<iconname>', die einzelnen Namen sind in der Datei 'button_label_werte' zu finden.*

###    Blog:
* Um einen Blogeintrag hinzuzufügen muss eine Unterseite erstellt werden.
* Das Datum des Blogeintrages muss in folgendem Schema verfasst sein: 'YYYY-MM-DD hh:mm'
	    Bsp: '2017-09-16 23:01'
	    Dieses ist Wichtig für die Sortierung.
* Die Zusammenfassung wird in der Blog-Liste angezeigt
* Der Inhalt ist mir Markdown oder HTML5 formatierbar

###    Projekte:
* Das Vorschaubild des Projektes muss im Ordner '/projekte' gespeichert werden.
	    Anschließend kann es in der Unterseite ausgewählt werden.

###    Galerie:
* Alben werden wie Bilder nach Namen sortiert.
* Der Ordner '/galerie' ist für Alben gedacht, die Unterordner für die einzelnen Bilder.

###    Kontakt:
* Solange das Kontaktformular noch nicht funktioniert, sollte der Haken bei 'Kontaktformular' deaktiviert bleiben.


3) **Projektstruktur**

   d assets                     - Dateien, die genau so in die Webseite übernommen werden (sinnvoll für css, js, default-bilder)
    d content                    - Der Inhalt der einzelnen Modellfelder, der als Text (o.Ä.) in das HTML eingebunden wird
    d databags                   - Einfache key-value Datenbanken, die Informationen für Templates zur Verfügung stellen
    d flowblocks                 - Modelle für generische Blöcke, die seitenunabhängig eingebunden werden können
    d models                     - Modelle für die Inhalte der einzelnen Webseiten
    d templates                  - HTML-Templates in welche die Modell/Blockfelder eingebunden werden
    f see-base-web.lektorproject - Metainformationen über das Projekt / Deployment-Adresse

