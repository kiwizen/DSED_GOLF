USE [DSED_GOLF]
GO
/****** Object:  Table [dbo].[golf]    Script Date: 26/03/2014 1:35:07 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[golf](
	[ID] [int] NOT NULL,
	[Surname] [nvarchar](50) NULL,
	[Firstname] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[DOB] [datetime] NULL,
	[Street] [nvarchar](50) NULL,
	[Suburb] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Available week days] [bit] NOT NULL,
	[Handicap] [int] NULL
) ON [PRIMARY]
