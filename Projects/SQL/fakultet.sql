USE [fakultet]
GO
/****** Object:  Table [dbo].[Firma]    Script Date: 31/03/2020 16:33:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Firma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [varchar](255) NULL,
	[oib] [char](11) NULL,
	[adresa] [varchar](255) NULL,
	[telefon] [varchar](50) NULL,
	[idMjesto] [int] NULL,
	[web] [varchar](255) NULL,
 CONSTRAINT [PK_Firma] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mjesto]    Script Date: 31/03/2020 16:33:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mjesto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[naziv] [varchar](255) NULL,
	[postanskibroj] [varchar](20) NULL,
 CONSTRAINT [PK_Mjesto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Osoba]    Script Date: 31/03/2020 16:33:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Osoba](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ime] [varchar](50) NOT NULL,
	[prezime] [varchar](50) NOT NULL,
	[oib] [char](11) NULL,
	[adresa] [varchar](255) NULL,
	[telefon] [varchar](50) NULL,
	[mobitel] [varchar](50) NULL,
	[e-mail] [varchar](50) NULL,
	[idMjesto] [int] NULL,
	[datumRodenja] [datetime] NULL,
 CONSTRAINT [PK_Osoba] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OsobaPredmet]    Script Date: 31/03/2020 16:33:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OsobaPredmet](
	[idOsoba] [int] NOT NULL,
	[idPredmet] [int] NOT NULL,
 CONSTRAINT [PK_OsobaPredmet] PRIMARY KEY CLUSTERED 
(
	[idOsoba] ASC,
	[idPredmet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Predavac]    Script Date: 31/03/2020 16:33:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Predavac](
	[id] [int] NOT NULL,
	[titula] [varchar](20) NULL,
	[datumZaposlenja] [datetime] NULL,
	[ziroracun] [varchar](50) NULL,
 CONSTRAINT [PK_Predavac] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Predmet]    Script Date: 31/03/2020 16:33:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Predmet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [varchar](50) NULL,
	[ects] [int] NULL,
	[godina] [int] NOT NULL,
 CONSTRAINT [PK_Predmet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 31/03/2020 16:33:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] NOT NULL,
	[datumUpisa] [datetime] NULL,
	[maticniBroj] [varchar](20) NULL,
	[napomena] [varchar](max) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Mjesto] ON 

INSERT [dbo].[Mjesto] ([id], [naziv], [postanskibroj]) VALUES (1, N'Zagreb', N'10000')
INSERT [dbo].[Mjesto] ([id], [naziv], [postanskibroj]) VALUES (2, N'Split', N'21000')
INSERT [dbo].[Mjesto] ([id], [naziv], [postanskibroj]) VALUES (3, N'Zadar', N'23000')
SET IDENTITY_INSERT [dbo].[Mjesto] OFF
SET IDENTITY_INSERT [dbo].[Osoba] ON 

INSERT [dbo].[Osoba] ([id], [ime], [prezime], [oib], [adresa], [telefon], [mobitel], [e-mail], [idMjesto], [datumRodenja]) VALUES (1, N'Pero', N'Peric', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[Osoba] ([id], [ime], [prezime], [oib], [adresa], [telefon], [mobitel], [e-mail], [idMjesto], [datumRodenja]) VALUES (2, N'Ivo', N'Ivic', NULL, NULL, NULL, NULL, NULL, 2, NULL)
INSERT [dbo].[Osoba] ([id], [ime], [prezime], [oib], [adresa], [telefon], [mobitel], [e-mail], [idMjesto], [datumRodenja]) VALUES (3, N'Ana', N'Anic', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Osoba] OFF
ALTER TABLE [dbo].[Firma]  WITH CHECK ADD  CONSTRAINT [FK_Firma_Mjesto] FOREIGN KEY([idMjesto])
REFERENCES [dbo].[Mjesto] ([id])
GO
ALTER TABLE [dbo].[Firma] CHECK CONSTRAINT [FK_Firma_Mjesto]
GO
ALTER TABLE [dbo].[Osoba]  WITH CHECK ADD  CONSTRAINT [FK_Osoba_Mjesto] FOREIGN KEY([idMjesto])
REFERENCES [dbo].[Mjesto] ([id])
GO
ALTER TABLE [dbo].[Osoba] CHECK CONSTRAINT [FK_Osoba_Mjesto]
GO
ALTER TABLE [dbo].[OsobaPredmet]  WITH CHECK ADD  CONSTRAINT [FK_OsobaPredmet_Osoba] FOREIGN KEY([idOsoba])
REFERENCES [dbo].[Osoba] ([id])
GO
ALTER TABLE [dbo].[OsobaPredmet] CHECK CONSTRAINT [FK_OsobaPredmet_Osoba]
GO
ALTER TABLE [dbo].[OsobaPredmet]  WITH CHECK ADD  CONSTRAINT [FK_OsobaPredmet_Predmet] FOREIGN KEY([idPredmet])
REFERENCES [dbo].[Predmet] ([id])
GO
ALTER TABLE [dbo].[OsobaPredmet] CHECK CONSTRAINT [FK_OsobaPredmet_Predmet]
GO
ALTER TABLE [dbo].[Predavac]  WITH CHECK ADD  CONSTRAINT [FK_Predavac_Osoba] FOREIGN KEY([id])
REFERENCES [dbo].[Osoba] ([id])
GO
ALTER TABLE [dbo].[Predavac] CHECK CONSTRAINT [FK_Predavac_Osoba]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Osoba] FOREIGN KEY([id])
REFERENCES [dbo].[Osoba] ([id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Osoba]
GO
ALTER TABLE [dbo].[Osoba]  WITH CHECK ADD  CONSTRAINT [CK_Osoba] CHECK  ((len([oib])=(11)))
GO
ALTER TABLE [dbo].[Osoba] CHECK CONSTRAINT [CK_Osoba]
GO
ALTER TABLE [dbo].[Osoba]  WITH CHECK ADD  CONSTRAINT [CK_Osoba_DatumRodenja] CHECK  (([datumRodenja]<getdate()))
GO
ALTER TABLE [dbo].[Osoba] CHECK CONSTRAINT [CK_Osoba_DatumRodenja]
GO
