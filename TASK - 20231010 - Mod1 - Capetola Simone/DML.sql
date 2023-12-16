-- POPOLAZIONE DELLE VARIE TABELLE USANDO IL DML (Data Manipulation Language) --


-- Inserimento dati nella tabella Palestra
INSERT INTO Palestra (NomePalestra, Indirizzo) VALUES
    ('Palestra A', 'Via delle Rose, 123'),
    ('Palestra B', 'Piazza del Sole, 456'),
    ('Palestra C', 'Corso Italia, 789');

-- Inserimento dati nella tabella Attrezzo
INSERT INTO Attrezzo (NomeAttrezzo, Palestra_RIF) VALUES
    ('Manubri', 'Palestra A'),
    ('Cyclette', 'Palestra B'),
    ('Tapis Roulant', 'Palestra C');

-- Inserimento dati nella tabella Allenatore
INSERT INTO Allenatore (Nome, Cognome, Specializzazione, Palestra_RIF) VALUES
    ('Sara', 'Russo', 'Kickboxing', 'Palestra A'),
    ('Roberto', 'Conti', 'Zumba', 'Palestra B'),
    ('Davide', 'Ricci', 'Bodybuilding', 'Palestra C');

-- Inserimento dati nella tabella ClasseFitness
INSERT INTO ClasseFitness (NomeClasse, Descrizione, MaxPartecipanti, Allenatore_RIF) VALUES
    ('Kickboxing', 'Allenamento ad alta intensità basato su tecniche di pugilato e calci', 10, 1),
    ('Zumba', 'Allenamento di gruppo basato sulla danza', 20, 2),
    ('Bodybuilding', 'Allenamento mirato allo sviluppo muscolare attraverso pesi e attrezzature specializzate', 5, 3);

-- Inserimento dati nella tabella Socio
INSERT INTO Socio (NTessera, Nome, Cognome, DataIscrizione) VALUES
    (1, 'Mario', 'Rossi', UNIX_TIMESTAMP('2023-03-07')),
    (2, 'Luca', 'Verdi', UNIX_TIMESTAMP('2023-02-10')),
    (3, 'Maria', 'Esposito', UNIX_TIMESTAMP('2023-09-25'));

-- Inserimento dati nella tabella Socio_ClasseFitness_ref
INSERT INTO Socio_ClasseFitness_REF (ClasseFitness_RIF, Socio_RIF) VALUES
    ('Kickboxing', 1),
    ('Zumba', 2),
    ('Bodybuilding', 3);

-- Inserimento dati nella tabella Palestra_Socio_ref
INSERT INTO Palestra_Socio_REF (Socio_RIF, Palestra_RIF) VALUES
    (1, 'Palestra A'),
    (2, 'Palestra B'),
    (3, 'Palestra C');
