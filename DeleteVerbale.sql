USE [Polizia]
GO
/****** Object:  StoredProcedure [dbo].[DeleteVerbale]    Script Date: 09/02/2024 13:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[DeleteVerbale]
@IDVerbale int
AS
BEGIN
Delete from Verbali where IDVerbale = @IDVerbale
END

