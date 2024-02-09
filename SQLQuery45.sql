USE [Verbali_Polizia]
GO
/****** Object:  StoredProcedure [dbo].[NUMERO_VERBALI_ANNUI]    Script Date: 09/02/2024 16:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--1) Una SP parametrica che, ricevendo in input un anno, visualizzi l’elenco delle contravvenzioni effettuate in un quel determinato anno, 
ALTER PROCEDURE 
[dbo].[NUMERO_VERBALI_ANNUI](@ANNO INT)
AS

BEGIN
SELECT ID_VERBALE FROM VERBALE
WHERE YEAR(DATA_VIOLAZIONE) = @ANNO
END
