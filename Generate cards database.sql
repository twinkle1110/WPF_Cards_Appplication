/*

	All code and data belongs to Wise Owl, and must not be reproduced or distributed
	in any way without prior written permission
	
	Note that this code is not written as a training aid, but instead is just
	a means to create a SQL Server database on the user's computer
	
	Code assumes Cards database does not already exist
	
*/

USE Master
go

-- drop database if exists
BEGIN TRY
	DROP Database Cards
END TRY

BEGIN CATCH
	-- database can't exist
END CATCH

-- create new database
CREATE DATABASE Cards
go

USE Cards
GO

/****** Object:  Table [dbo].[tblSuit]    Script Date: 09/10/2012 16:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSuit](
	[SuitId] [int] IDENTITY(1,1) NOT NULL,
	[SuitName] [varchar](50) NULL,
 CONSTRAINT [PK_tblSuit] PRIMARY KEY CLUSTERED 
(
	[SuitId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblSuit] ON
INSERT [dbo].[tblSuit] ([SuitId], [SuitName]) VALUES (1, N'Spades')
INSERT [dbo].[tblSuit] ([SuitId], [SuitName]) VALUES (2, N'Hearts')
INSERT [dbo].[tblSuit] ([SuitId], [SuitName]) VALUES (3, N'Diamonds')
INSERT [dbo].[tblSuit] ([SuitId], [SuitName]) VALUES (4, N'Clubs')
SET IDENTITY_INSERT [dbo].[tblSuit] OFF
/****** Object:  Table [dbo].[tblPack]    Script Date: 09/10/2012 16:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPack](
	[PackId] [int] IDENTITY(1,1) NOT NULL,
	[PackName] [varchar](50) NULL,
	[DesignImage] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[Category1] [varchar](50) NULL,
	[Category2] [varchar](50) NULL,
	[Category3] [varchar](50) NULL,
	[Category4] [varchar](50) NULL,
 CONSTRAINT [PK_tblPack] PRIMARY KEY CLUSTERED 
(
	[PackId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblPack] ON
INSERT [dbo].[tblPack] ([PackId], [PackName], [DesignImage], [Description], [Category1], [Category2], [Category3], [Category4]) VALUES (1, N'Geeks', N'coffee.jpg', N'Computer geeks', N'Intelligence', N'Looks', N'Wealth', N'Personality')
INSERT [dbo].[tblPack] ([PackId], [PackName], [DesignImage], [Description], [Category1], [Category2], [Category3], [Category4]) VALUES (2, N'Animals', N'fluffy.jpg', N'Fluffy animals', N'Fluffiness', N'Cuteness', N'Size', N'Cost')
SET IDENTITY_INSERT [dbo].[tblPack] OFF
/****** Object:  Table [dbo].[tblNumber]    Script Date: 09/10/2012 16:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNumber](
	[NumberId] [int] IDENTITY(1,1) NOT NULL,
	[NumberName] [varchar](50) NULL,
 CONSTRAINT [PK_tblNumber] PRIMARY KEY CLUSTERED 
(
	[NumberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblNumber] ON
INSERT [dbo].[tblNumber] ([NumberId], [NumberName]) VALUES (1, N'Ace')
INSERT [dbo].[tblNumber] ([NumberId], [NumberName]) VALUES (2, N'Two')
INSERT [dbo].[tblNumber] ([NumberId], [NumberName]) VALUES (3, N'Three')
INSERT [dbo].[tblNumber] ([NumberId], [NumberName]) VALUES (4, N'Four')
INSERT [dbo].[tblNumber] ([NumberId], [NumberName]) VALUES (5, N'Five')
INSERT [dbo].[tblNumber] ([NumberId], [NumberName]) VALUES (6, N'Six')
INSERT [dbo].[tblNumber] ([NumberId], [NumberName]) VALUES (7, N'Seven')
INSERT [dbo].[tblNumber] ([NumberId], [NumberName]) VALUES (8, N'Eight')
INSERT [dbo].[tblNumber] ([NumberId], [NumberName]) VALUES (9, N'Nine')
INSERT [dbo].[tblNumber] ([NumberId], [NumberName]) VALUES (10, N'Ten')
INSERT [dbo].[tblNumber] ([NumberId], [NumberName]) VALUES (11, N'Jack')
INSERT [dbo].[tblNumber] ([NumberId], [NumberName]) VALUES (12, N'Queen')
INSERT [dbo].[tblNumber] ([NumberId], [NumberName]) VALUES (13, N'King')
SET IDENTITY_INSERT [dbo].[tblNumber] OFF
/****** Object:  Table [dbo].[tblCard]    Script Date: 09/10/2012 16:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCard](
	[CardId] [int] IDENTITY(1,1) NOT NULL,
	[PackId] [int] NULL,
	[CardTitle] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[Score1] [int] NULL,
	[Score2] [int] NULL,
	[Score3] [int] NULL,
	[Score4] [int] NULL,
	[ImageName] [varchar](50) NULL,
 CONSTRAINT [PK_tblCard] PRIMARY KEY CLUSTERED 
(
	[CardId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblCard] ON
INSERT [dbo].[tblCard] ([CardId], [PackId], [CardTitle], [Description], [Score1], [Score2], [Score3], [Score4], [ImageName]) VALUES (1, 1, N'Bill Gates', N'Bill Gates founded Microsoft with Paul Allen, and is now one of the world''s wealthiest men.', 20, 15, 500, 3, N'BillGates.jpg')
INSERT [dbo].[tblCard] ([CardId], [PackId], [CardTitle], [Description], [Score1], [Score2], [Score3], [Score4], [ImageName]) VALUES (2, 1, N'David Wakefield', N'Dave joined Wise Owl in 2000, and is one of the 3 directors.  His main hobby is gliding, although he likes cycling too.', 14, 22, 95, 7, N'dave.jpg')
INSERT [dbo].[tblCard] ([CardId], [PackId], [CardTitle], [Description], [Score1], [Score2], [Score3], [Score4], [ImageName]) VALUES (3, 1, N'Steve Jobs', N'Steve Jobs was the co-founder of Apple, and went on to become a legendary figure in the computing industry before he died of kidney problems on October 5th 2001.', 18, 55, 450, 8, N'SteveJobs.jpg')
INSERT [dbo].[tblCard] ([CardId], [PackId], [CardTitle], [Description], [Score1], [Score2], [Score3], [Score4], [ImageName]) VALUES (4, 2, N'Sheapey', N'Sheapey is quite old by fluffy toy standards (5), and has been cleaned and restuffed several times.', 5, 5, 6, 14, N'sheapey.jpg')
SET IDENTITY_INSERT [dbo].[tblCard] OFF
/****** Object:  Table [dbo].[tblPlayingCard]    Script Date: 09/10/2012 16:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPlayingCard](
	[PlayingCardId] [int] NULL,
	[SuitId] [int] NULL,
	[NumberId] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 1, 1)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 1, 2)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 1, 3)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 1, 4)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 1, 5)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 1, 6)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 1, 7)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 1, 8)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 1, 9)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 1, 10)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 1, 11)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 1, 12)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 1, 13)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 2, 1)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 2, 2)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 2, 3)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 2, 4)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 2, 5)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 2, 6)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 2, 7)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 2, 8)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 2, 9)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 2, 10)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 2, 11)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 2, 12)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 2, 13)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 3, 1)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 3, 2)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 3, 3)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 3, 4)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 3, 5)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 3, 6)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 3, 7)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 3, 8)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 3, 9)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 3, 10)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 3, 11)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 3, 12)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 3, 13)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 4, 1)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 4, 2)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 4, 3)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 4, 4)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 4, 5)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 4, 6)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 4, 7)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 4, 8)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 4, 9)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 4, 10)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 4, 11)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 4, 12)
INSERT [dbo].[tblPlayingCard] ([PlayingCardId], [SuitId], [NumberId]) VALUES (NULL, 4, 13)
/****** Object:  View [dbo].[vwPlayingCard]    Script Date: 09/10/2012 16:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwPlayingCard]
AS

SELECT
	n.NumberName + ' of ' + lower(s.SuitName) AS Card,
	n.NumberName AS Number,
	s.SuitName as Suit
FROM
	tblPlayingCard AS pc
	INNER JOIN tblSuit AS s ON pc.SuitId=s.SuitId
	INNER JOIN tblNumber AS n ON pc.NumberId=n.NumberId
GO
/****** Object:  View [dbo].[vwCard]    Script Date: 09/10/2012 16:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwCard]
AS
SELECT     c.CardId, c.CardTitle, c.ImageName, p.PackName, c.PackId, c.Description, p.Category1, p.Category2, p.Category3, p.Category4, c.Score1, c.Score2, c.Score3, 
                      c.Score4
FROM         dbo.tblCard AS c INNER JOIN
                      dbo.tblPack AS p ON c.PackId = p.PackId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "c"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 206
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "p"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 208
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwCard'
GO
/****** Object:  ForeignKey [FK_tblCard_tblPack]    Script Date: 09/10/2012 16:54:38 ******/
ALTER TABLE [dbo].[tblCard]  WITH CHECK ADD  CONSTRAINT [FK_tblCard_tblPack] FOREIGN KEY([PackId])
REFERENCES [dbo].[tblPack] ([PackId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblCard] CHECK CONSTRAINT [FK_tblCard_tblPack]
GO
/****** Object:  ForeignKey [FK_tblPlayingCard_tblNumber]    Script Date: 09/10/2012 16:54:38 ******/
ALTER TABLE [dbo].[tblPlayingCard]  WITH CHECK ADD  CONSTRAINT [FK_tblPlayingCard_tblNumber] FOREIGN KEY([NumberId])
REFERENCES [dbo].[tblNumber] ([NumberId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblPlayingCard] CHECK CONSTRAINT [FK_tblPlayingCard_tblNumber]
GO
/****** Object:  ForeignKey [FK_tblPlayingCard_tblSuit]    Script Date: 09/10/2012 16:54:38 ******/
ALTER TABLE [dbo].[tblPlayingCard]  WITH CHECK ADD  CONSTRAINT [FK_tblPlayingCard_tblSuit] FOREIGN KEY([SuitId])
REFERENCES [dbo].[tblSuit] ([SuitId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblPlayingCard] CHECK CONSTRAINT [FK_tblPlayingCard_tblSuit]
GO
