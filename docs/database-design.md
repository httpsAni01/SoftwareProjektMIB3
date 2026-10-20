# Database Design

## 1. Zweck der Datenbank
Die Datenbank soll die Informationen bereitstellen, die für die Konfiguration und den Betrieb des Haltestellenmonitors benötigt werden. Welche Daten dauerhaft gespeichert werden müssen, hängt von der vorhandenen API und den Anforderungen der Anwendung ab.

[Beschreibung]

## 2. Zu speichernde Daten
Welche Informationen muss unsere Software speichern? 

- Haltestelleninformationen
- Informationen zu Fahrten
- Roboterstatus
- Konfiguration des Monitors
- Administrationsbezogene Einstellungen, sofern erforderlich

_Es muss noch geklärt werden, welche dieser Informationen aus einer externen API stammen und welche in unserer Datenbank gespeichert werden sollen._

## 3. Geplante Tabellen
Welche Tabellen könnten wir benötigen?
(Vorläufige Vorschläge)

- *stations*: Informationen zu Haltestellen
- *trips*: Informationen zu Fahrten und gegebenfalls zugehörigen Haltestellen.
- *robots*: Informationen zu Robotern, sofern mehrere Roboter verwaltet werden müssen
- *monitor_config*: Einstellungen des Monitors, beispielsweise die ausgewählte Haltestelle
- *robot_status*: Aktueller oder historischer Roboterstatus, abhängig von den Anforderungen.

_Die endgültige Anzahl und Struktur der Tabelle wird nach Prüfung der API und Abstimmung mit dem Team festgelegt._

## 4. Beziehungen
Wie hängen die Daten und Tabellen miteinander zusammen?

- Eine Haltestelle kann mit mehreren Fahrten verbunden sein.
- Ein Roboter kann einen aktuellen Status besitzen
- Die Monitorkonfiguration kann auf eine ausgewählte Haltestelle verweisen

_Die konkreten Beziehungen und Schlüssel müssen anhand der tatsächlichen Datenstruktur festgelegt werden._

## 5. Offene Fragen
- Welche Datenbanktechnologie verwenden wir?
- Welche Daten stellt die vorhandene API bereit?
- Welche informationen müssen dauerhaft gespeichert werden?
- Wie werden Fahrten, Haltestellen und Roboter miteinander verknüpft?
- Muss die Anwendung Statushistorien speichern?
- Wie wird die Datenbank in die Webanwendung integriert?
- Welche Sicherheitsanforderungen gelten für die Administration?
