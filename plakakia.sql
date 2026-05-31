CREATE TABLE proionta (
    id INTEGER PRIMARY KEY,
    onoma TEXT NOT NULL,
    kategoria TEXT,
    timi REAL NOT NULL,
    apothema INTEGER DEFAULT 0,
    marka TEXT
);

CREATE TABLE pelates (
    id INTEGER PRIMARY KEY,
    onoma TEXT NOT NULL,
    epitheto TEXT NOT NULL,
    tilefono TEXT,
    email TEXT,
    diefthinsi TEXT
);

CREATE TABLE paraggelies (
    id INTEGER PRIMARY KEY,
    pelatis_id INTEGER,
    proion_id INTEGER,
    posotita REAL,
    imerominia DATE,
    katastasi TEXT DEFAULT 'Pending',
    FOREIGN KEY (pelatis_id) REFERENCES pelates(id),
    FOREIGN KEY (proion_id) REFERENCES proionta(id)
);

INSERT INTO proionta VALUES (1, 'Marmaro Lefko 60x60', 'Plakakia', 25.90, 200, 'Graniti Fiandre');
INSERT INTO proionta VALUES (2, 'Ntous Inox', 'Idi Igieinis', 180.00, 15, 'Grohe');
INSERT INTO proionta VALUES (3, 'Plakaki Mpaniou 30x60', 'Plakakia', 18.50, 350, 'Pamesa');
INSERT INTO proionta VALUES (4, 'Niptiras Leukos', 'Idi Igieinis', 95.00, 10, 'Ideal Standard');

INSERT INTO pelates VALUES (1, 'Giannis', 'Papadopoulos', '6901111111', 'giannis@email.com', 'Athinon 5');
INSERT INTO pelates VALUES (2, 'Eleni', 'Nikolaou', '6902222222', 'eleni@email.com', 'Egnatias 12');

INSERT INTO paraggelies VALUES (1, 1, 1, 50, '2026-05-31', 'Paid');
INSERT INTO paraggelies VALUES (2, 2, 3, 30, '2026-05-31', 'Pending');