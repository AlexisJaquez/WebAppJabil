IF EXISTS (SELECT * 
	   FROM   master..sysdatabases 
	   WHERE  name = N'Materials')
	DROP DATABASE Materials
GO

CREATE DATABASE Materials
GO