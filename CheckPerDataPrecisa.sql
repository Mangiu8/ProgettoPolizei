
CREATE PROCEDURE CheckPerDataPrecisa
@DataViolazione Date
AS
BEGIN
	Select sum(DecurtamentoPunti) as TotalePuntiDecurtatiQuelGiorno from Verbali
	where DataViolazione = @DataViolazione
END
GO
