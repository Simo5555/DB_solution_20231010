-- POPOLAZIONE DELLE VARIE TABELLE USANDO IL DML (Data Manipulation Language) --


-- Inserimento dati nella tabella Amministratore
INSERT INTO Amministratore (Nome, Cognome, Telefono, Mail) VALUES
('Giovanni', 'Neri', '555-123-4567', 'giovanni@email.com'),
('Laura', 'Rosa', '111-999-8888', 'laura@email.com'),
('Alessio', 'Blu', NULL, 'alessio@email.com');


-- Inserimento dati nella tabella Stabile
INSERT INTO Stabile (Indirizzo, Nome, Amministratore_RIF) VALUES
('Via Firenze 555', 'Edificio Firenze', 1),
('Corso Venezia 789', 'Palazzo Venezia', 2),
('Viale Torino 101', 'Residenza Torino', 3);


-- Inserimento dati nella tabella Appartamento
INSERT INTO Appartamento (Nominativo, Telefono, Mail, Stabile_RIF) VALUES
('A101', '111-111-1111', 'a101@email.com', 1),
('B202', '222-222-2222', 'b202@email.com', 2),
('C303', '333-333-3333', 'c303@email.com', 3);

-- Inserimento dati nella tabella Inquilino
INSERT INTO Inquilino (Nome, Cognome, Telefono, Mail, Appartamento_RIF) VALUES
('Francesca', 'Rossi', '111-222-3333', 'francesca@email.com', 1),
('Luigi', 'Bianchi', '444-555-6666', 'luigi@email.com', 2),
('Giulia', 'Verdi', '777-888-9999', 'giulia@email.com', 3);


-- Inserimento dati nella tabella Avviso
INSERT INTO Avviso (Data_pubblicazione, Titolo, Descrizione, Amministratore_RIF) VALUES
('2023-11-05 08:15:00', 'Lavori di ristrutturazione', 'Inizieranno i lavori di ristrutturazione nella zona comune.', 1),
('2023-11-06 14:00:00', 'Interruzione temporanea del servizio idrico', 'Per lavori di manutenzione, il servizio idrico sarà interrotto per alcune ore.', 2),
('2023-11-07 17:30:00', 'Assemblea condominiale', 'Convocata assemblea per discutere questioni importanti. Vi invitiamo a partecipare.', 3);


-- Inserimento dati nella tabella Intervento
INSERT INTO Intervento (Data_creazione, Descrizione, Stato, Appartamento_richiedente, Inquilino_RIF) VALUES
('2023-11-10 08:45:00', 'Perdita gas', 'In lavorazione', 1, 1),
('2023-11-11 11:15:00', 'Malfunzionamento riscaldamento', 'Creato', 2, 2),
('2023-11-12 13:30:00', 'Sostituzione serratura', 'Risolto', 3, 3);


-- Inserimento dati nella tabella Avviso_Inquilino_ref
INSERT INTO Avviso_Inquilino_REF (avviso_RIF, inquilino_RIF) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Inserimento dati nella tabella Amministratore_Intervento_ref
INSERT INTO Amministratore_Intervento_REF (amministratore_RIF, intervento_RIF) VALUES
(1, 1),
(2, 2),
(3, 3);
