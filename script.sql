USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 10/21/2016 9:44:36 AM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 10/21/2016 9:44:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](20) NOT NULL,
	[Season] [nvarchar](20) NOT NULL,
	[Occassion] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 10/21/2016 9:44:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](20) NOT NULL,
	[Season] [nvarchar](20) NOT NULL,
	[Occassion] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[photo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Closet]    Script Date: 10/21/2016 9:44:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Closet](
	[ClosetID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Closet] PRIMARY KEY CLUSTERED 
(
	[ClosetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 10/21/2016 9:44:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](20) NOT NULL,
	[Season] [nvarchar](20) NOT NULL,
	[Occassion] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[photo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 10/21/2016 9:44:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](20) NOT NULL,
	[Season] [nvarchar](20) NOT NULL,
	[Occassion] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Color], [Season], [Occassion], [Description], [Photo]) VALUES (2, N'Gemstone Earrings', N'Multicolor', N'All-Season', N'All occassion', N'Glitter and Color', N'~/images/Earrings.jpg')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Color], [Season], [Occassion], [Description], [Photo]) VALUES (3, N'Dangle Earrings', N'Gold and Silver', N'All-Season', N'All occassion', N'Beautiful dangle earrings with many shapes', N'~/images/Earrings2.jpg')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Color], [Season], [Occassion], [Description], [Photo]) VALUES (5, N'Necklaces', N'Gold', N'All-Season', N'All occassion', N'Great to dress up a low cut dress', N'~/images/necklace.jpg')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [Name], [Color], [Season], [Occassion], [Description], [photo]) VALUES (4, N'Jeans', N'Blue', N'All-Season', N'Casual', N'Jeans. ', N'~/images/Jeans.jpg')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Color], [Season], [Occassion], [Description], [photo]) VALUES (5, N'Skinny Jeans', N'Black', N'Summer/Fall', N'Casual', N'Black jeans with rips', N'~/images/skinnyjeans.jpg')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Closet] ON 

INSERT [dbo].[Closet] ([ClosetID], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (5, 1, 4, 1, 2)
INSERT [dbo].[Closet] ([ClosetID], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (6, 2, 5, 5, 3)
SET IDENTITY_INSERT [dbo].[Closet] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [Name], [Color], [Season], [Occassion], [Description], [photo]) VALUES (1, N'Strappy Heels', N'Tan', N'Summer', N'Casual', N'Wedge Heel with straps around the ankle', N'~/images/heels.jpg')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Color], [Season], [Occassion], [Description], [photo]) VALUES (5, N'Black Platform', N'Black', N'All-Season', N'Formal', N'High Heel Platforms', N'~/images/BlackPlatform.jpg')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Color], [Season], [Occassion], [Description], [photo]) VALUES (6, N'Tennis Shoes', N'Black', N'All-Season', N'Casual', N'Great for workouts and running errands', N'~/images/tennisShoe.jpg')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Color], [Season], [Occassion], [Description], [photo]) VALUES (7, N'Boots', N'Tan', N'Winter/Fall', N'All occassion', N'Great with jeans or to dress up a skirt', N'~/images/TanBoot.jpg')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Color], [Season], [Occassion], [Description], [photo]) VALUES (8, N'Work Pumps', N'Black', N'All-Season', N'Professional', N'Great work pumps for daily wear', N'~/images/LowPump.jpg')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [Name], [Color], [Season], [Occassion], [Description], [Photo]) VALUES (1, N'We Out! T-shirt', N'Black and White', N'All Year', N'Casual', N'Fun and Factual', N'~/images/WeOut.jpg')
INSERT [dbo].[Tops] ([TopID], [Name], [Color], [Season], [Occassion], [Description], [Photo]) VALUES (2, N'Button Down Shirt', N'Blue and White', N'Summer', N'Casual', N'Perfect for jeans or leggins', N'~/images/buttonShirt.jpg')
INSERT [dbo].[Tops] ([TopID], [Name], [Color], [Season], [Occassion], [Description], [Photo]) VALUES (4, N'High-5', N'Brown and orange', N'All-Season', N'Casual', N'Webster Slaughter and Reggie Langhorn', N'~/images/High5.jpg')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Closet]  WITH CHECK ADD  CONSTRAINT [FK_Closet_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Closet] CHECK CONSTRAINT [FK_Closet_Accessories]
GO
ALTER TABLE [dbo].[Closet]  WITH CHECK ADD  CONSTRAINT [FK_Closet_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Closet] CHECK CONSTRAINT [FK_Closet_Bottoms]
GO
ALTER TABLE [dbo].[Closet]  WITH CHECK ADD  CONSTRAINT [FK_Closet_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Closet] CHECK CONSTRAINT [FK_Closet_Shoes]
GO
ALTER TABLE [dbo].[Closet]  WITH CHECK ADD  CONSTRAINT [FK_Closet_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Closet] CHECK CONSTRAINT [FK_Closet_Tops]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO
