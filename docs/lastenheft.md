# Lastenheft – RegioKArgoTramTrain: Haltestellenmonitor

**Projekt:** RegioKArgoTramTrain – Interaktiver Haltestellenmonitor  
**Version:** 0.1 – Entwurf  
**Status:** Zur Abstimmung im Team  
**Stand:** 27.10.2026

## 1. Einleitung

### 1.1 Zweck des Dokuments

Dieses Lastenheft beschreibt die Anforderungen an einen interaktiven Haltestellenmonitor im Rahmen des Projekts RegioKArgoTramTrain. Es dient als gemeinsame Grundlage für die Planung, Entwicklung und spätere Überprüfung der Software.

Die Anforderungen müssen vor der Umsetzung mit dem Projektteam und gegebenenfalls dem Auftraggeber abgestimmt werden.

### 1.2 Projektbeschreibung

Das Projekt RegioKArgoTramTrain untersucht die Verbindung von Personen- und Warentransport im öffentlichen Nahverkehr. Dabei sollen bestehende Schieneninfrastrukturen für einen nachhaltigen Transport genutzt werden.

Der Haltestellenmonitor soll relevante Fahrgastinformationen sowie Informationen zum Transportroboter übersichtlich darstellen.

### 1.3 Ausgangssituation

In einem Vorgängerprojekt wurde bereits ein interaktiver Haltestellenmonitor entwickelt. Dieser stellte unter anderem Fahrplandaten, Haltestelleninformationen und simulierte Roboterstatus dar.

Es ist noch zu klären, ob das vorhandene Repository und dessen Komponenten für die neue Entwicklung verwendet werden können.

## 2. Zielbestimmung

### 2.1 Gesamtziel

Ziel ist die Entwicklung eines plattformunabhängigen, interaktiven Haltestellenmonitors, der Fahrgästen aktuelle Informationen zu S-Bahnen und Straßenbahnen sowie Informationen zum Transportroboter bereitstellt.

Zusätzlich soll eine Administrationsoberfläche die Konfiguration der angezeigten Haltestelle und des Roboterstatus ermöglichen.

### 2.2 Zielgruppe

- Fahrgäste, die Informationen zu Abfahrten benötigen.
- Administratoren, die den Monitor konfigurieren und Roboterstatus verwalten.

### 2.3 Nutzen

- Übersichtliche Darstellung von Abfahrtsinformationen.
- Verständliche Visualisierung von Roboterstatus und Fahrzeugauslastung.
- Interaktive Auswahl und Suche von Haltestellen.
- Mehrsprachige Bedienung.
- Flexible Konfiguration des Monitors.

## 3. Funktionale Anforderungen

### 3.1 Anzeige von Fahrten

**F-01:** Das System muss mindestens fünf und maximal zehn Fahrten gleichzeitig anzeigen können.

**F-02:** Für jede angezeigte Fahrt sollen folgende Informationen dargestellt werden:
- Linienbezeichnung
- Geplante Abfahrtszeit
- Zielhaltestelle
- Gleis
- Verspätung, sofern entsprechende Daten verfügbar sind
- Roboterstatus
- Besetzungsgrad des Fahrzeugs

**F-03:** Die Fahrtdaten sollen über eine geeignete Datenquelle bereitgestellt werden.

**F-04:** Nicht mehr relevante oder bereits abgefahrene Fahrten sollen entsprechend den festgelegten Regeln aus der Anzeige entfernt werden.

### 3.2 Haltestellensuche

**F-05:** Nutzer müssen nach Haltestellen suchen können.

**F-06:** Die Suchergebnisse sollen bereits während der Eingabe gefiltert werden.

**F-07:** Eine Reset-Funktion muss die Suche zurücksetzen können.

### 3.3 Roboterstatus

**F-08:** Der Roboterstatus soll pro Fahrt visualisiert werden.

**F-09:** Mindestens folgende Statuszustände sollen unterstützt werden:
- Einsteigen
- Mitfahren
- Aussteigen

**F-10:** Administratoren sollen den Roboterstatus über eine Administrationsoberfläche festlegen und ändern können.

**F-11:** Falls keine echten Roboterstatusdaten verfügbar sind, muss eine geeignete Lösung für die Demonstration abgestimmt werden.

### 3.4 Besetzungsgrad

**F-12:** Das System soll den erwarteten Besetzungsgrad eines Fahrzeugs darstellen.

**F-13:** Der Besetzungsgrad soll in drei verständlichen Stufen dargestellt werden:
- Niedrig
- Mittel
- Hoch

**F-14:** Es muss geklärt werden, ob echte Auslastungsdaten verfügbar sind oder ob diese für die erste Version simuliert werden.

### 3.5 Administrationsoberfläche

**F-15:** Administratoren müssen die anzuzeigende Haltestelle festlegen können.

**F-16:** Administratoren müssen den Roboterstatus einer Fahrt konfigurieren können.

**F-17:** Die Bedienung der Administrationsoberfläche soll verständlich und zuverlässig sein.

### 3.6 Mehrsprachigkeit

**F-18:** Die Benutzeroberfläche muss Deutsch, Englisch und Französisch unterstützen.

**F-19:** Nutzer müssen die angezeigte Sprache wechseln können.

## 4. Nichtfunktionale Anforderungen

### 4.1 Bedienbarkeit

**NF-01:** Die Benutzeroberfläche muss für einen 43-Zoll-Touchmonitor ausgelegt sein.

**NF-02:** Die Bedienung muss für Touchscreens mit 20–25 Touchpunkten geeignet sein.

**NF-03:** Informationen müssen kontrastreich, übersichtlich und verständlich dargestellt werden.

### 4.2 Plattformunabhängigkeit

**NF-04:** Die Anwendung muss als plattformunabhängige WebView nutzbar sein.

### 4.3 Aktualität der Daten

**NF-05:** Die Aktualisierung der Fahrtdaten muss in einem noch festzulegenden Intervall erfolgen.

Im Vorgängerprojekt betrug das Intervall 30 Sekunden. Ob dieser Wert für die neue Version verbindlich ist, muss abgestimmt werden.

### 4.4 Sicherheit und Zugriff

**NF-06:** Der Zugriff auf die vorgesehene API muss die vorgegebenen Netzwerk- und Sicherheitsbedingungen berücksichtigen.

**NF-07:** Die Berechtigungen für die Administrationsoberfläche müssen festgelegt werden.

## 5. Daten und Schnittstellen

### 5.1 Fahrplandaten

Als mögliche Datenquelle ist die TRIAS-Schnittstelle des Karlsruher Verkehrsverbunds dokumentiert. Es muss geprüft werden, ob diese Schnittstelle für die neue Anwendung weiterhin verfügbar und vorgesehen ist.

### 5.2 Roboter- und Auslastungsdaten

Es muss geklärt werden, ob echte Daten bereitgestellt werden oder ob Roboterstatus und Besetzungsgrad zunächst simuliert beziehungsweise administrativ gepflegt werden.

### 5.3 Datenhaltung

Es ist zu untersuchen, welche Daten dauerhaft gespeichert werden müssen und welche direkt aus externen Schnittstellen oder vorhandenen Dateien geladen werden können.

Die konkrete Datenbanktechnologie und das Datenmodell werden nach Abstimmung der Anforderungen festgelegt.

## 6. Abgrenzung und Nicht-Ziele

Folgende Punkte werden zunächst nicht als verbindlicher Bestandteil der ersten Version festgelegt:

- Entwicklung einer neuen Fahrplan- oder Verkehrsdatenschnittstelle.
- Vollständige autonome Steuerung des Transportroboters.
- Speicherung einer langfristigen Historie sämtlicher Fahrten und Roboterzustände.
- Erweiterte Analyse- und Statistikfunktionen.

Diese Abgrenzung muss mit dem Team und gegebenenfalls dem Auftraggeber bestätigt werden.

## 7. Abnahmekriterien

Die erste Version gilt hinsichtlich der hier beschriebenen Funktionen als erfolgreich umgesetzt, wenn:

