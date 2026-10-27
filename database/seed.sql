
INSERT INTO stations (name, location)
VALUES ('Karlsruhe Hauptbahnhof', 'Karlsruhe');

INSERT INTO departures
    (station_id, line, destination, departure_time, platform, delay_minutes)
VALUES
    (1, 'S1', 'Neureut', '2026-10-28 09:15:00', '2', 0),
    (1, 'S2', 'Rheinstetten', '2026-10-28 09:20:00', '3', 5),
    (1, 'T1', 'Durlach', '2026-10-28 09:25:00', '1', 2),
    (1, 'S3', 'Heidelberg', '2026-10-28 09:30:00', '4', 0),
    (1, 'T2', 'Ettlingen', '2026-10-28 09:35:00', '2', 3);

INSERT INTO robot_status
    (departure_id, status, occupancy)
VALUES
    (1, 'boarding', 'low'),
    (2, 'riding', 'medium'),
    (3, 'exiting', 'high');
