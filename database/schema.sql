
PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS stations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    location TEXT
);

CREATE TABLE IF NOT EXISTS departures (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    station_id INTEGER NOT NULL,
    line TEXT NOT NULL,
    destination TEXT NOT NULL,
    departure_time TEXT NOT NULL,
    platform TEXT,
    delay_minutes INTEGER DEFAULT 0,
    FOREIGN KEY (station_id) REFERENCES stations(id)
);

CREATE TABLE IF NOT EXISTS robot_status (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    departure_id INTEGER NOT NULL UNIQUE,
    status TEXT NOT NULL
        CHECK (status IN ('boarding', 'riding', 'exiting')),
    occupancy TEXT NOT NULL
        CHECK (occupancy IN ('low', 'medium', 'high')),
    updated_at TEXT DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (departure_id) REFERENCES departures(id)
);
