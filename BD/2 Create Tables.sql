USE [Materials]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
IF OBJECT_ID('[dbo].[Buildings]', 'U') IS NOT NULL 
  DROP TABLE [dbo].[Buildings];

CREATE TABLE [dbo].[Buildings](
	[PKBuilding] [int] IDENTITY(1,1) NOT NULL,
	[Building] [varchar](100) NOT NULL
	
 CONSTRAINT [PK_Buildings] PRIMARY KEY CLUSTERED 
(
	[PKBuilding] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------------------------------------------------------------------------------------

USE [Materials]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
IF OBJECT_ID('[dbo].[Customers]', 'U') IS NOT NULL 
  DROP TABLE [dbo].[Customers];

CREATE TABLE [dbo].[Customers](
	[PKCustomers] [int] IDENTITY(1,1) NOT NULL,
	[Customer] [varchar](100) NOT NULL,
	[Prefix] [varchar](5) NOT NULL,
	[FKBuilding] [int] NOT NULL
	
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[PKCustomers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------------------------------------------------------------------------------------

USE [Materials]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
IF OBJECT_ID('[dbo].[PartNumbers]', 'U') IS NOT NULL 
  DROP TABLE [dbo].[PartNumbers];

CREATE TABLE [dbo].[PartNumbers](
	[PKPartNumber] [int] IDENTITY(1,1) NOT NULL,
	[PartNumber] [varchar](100) NOT NULL,
	[FKCustomers] [int] NOT NULL,
	[Available] [bit] NOT NULL
	
 CONSTRAINT [PK_PartNumbers] PRIMARY KEY CLUSTERED 
(
	[PKPartNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-------------------------------------------------------------------------------------------------------------------
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Buildings1] FOREIGN KEY(FKBuilding)
REFERENCES [dbo].[Buildings] (PKBuilding)
GO

ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Buildings1]
GO
-------------------------------------------------------------------------------------------------------------------
ALTER TABLE [dbo].[PartNumbers]  WITH CHECK ADD  CONSTRAINT [FK_PartNumbers_Customers1] FOREIGN KEY(FKCustomers)
REFERENCES [dbo].[Customers] (PKCustomers)
GO

ALTER TABLE [dbo].[PartNumbers] CHECK CONSTRAINT [FK_PartNumbers_Customers1]
GO