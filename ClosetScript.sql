USE [Wardrobe]
GO

/****** Object:  Table [dbo].[Closet]    Script Date: 10/17/2016 9:29:54 PM ******/
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

