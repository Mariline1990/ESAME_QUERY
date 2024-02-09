USE [Verbali_Polizia]
GO
/****** Object:  StoredProcedure [dbo].[DELETE_NOW]    Script Date: 09/02/2024 16:26:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Una SP che consenta di eliminare un determinato verbale identificandolo con il proprio identificativo. 

ALTER PROCEDURE 
[dbo].[DELETE_NOW](@ID_VERBALE int)

AS
BEGIN

DELETE  FROM VERBALE  WHERE ID_VERBALE = @ID_VERBALE

END
