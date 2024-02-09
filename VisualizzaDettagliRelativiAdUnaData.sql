USE [Polizia]
GO
/****** Object:  StoredProcedure [dbo].[VisualizzaDatiRelativiAdUnaData]    Script Date: 09/02/2024 12:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[VisualizzaDatiRelativiAdUnaData]
@DataViolazione DATE
AS
BEGIN
	Select DataViolazione, Importo, DecurtamentoPunti from Verbali
	where DataViolazione = @DataViolazione;
END;

