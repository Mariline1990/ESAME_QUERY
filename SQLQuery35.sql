USE [Verbali_Polizia]
GO
/****** Object:  StoredProcedure [dbo].[DECURTAMENTO_PUNTI_GIORNALIERO]    Script Date: 09/02/2024 16:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 2) Una SP parametrica che, ricevendo in input una data, visualizzi il totale dei punti decurtati in quella determinata data, 
ALTER PROCEDURE 
[dbo].[DECURTAMENTO_PUNTI_GIORNALIERO](@DATA DATE)

AS 
BEGIN

SELECT SUM(DECURTAMENTO_PUNTI)AS TOTALE FROM VERBALE 
WHERE DATA_VIOLAZIONE = @DATA

END