- Mindestens fünf Fahrten gleichzeitig dargestellt werden können.
- Die geforderten Fahrgastinformationen korrekt angezeigt werden, soweit sie verfügbar sind.
- Die Haltestellensuche einschließlich Reset funktioniert.
- Die drei Roboterstatuszustände verständlich dargestellt werden.
- Der Besetzungsgrad in drei Stufen visualisiert wird.
- Die Administrationsoberfläche die vereinbarten Einstellungen ermöglicht.
- Deutsch, Englisch und Französisch auswählbar sind.
- Die Anwendung auf dem vorgesehenen Monitor getestet wurde.

Die endgültigen Abnahmekriterien und Testbedingungen müssen gemeinsam festgelegt werden.

## 8. Rahmenbedingungen

- Das Projekt wird im Team entwickelt.
- Die Aufgaben und der Fortschritt werden über GitHub organisiert.
- Anforderungen, Entscheidungen und offene Fragen werden nachvollziehbar dokumentiert.
- Der vorhandene Projektstand und mögliche wiederverwendbare Komponenten müssen geprüft werden.
- Die technische Architektur wird mit dem Entwicklungsteam abgestimmt.

## 9. Offene Fragen

1. Ist das ursprüngliche Repository verfügbar und darf es weiterverwendet werden?
2. Welche Programmiersprachen und Frameworks sind vorgegeben oder bereits im Einsatz?
3. Ist die TRIAS-Schnittstelle verfügbar und für unsere Anwendung freigegeben?
4. Wie erfolgt der Zugriff auf die API und den erforderlichen VPN-Zugang?
5. Welche Daten stehen für Roboterstatus und Besetzungsgrad tatsächlich zur Verfügung?
6. Welche Daten müssen dauerhaft in einer Datenbank gespeichert werden?
7. Welche Funktionen muss die Administrationsoberfläche zusätzlich enthalten?
8. Ist eine Anmeldung für Administratoren erforderlich?
9. Ist die Aktualisierung alle 30 Sekunden weiterhin verbindlich?
10. Welche Anforderungen gelten für Datenschutz, Sicherheit und Fehlerbehandlung?

## 10. Änderungsverlauf

| Version | Änderung |
|---|---|
| 0.1 | Erster Entwurf auf Grundlage der verfügbaren Projektunterlagen |

*Ergänzung*

# Lastenheft – RegioKArgoTramTrain: Haltestellenmonitor

**Version:** 0.2 – Entwurf  
**Status:** In Abstimmung

## 1. Ausgangssituation

Im Rahmen des Projekts RegioKArgoTramTrain soll ein neuer Prototyp eines interaktiven Haltestellenmonitors entwickelt werden. Ein früheres Projekt mit ähnlicher Zielsetzung dient als fachliche Orientierung. Ob dessen Code oder bestehende Komponenten verwendet werden können, ist nicht Teil der aktuellen Planung.

## 2. Ziel des Projekts

Ziel ist die Entwicklung eines plattformunabhängigen, interaktiven Haltestellenmonitors, der Fahrgastinformationen und Informationen zum Transport von Gütern durch Roboter übersichtlich darstellt.

Der Prototyp soll auf einem Touchscreen bedienbar sein und eine Administrationsoberfläche zur Konfiguration der Haltestelle und des Roboterstatus bieten.

## 3. Grundsatz für die Entwicklung

Der Prototyp wird neu erstellt. Die Anforderungen und Erkenntnisse des Vorgängerprojekts können als Orientierung dienen. Die konkrete technische Umsetzung, die verwendeten Datenquellen und die Datenbank werden im Projektteam festgelegt.

## 4. Offene Punkte

- Welche Technologien und welches Framework werden verwendet?
- Ist die vorgesehene Fahrplandaten-API verfügbar und darf sie genutzt werden?
- Sind echte Daten zum Roboterstatus und zur Auslastung verfügbar?
- Welche Daten müssen dauerhaft in einer Datenbank gespeichert werden?
- Ist für die Administration eine Anmeldung erforderlich?
- Welche Funktionen müssen für die erste lauffähige Version umgesetzt werden?
