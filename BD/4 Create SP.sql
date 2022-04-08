	USE [Materials]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF OBJECT_ID('[Busqueda]', 'P') IS NOT NULL
DROP PROCEDURE [Busqueda];
GO

	CREATE	PROCEDURE [dbo].[Busqueda]
	 @Part varchar(50) 
	AS
	BEGIN
	SELECT  pn.PartNumber, c.Customer , b.Building FROM dbo.PartNumbers pn 
	INNER JOIN	dbo.Customers c ON pn.FKCustomers = c.PKCustomers 
	JOIN dbo.Buildings b	ON   b.PKBuilding = c.FKBuilding  
	WHERE pn.PartNumber = @Part OR c.Customer = @Part
	END

