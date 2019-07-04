USE myDatabase
GO

/****** 
Object:  Table [dbo].[Athletes]    
Script Date: 04/07/2019 
******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Athletes](
	[Name] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[Age] [tinyint] NULL,
	[Height] [float] NULL,
	[Weight] [float] NULL,
	[Sex] [nvarchar](255) NULL,
	[DoB] [datetime] NULL,
	[PlaceOfBirth] [nvarchar](255) NULL,
	[Gold] [tinyint] NULL,
	[Silver] [tinyint] NULL,
	[Bronze] [tinyint] NULL,
	[Total] [tinyint] NULL,
	[Sport] [nvarchar](255) NULL,
	[Event] [nvarchar](255) NULL
) ON [PRIMARY]
GO