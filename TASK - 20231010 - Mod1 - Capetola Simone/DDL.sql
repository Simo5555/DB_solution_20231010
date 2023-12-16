-- CREAZIONE DEL DATABASE USANDO IL DDL (Data Definition Language) --


-- Creazione e selezione del database
CREATE DATABASE Palestra;
USE Palestra;


-- Creazione della tabella Palestra
CREATE TABLE Palestra(
	NomePalestra VARCHAR(255),
    Indirizzo VARCHAR(255) NOT NULL,
    PRIMARY KEY(NomePalestra)
);

-- Creazione della tabella Attrezzo
CREATE TABLE Attrezzo(
	IDAttrezzo INT NOT NULL AUTO_INCREMENT,
	NomeAttrezzo VARCHAR(255) NOT NULL,
	Palestra_RIF VARCHAR(255),
	PRIMARY KEY(IDAttrezzo),
	FOREIGN KEY(Palestra_RIF) REFERENCES Palestra(NomePalestra)
);

-- Creazione della tabella Allenatore
CREATE TABLE Allenatore(
	IDAllenatore INT NOT NULL AUTO_INCREMENT,
	Nome varchar(255) NOT NULL,
	Cognome varchar(255) NOT NULL,
	Specializzazione VARCHAR(255) NOT NULL,
	Palestra_RIF VARCHAR(255),
	PRIMARY KEY(IDAllenatore),
	FOREIGN KEY(Palestra_RIF) REFERENCES Palestra(NomePalestra)
);

-- Creazione della tabella ClasseFitness
CREATE TABLE ClasseFitness(
	NomeClasse VARCHAR(255) NOT NULL,
	Descrizione VARCHAR(255) NOT NULL,
	MaxPartecipanti INT NOT NULL,
	Allenatore_RIF INT NOT NULL,
	PRIMARY KEY(NomeClasse),
	FOREIGN KEY(Allenatore_RIF) REFERENCES Allenatore(IDAllenatore)
);

-- Creazione della tabella Socio
CREATE TABLE Socio(
	NTessera INT NOT NULL,
	Nome  VARCHAR(255) NOT NULL,
	Cognome VARCHAR(255) NOT NULL,
	DataIscrizione BIGINT UNSIGNED,
	PRIMARY KEY(NTessera)
);

-- Creazione della tabella per il riferimento tra Socio e ClasseFitness
CREATE TABLE Socio_ClasseFitness_REF(
	ClasseFitness_RIF VARCHAR(255) NOT NULL,
	Socio_RIF INT NOT NULL,
	FOREIGN KEY(ClasseFitness_RIF) REFERENCES ClasseFitness(NomeClasse),
	FOREIGN KEY(Socio_RIF) REFERENCES Socio(NTessera)
);

-- Creazione della tabella per il riferimento tra Palestra e Socio
CREATE TABLE Palestra_Socio_REF(
	Socio_RIF INT NOT NULL,
	Palestra_RIF VARCHAR(255) NOT NULL,
	FOREIGN KEY(Socio_RIF) REFERENCES Socio(NTessera),
	FOREIGN KEY(Palestra_RIF) REFERENCES Palestra(NomePalestra)
);