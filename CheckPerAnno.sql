USE [Polizia]
GO
/****** Object:  StoredProcedure [dbo].[CheckPerAnno]    Script Date: 09/02/2024 13:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[CheckPerAnno]
	@Year int 
AS
BEGIN
Select * from Verbali where Year(DataTrascrizioneVerbale) = @Year
END

