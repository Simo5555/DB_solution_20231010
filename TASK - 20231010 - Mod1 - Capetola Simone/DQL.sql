-- INTERROGAZIONE DEL DATABASE USANDO IL DQL (Data Query Language) --

-- Dobbiamo tracciare quali attrezzature sono utilizzate in quali classi
SELECT Attrezzo.NomeAttrezzzo, ClasseFitness.NomeClasse
FROM Attrezzo
INNER JOIN Palestra ON Palestra.NomePalestra = Attrezzo.Palestra_RIF
    INNER JOIN Allenatore ON Allenatore.Palestra_RIF = Palestra.NomePalestra
        INNER JOIN ClasseFitness ON ClasseFitness.Allenatore_RIF = Allenatore.IDAllenatore;
