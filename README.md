 Das Lektorprojekt
===================
### *für die see-base Webseite*

[![Build Status](https://travis-ci.org/see-base/see-base-webseite.svg?branch=master)](https://travis-ci.org/see-base/see-base-webseite)

[![see-base](https://see-base.de/images/background.svg)](https://see-base.de)

 Installation:
====================
    
 benötigte Pakete:
-------------------

 * lektor - Der Static-Site Generator & CMS
 * git-lfs - Git mit unterstützung für große binärblobs
 * rsync  - Zum deployen ***(optional)***
 * imagemagic - wird von lektor für bilder verwendet

### Installationsanleitung: *(Linux/Unix)*
```
git clone https://github.com/see-base/see-base-webseite.git
cd see-base-webseite
make install
```


 Verwendung:
==================

 Zur Webseite Beitragen - normaler Weg
------------------------

1.  Dieses Repository forken (übers GitHub Interface)
2.  Geforktes Repository Clonen (``git lfs clone https://github.com/<Your_Name>/see-base-webseite.git``)
3.  Öffne deine Komandozeile im geklonten Repository-Fork (``cd see-base-webseite``)
4.  Lektor starten (``lektor server``)
5.  Webseite updaten... (``http://localhost:5000/``)
6.  Lektor Beenden (``Strg. + C``)
7.  Änderungen commiten (``git add --all; git commit -m "An der Webseite habe ich _____ geändert"``)
8.  Änderungen hochladen (``git push``)
9.  Pull Request Stellen (übers GitHub Interface)

 Als see-base Mitglied auf github die Webseite bearbeiten:
-------------------------------------------------

1.  Dieses Repository clonen (`` git lfs clone git@github.com:see-base/see-base-webseite.git``)
2.  Neuen branch erstellen (``git checkout -b NEUER_BRANCH``)
4.  Lektor starten (``lektor server``)
5.  Webseite updaten... (``http://localhost:5000/``)
6.  Lektor Beenden (``Strg. + C``)
7.  Änderungen commiten (``git add --all; git commit -m "An der Webseite habe ich _____ geändert"``)
8.  Änderungen hochladen (``git push origin NEUER_BRANCH``)
9.  Pull Request Stellen (übers GitHub Interface)
10. Auf den master wechseln als vorbereitung fürs nächste mal (``git checkout master; git pull``)

    
  *Um Inhalte zu bearbeiten, navigiert auf die zu bearbeitende Seite und klickt auf das Stift-Symbol in der Rechten oberen Ecke.*

 Besonderheiten einzelner Seiten:
----------------------------------

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


 Projektstruktur
========================

```
    d assets                     - Dateien, die genau so in die Webseite übernommen werden (sinnvoll für css, js, default-bilder)
    d content                    - Der Inhalt der einzelnen Modellfelder, der als Text (o.Ä.) in das HTML eingebunden wird
    d databags                   - Einfache key-value Datenbanken, die Informationen für Templates zur Verfügung stellen
    d flowblocks                 - Modelle für generische Blöcke, die seitenunabhängig eingebunden werden können
    d models                     - Modelle für die Inhalte der einzelnen Webseiten
    d templates                  - HTML-Templates in welche die Modell/Blockfelder eingebunden werden
    f see-base-web.lektorproject - Metainformationen über das Projekt / Deployment-Adresse
```

