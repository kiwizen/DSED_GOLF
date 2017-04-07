USE [MyFirstDatabase]
GO
/****** Object:  Database [DSED_GOLFFromScript]    Script Date: 26/03/2014 1:35:05 p.m. ******/
CREATE DATABASE [DSED_GOLF] ON  PRIMARY 
( NAME = N'DSED_GOLF', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.DEV\MSSQL\DATA\DSED_GOLF.mdf' , SIZE = 5000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DSED_GOLF_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.DEV\MSSQL\DATA\DSED_GOLF_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DSED_GOLF] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DSED_GOLF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DSED_GOLF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DSED_GOLF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DSED_GOLF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DSED_GOLF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DSED_GOLF] SET ARITHABORT OFF 
GO
ALTER DATABASE [DSED_GOLF] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DSED_GOLF] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DSED_GOLF] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DSED_GOLF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DSED_GOLF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DSED_GOLF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DSED_GOLF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DSED_GOLF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DSED_GOLF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DSED_GOLF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DSED_GOLF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DSED_GOLF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DSED_GOLF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DSED_GOLF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DSED_GOLF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DSED_GOLF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DSED_GOLF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DSED_GOLF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DSED_GOLF] SET RECOVERY FULL 
GO
ALTER DATABASE [DSED_GOLF] SET  MULTI_USER 
GO
ALTER DATABASE [DSED_GOLF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DSED_GOLF] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DSED_GOLF', N'ON'
GO
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

GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (1, N'Green', N'Jane', N'Mrs', N'F', CAST(0x0000688E00000000 AS DateTime), N'432 River Road', N'Avonhead', N'Christchurch', 1, 12)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (2, N'Birch', N'Michael', N'Mr', N'M', CAST(0x00005F0F00000000 AS DateTime), N'78 Pinewood Avenue', N'Avonhead', N'Akaroa', 0, 19)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (3, N'Sharpe', N'Mathew James', N'Mr', N'M', CAST(0x0000747200000000 AS DateTime), N'123 Clarence Street', N'Spreydon', N'Christchurch', 0, 6)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (4, N'Lee', N'Kim Soon', N'Mrs', N'F', CAST(0x00002D2800000000 AS DateTime), N'67  Meadow View Street', N'Avonhead', N'Christchurch', 1, 30)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (5, N'Birdwood', N'Reginald Ross', N'Mr', N'M', CAST(0x000061E900000000 AS DateTime), N'67 Bay Road', N'Merivale', N'Christchurch', 1, 31)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (6, N'Taylor', N'Rachel', N'Ms', N'F', CAST(0x0000635600000000 AS DateTime), N'56 English Street', N'Merivale', N'Christchurch', 0, 0)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (7, N'Thompson', N'Jeanette Jane', N'Ms', N'F', CAST(0x000057EE00000000 AS DateTime), N'678 Highpark Road', N'Avonhead', N'Rangiora', 1, 6)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (8, N'Manakau', N'Rangi', N'Mr', N'M', CAST(0x00005F0F00000000 AS DateTime), N'365 Memorial Avenue', N'Merivale', N'Christchurch', 0, 12)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (9, N'Hayes', N'Linda Judith', N'Miss', N'F', CAST(0x00007D0000000000 AS DateTime), N'567 Seaview Road', N'New Brighton', N'Christchurch', 0, 17)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (10, N'Drinkwater', N'Sarah-Jane', N'Mrs', N'F', CAST(0x0000232D00000000 AS DateTime), N'4 Brickworks Road', N'Avonhead', N'Christchurch', 1, 17)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (11, N'Johnstone', N'Brian Bruce', N'Mr', N'M', CAST(0x000064C300000000 AS DateTime), N'454 Madras Street', N'city', N'Christchurch', 1, 32)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (12, N'Robertson', N'Melissa Jane', N'Ms', N'F', CAST(0x00005AC800000000 AS DateTime), N'560 Valley Road', N'Heathcote', N'Christchurch', 1, 4)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (13, N'Clark', N'Harry', N'Mr', N'M', CAST(0x000032DC00000000 AS DateTime), N'78 Dogsbark Road', N'New Brighton', N'Christchurch', 0, 26)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (14, N'Gordon', N'Haley', N'Mr', N'M', CAST(0x00005C3500000000 AS DateTime), N'45 Gloucester Street', N'city', N'Christchurch', 1, 36)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (15, N'Bolger', N'Jack Fred', N'Mr', N'M', CAST(0x0000249A00000000 AS DateTime), N'345 Lyttelton Street', N'Spreydon', N'Rangiora', 1, 19)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (16, N'Green', N'Percival James', N'Mr', N'M', CAST(0x0000316F00000000 AS DateTime), N'5 Riccarton Road', N'Riccarton', N'Akaroa', 1, 5)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (17, N'Black', N'Mary Jane', N'Ms', N'F', CAST(0x00003CD700000000 AS DateTime), N'324 Selwyn Street', N'Spreydon', N'Akaroa', 0, 12)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (18, N'Lee', N'Sun Soon', N'Mrs', N'F', CAST(0x00003E4400000000 AS DateTime), N'45 Rose Street', N'Spreydon', N'Christchurch', 0, 14)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (19, N'Kingi', N'Hone James', N'Mr', N'M', CAST(0x000043F800000000 AS DateTime), N'45 Papanui Road', N'Papanui', N'Christchurch', 0, 23)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (20, N'Lassiter', N'Lucy Anne', N'Ms', N'F', CAST(0x000075DF00000000 AS DateTime), N'76 Parkhouse Road', N'New Brighton', N'Christchurch', 1, 13)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (21, N'Baker', N'Janet Jane', N'Mrs', N'F', CAST(0x00007A2600000000 AS DateTime), N'571 Victoria Avenue', N'city', N'Christchurch', 0, 33)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (22, N'Wilder', N'Mary Tania', N'Mrs', N'F', CAST(0x0000730500000000 AS DateTime), N'574 Colombo Street', N'Sydenem', N'Christchurch', 1, 19)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (23, N'Harris', N'Rachel', N'Ms', N'F', CAST(0x000064C300000000 AS DateTime), N'76 Hagley Avenue', N'city', N'Rangiora', 0, 25)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (24, N'Hussein', N'Mohammad', N'Mr', N'M', CAST(0x00001EE600000000 AS DateTime), N'765 Spot Street', N'Heathcote', N'Christchurch', 1, 12)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (25, N'Green', N'Nina', N'Mrs', N'F', CAST(0x0000595B00000000 AS DateTime), N'67 Selwyn Street', N'Spreydon', N'Christchurch', 0, 13)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (26, N'Mc Kenzie', N'James', N'Mr', N'M', CAST(0x0000635600000000 AS DateTime), N'69 Avonside Drive', N'Avonside', N'Christchurch', 1, 21)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (27, N'Park', N'Soo-Yang', N'Mr', N'M', CAST(0x00004DF300000000 AS DateTime), N'123 Waimairi Road', N'Avonhead', N'Christchurch', 1, 23)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (28, N'Morgan', N'Pamela Jane', N'Ms', N'F', CAST(0x00005AC800000000 AS DateTime), N'5 Clyde Road', N'Papanui', N'Christchurch', 0, 4)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (29, N'Simons', N'Simon', N'Mr', N'M', CAST(0x0000249A00000000 AS DateTime), N'45 Westside Drive', N'Papanui', N'Rangiora', 1, 34)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (30, N'Yoo', N'Hee Koon', N'Mr', N'M', CAST(0x000032DC00000000 AS DateTime), N'45 Linwood Avenue', N'Linwood', N'Christchurch', 0, 17)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (31, N'Blunt', N'Tina Jane', N'Ms', N'F', CAST(0x00006BE400000000 AS DateTime), N'45 Jacksons Road, Christchurch', N'Spreydon', N'Christchurch', 1, 32)
GO
INSERT [dbo].[golf] ([ID], [Surname], [Firstname], [Title], [Gender], [DOB], [Street], [Suburb], [City], [Available week days], [Handicap]) VALUES (32, N'Jacobs', N'Richard John', N'Mr', N'M', CAST(0x000046D200000000 AS DateTime), N'78 Riverside Drive, Christchurch', N'Avonhead', N'Christchurch', 0, 9)
GO
USE [master]
GO
ALTER DATABASE [DSED_GOLF] SET  READ_WRITE 
GO
