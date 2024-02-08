 --Visualizzare tutti gli impiegati oltre i 29 anni; 
 --SELECT * FROM Impiegato WHERE Eta > 29;

 --Visualizzare tutti gli impiegati con un reddito di almeno 800 euro mensili; 
 --SELECT * FROM Impiegato WHERE RedditoMensile >= 800;

 --Visualizzare tutti gli impiegati che posseggono la detrazione fiscale; 
 --SELECT * FROM Impiegato WHERE Detrazioni = 'TRUE';

 --Visualizzare tutti gli impiegati che non posseggono la detrazione fiscale; 
 --SELECT * FROM Impiegato WHERE Detrazioni = 'FALSE';

  --Visualizzare tutti gli impiegati cui il cognome cominci con una lettera G e li visualizzi in ordine alfabetico; 
  --SELECT * FROM Impiegato WHERE Cognome LIKE 'G%' ORDER BY Cognome ASC;

  --Visualizzare il numero totale degli impiegati registrati nella base dati; 
  --SELECT COUNT(*) AS TotaleImpiegati FROM Impiegato ;

  --Visualizzare il totale dei redditi mensili di tutti gli impiegati; 
  --SELECT SUM(RedditoMensile) AS TotaleReddito FROM Impiegato;

  --Visualizzare la media dei redditi mensili di tutti gli impiegati; 
  --SELECT AVG(RedditoMensile) AS TotaleReddito FROM Impiegato;

  --Visualizzare l’importo del reddito mensile maggiore; 
  --SELECT MAX(RedditoMensile) AS TotaleReddito FROM Impiegato;

  --Visualizzare l’importo del reddito mensile minore; 
  --SELECT MIN(RedditoMensile) AS TotaleReddito FROM Impiegato;

  --Visualizzare gli impiegati assunti dall’ 01/01/2007 all’ 01/01/2008; 
  --SELECT * FROM Impiegato
  --JOIN Impiego ON IdImpiegato = IdImpiego
  --WHERE Impiego.DataAssunzione BETWEEN '2020-01-01' AND '2023-01-01';

  --Tramite una query parametrica che identifichi il tipo di impiego, visualizzare tutti gli impiegati che corrispondono a quel tipo di impiego; 
  --DECLARE @TipoImpiego varchar(50)
  --SET @TipoImpiego = 'Sviluppatore software';
  --SELECT * FROM Impiegato
  --JOIN Impiego ON IdImpiegato = IDImpiego
  --WHERE TipoImpiego = @TipoImpiego

  --Visualizzare l’età media dei lavoratori all’interno dell’azienda. 
  --SELECT AVG(Eta) AS EtaMedia FROM Impiegato;

  --Memorizzazione di un nuovo impiegato 
--CREATE PROCEDURE NuovoImpiegato @Cognome varchar(50), @Nome varchar(50), @CF varchar(16), @Eta int, @Reddito money, @Detrazioni bit
--AS
--BEGIN
--	INSERT INTO Impiegato (Cognome, Nome, CF, Eta, RedditoMensile, Detrazioni) 
--    VALUES (@Cognome, @Nome, @CF, @Eta, @Reddito, @Detrazioni)
--END
--GO

--Aggiornamento di un nuovo impiegato 
--CREATE PROCEDURE AggiornamentoImpiegato @Cognome varchar(50), @Nome varchar(50), @CF varchar(16), @Eta int, @Reddito money, @Detrazioni bit
--AS
--BEGIN
--	UPDATE Impiegato SET Cognome = @Cognome,  Nome = @Nome, CF = @CF, Eta = @Eta, RedditoMensile = @Reddito, Detrazioni = @Detrazioni 
--END
--GO

--Eliminazione di un impiegato 
--CREATE PROCEDURE EliminazioneImpiegato @idImpiegato int
--AS
--BEGIN
--	DELETE FROM Impiegato WHERE IdImpiegato = @idImpiegato
--END
--GO