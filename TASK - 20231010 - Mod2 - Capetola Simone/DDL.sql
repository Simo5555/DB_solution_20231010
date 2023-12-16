-- CREAZIONE DEL DATABASE USANDO IL DDL (Data Definition Language) --


-- Creazione e selezione del database
CREATE DATABASE GestioneStabili;
USE GestioneStabili;


-- Creazione della tabella Amministratore
CREATE TABLE Amministratore(
	ID_Amministratore INT AUTO_INCREMENT NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Cognome VARCHAR(255) NOT NULL,
    Telefono VARCHAR(15),
    Mail VARCHAR(255),
    PRIMARY KEY(ID_Amministratore)
);

-- Creazione della tabella Stabile
CREATE TABLE Stabile(
	ID_Stabile INT AUTO_INCREMENT NOT NULL,
    Indirizzo VARCHAR(255) NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Amministratore_RIF INT NOT NULL,
    PRIMARY KEY (ID_Stabile),
    FOREIGN KEY (Amministratore_RIF) REFERENCES Amministratore(ID_Amministratore)
);

-- Creazione della tabella Appartamento
CREATE TABLE Appartamento(
	ID_Appartamento INT AUTO_INCREMENT NOT NULL,
    Nominativo VARCHAR(255) NOT NULL,
    Telefono VARCHAR(15) NOT NULL,
    Mail VARCHAR(255) NOT NULL,
    Stabile_RIF INT NOT NULL,
    PRIMARY KEY (ID_Appartamento),
    FOREIGN KEY (Stabile_RIF) REFERENCES Stabile(ID_Stabile)
);

-- Creazione della tabella Inquilino
CREATE TABLE Inquilino(
	ID_Inquilino INT AUTO_INCREMENT NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Cognome VARCHAR(255) NOT NULL,
    Telefono VARCHAR(15),
    Mail VARCHAR(255),
    Pppartamento_RIF INT NOT NULL,
    PRIMARY KEY(ID_Inquilino),
    FOREIGN KEY (Appartamento_RIF) REFERENCES Appartamento(ID_Appartamento)
);

-- Creazione della tabella Avviso
CREATE TABLE Avviso(
	ID_Avviso INT AUTO_INCREMENT NOT NULL,
    Data_pubblicazione DATETIME NOT NULL,
    Titolo VARCHAR(255) NOT NULL,
    Descrizione VARCHAR(1024) NOT NULL,
    Amministratore_RIF INT NOT NULL,
    PRIMARY KEY (ID_Avviso),
    FOREIGN KEY (Amministratore_RIF) REFERENCES Amministratore(ID_Amministratore)
);

-- Creazione della tabella Intervento
CREATE TABLE Intervento(
	ID_Intervento INT AUTO_INCREMENT NOT NULL,
    Data_creazione DATETIME NOT NULL,
    Descrizione VARCHAR(1024) NOT NULL,
    Stato ENUM("Creato", "In lavorazione", "Risolto", "Respinto") NOT NULL,
    Appartamento_richiedente INT NOT NULL,
    Inquilino_RIF INT NOT NULL,
    PRIMARY KEY (ID_Intervento),
    FOREIGN KEY (Inquilino_RIF) REFERENCES Inquilino(ID_Inquilino)
);

-- Creazione della tabella per il riferimento tra Avviso e Inquilino
CREATE TABLE Avviso_Inquilino_REF(
	Avviso_RIF INT NOT NULL,
    Inquilino_RIF INT NOT NULL,
    FOREIGN KEY (Avviso_RIF) REFERENCES Avviso(ID_Avviso),
    FOREIGN KEY (Inquilino_RIF) REFERENCES Inquilino(ID_Inquilino)
);

-- Creazione della tabella per il riferimento tra Amministratore e Intervento
CREATE TABLE Amministratore_Intervento_REF(
	Amministratore_RIF INT NOT NULL,
    Intervento_RIF INT NOT NULL,
    FOREIGN KEY (Amministratore_RIF) REFERENCES Amministratore(ID_Amministratore),
    FOREIGN KEY (Intervento_RIF) REFERENCES Intervento(ID_Intervento)
);
