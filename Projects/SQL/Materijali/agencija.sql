
USE [agencija]
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 24/03/2020 22:24:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[IdAgent] [int] NOT NULL,
	[Ime] [nvarchar](25) NULL,
	[Prezime] [nvarchar](25) NULL,
	[Adresa] [nvarchar](50) NULL,
	[Grad] [nvarchar](30) NULL,
	[Drzava] [nvarchar](2) NULL,
	[PostanskiBroj] [nvarchar](10) NULL,
	[Telefon] [nvarchar](15) NULL,
	[DatumAngaziranja] [datetime] NULL,
	[Placa] [money] NULL,
	[Provizija] [real] NULL,
	[upsize_ts] [timestamp] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Angazman]    Script Date: 24/03/2020 22:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Angazman](
	[BrojAngazmana] [smallint] NOT NULL,
	[PocetniDatum] [datetime] NULL,
	[ZavrsniDatum] [datetime] NULL,
	[UgovorenaCijena] [money] NULL,
	[IdKlijent] [int] NULL,
	[IdAgent] [int] NULL,
	[IdIzvodac] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clanovi]    Script Date: 24/03/2020 22:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clanovi](
	[IdClan] [int] NOT NULL,
	[Ime] [nvarchar](25) NULL,
	[Prezime] [nvarchar](25) NULL,
	[Telefon] [nvarchar](15) NULL,
	[Spol] [nvarchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Izvodac]    Script Date: 24/03/2020 22:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Izvodac](
	[IdIzvodac] [int] NOT NULL,
	[Naziv] [nvarchar](50) NULL,
	[Adresa] [nvarchar](50) NULL,
	[Grad] [nvarchar](30) NULL,
	[Drzava] [nvarchar](2) NULL,
	[PostanskIBroj] [nvarchar](10) NULL,
	[Telefon] [nvarchar](15) NULL,
	[Web] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DatumUnosa] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Izvodac_Clanovi]    Script Date: 24/03/2020 22:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Izvodac_Clanovi](
	[IdIzvodac] [int] NOT NULL,
	[IdClan] [int] NOT NULL,
	[Status] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Izvodac_Zanr]    Script Date: 24/03/2020 22:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Izvodac_Zanr](
	[IdIzvodac] [int] NOT NULL,
	[IdZanr] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klijent]    Script Date: 24/03/2020 22:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klijent](
	[IdKlijent] [int] NOT NULL,
	[Ime] [nvarchar](25) NULL,
	[Prezime] [nvarchar](25) NULL,
	[Adresa] [nvarchar](50) NULL,
	[Grad] [nvarchar](30) NULL,
	[Drzava] [nvarchar](2) NULL,
	[PostanskiBroj] [nvarchar](10) NULL,
	[Telefon] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klijent_Preference]    Script Date: 24/03/2020 22:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klijent_Preference](
	[IdKlijent] [int] NOT NULL,
	[IdZanr] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuzickiZanr]    Script Date: 24/03/2020 22:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuzickiZanr](
	[IdZanr] [smallint] NOT NULL,
	[NazivZanra] [nvarchar](75) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Agent] ([IdAgent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon], [DatumAngaziranja], [Placa], [Provizija]) VALUES (1, N'Will', N'Thompson', N'122 Spring River Drive', N'Redmond', N'WA', N'98053', N'555-2681', NULL, 0.0000, 0.25)
INSERT [dbo].[Agent] ([IdAgent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon], [DatumAngaziranja], [Placa], [Provizija]) VALUES (2, N'Steven', N'Buchanan', N'66 Spring Valley Drive', N'Seattle', N'WA', N'98125', N'555-2666', NULL, 0.0000, 0.2)
INSERT [dbo].[Agent] ([IdAgent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon], [DatumAngaziranja], [Placa], [Provizija]) VALUES (3, N'Margaret', N'Peacock', N'667 Red River Road', N'Bellevue', N'WA', N'98006', N'555-2571', NULL, 0.0000, 0.25)
INSERT [dbo].[Agent] ([IdAgent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon], [DatumAngaziranja], [Placa], [Provizija]) VALUES (4, N'Karen', N'Smith', N'30301 - 166th Ave. N.E.', N'Seattle', N'WA', N'98125', N'555-2551', NULL, 0.0000, 0.1)
INSERT [dbo].[Agent] ([IdAgent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon], [DatumAngaziranja], [Placa], [Provizija]) VALUES (5, N'Mary', N'Fuller', N'908 W. Capital Way', N'Tacoma', N'WA', N'98413', N'555-2606', NULL, 0.0000, 0.2)
INSERT [dbo].[Agent] ([IdAgent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon], [DatumAngaziranja], [Placa], [Provizija]) VALUES (6, N'John', N'Kennedy', N'16679 NE 41st Court', N'Seattle', N'WA', N'98125', N'555-2621', NULL, 0.0000, 0.1)
INSERT [dbo].[Agent] ([IdAgent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon], [DatumAngaziranja], [Placa], [Provizija]) VALUES (7, N'Gregory', N'Piercy', N'4501 Wetland Road', N'Redmond', N'WA', N'98052', N'555-0037', NULL, 0.0000, 0.15)
INSERT [dbo].[Agent] ([IdAgent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon], [DatumAngaziranja], [Placa], [Provizija]) VALUES (8, N'Consuelo', N'Maynez', N'3445 Cheyenne Road', N'Bellevue', N'WA', N'98006', N'555-2291', NULL, 0.0000, 0.3)
INSERT [dbo].[Agent] ([IdAgent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon], [DatumAngaziranja], [Placa], [Provizija]) VALUES (9, N'Tyler', N'Durden', NULL, N'Seattle', NULL, NULL, NULL, NULL, 0.0000, 0.18)
INSERT [dbo].[Agent] ([IdAgent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon], [DatumAngaziranja], [Placa], [Provizija]) VALUES (10, N'Novi', N'Agent', NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (1, CAST(N'2016-06-29T13:00:00.000' AS DateTime), CAST(N'2016-07-02T15:00:00.000' AS DateTime), 170.0000, 10014, 1, 1009)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (2, CAST(N'2016-06-29T13:00:00.000' AS DateTime), CAST(N'2016-07-03T15:00:00.000' AS DateTime), 200.0000, 10006, 4, 1004)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (3, CAST(N'2016-07-08T13:00:00.000' AS DateTime), CAST(N'2016-07-13T15:00:00.000' AS DateTime), 590.0000, 10001, 3, 1005)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (4, CAST(N'2016-07-09T20:00:00.000' AS DateTime), CAST(N'2016-07-16T00:00:00.000' AS DateTime), 470.0000, 10007, 3, 1004)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (5, CAST(N'2016-07-09T16:00:00.000' AS DateTime), CAST(N'2016-07-12T19:00:00.000' AS DateTime), 1130.0000, 10006, 5, 1003)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (6, CAST(N'2016-07-08T15:00:00.000' AS DateTime), CAST(N'2016-07-12T21:00:00.000' AS DateTime), 2300.0000, 10014, 7, 1008)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (7, CAST(N'2016-07-09T17:00:00.000' AS DateTime), CAST(N'2016-07-16T20:00:00.000' AS DateTime), 770.0000, 10004, 4, 1002)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (8, CAST(N'2016-07-16T20:00:00.000' AS DateTime), CAST(N'2016-07-23T23:00:00.000' AS DateTime), 1850.0000, 10006, 3, 1007)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (9, CAST(N'2016-07-16T19:00:00.000' AS DateTime), CAST(N'2016-07-26T21:00:00.000' AS DateTime), 1370.0000, 10010, 2, 1010)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (10, CAST(N'2016-07-15T13:00:00.000' AS DateTime), CAST(N'2016-07-24T17:00:00.000' AS DateTime), 3650.0000, 10005, 3, 1003)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (11, CAST(N'2016-07-13T18:00:00.000' AS DateTime), CAST(N'2016-07-15T00:00:00.000' AS DateTime), 950.0000, 10005, 4, 1008)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (12, CAST(N'2016-07-16T18:00:00.000' AS DateTime), CAST(N'2016-07-24T22:00:00.000' AS DateTime), 1670.0000, 10014, 8, 1001)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (13, CAST(N'2016-07-15T20:00:00.000' AS DateTime), CAST(N'2016-07-18T23:00:00.000' AS DateTime), 770.0000, 10003, 1, 1006)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (14, CAST(N'2016-07-22T16:00:00.000' AS DateTime), CAST(N'2016-07-27T22:00:00.000' AS DateTime), 2750.0000, 10001, 1, 1008)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (15, CAST(N'2016-07-22T17:00:00.000' AS DateTime), CAST(N'2016-07-27T19:00:00.000' AS DateTime), 770.0000, 10007, 1, 1013)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (16, CAST(N'2016-07-30T20:00:00.000' AS DateTime), CAST(N'2016-08-03T01:00:00.000' AS DateTime), 1550.0000, 10010, 5, 1013)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (17, CAST(N'2016-07-27T18:00:00.000' AS DateTime), CAST(N'2016-07-30T20:00:00.000' AS DateTime), 530.0000, 10002, 8, 1010)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (18, CAST(N'2016-07-27T17:00:00.000' AS DateTime), CAST(N'2016-08-02T22:00:00.000' AS DateTime), 575.0000, 10006, 4, 1009)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (19, CAST(N'2016-07-27T20:00:00.000' AS DateTime), CAST(N'2016-08-02T23:00:00.000' AS DateTime), 365.0000, 10009, 8, 1004)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (20, CAST(N'2016-07-29T18:00:00.000' AS DateTime), CAST(N'2016-08-02T20:00:00.000' AS DateTime), 800.0000, 10008, 4, 1007)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (21, CAST(N'2016-07-28T12:00:00.000' AS DateTime), CAST(N'2016-07-31T16:00:00.000' AS DateTime), 1490.0000, 10005, 1, 1003)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (22, CAST(N'2016-07-28T12:00:00.000' AS DateTime), CAST(N'2016-08-02T15:00:00.000' AS DateTime), 590.0000, 10004, 5, 1002)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (23, CAST(N'2016-07-28T20:00:00.000' AS DateTime), CAST(N'2016-07-29T00:00:00.000' AS DateTime), 290.0000, 10012, 4, 1013)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (24, CAST(N'2016-07-29T12:00:00.000' AS DateTime), CAST(N'2016-08-04T18:00:00.000' AS DateTime), 1940.0000, 10001, 4, 1001)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (25, CAST(N'2016-07-29T19:00:00.000' AS DateTime), CAST(N'2016-08-05T21:00:00.000' AS DateTime), 1010.0000, 10011, 4, 1006)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (26, CAST(N'2016-08-06T17:00:00.000' AS DateTime), CAST(N'2016-08-11T22:00:00.000' AS DateTime), 950.0000, 10001, 6, 1002)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (27, CAST(N'2016-08-04T12:00:00.000' AS DateTime), CAST(N'2016-08-09T16:00:00.000' AS DateTime), 2210.0000, 10015, 7, 1003)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (28, CAST(N'2016-08-03T17:00:00.000' AS DateTime), CAST(N'2016-08-12T22:00:00.000' AS DateTime), 3800.0000, 10003, 4, 1007)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (29, CAST(N'2016-08-06T18:00:00.000' AS DateTime), CAST(N'2016-08-09T00:00:00.000' AS DateTime), 320.0000, 10011, 4, 1011)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (30, CAST(N'2016-08-03T17:00:00.000' AS DateTime), CAST(N'2016-08-05T22:00:00.000' AS DateTime), 275.0000, 10009, 5, 1011)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (31, CAST(N'2016-08-04T16:00:00.000' AS DateTime), CAST(N'2016-08-13T20:00:00.000' AS DateTime), 2450.0000, 10002, 8, 1010)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (32, CAST(N'2016-08-04T13:00:00.000' AS DateTime), CAST(N'2016-08-13T15:00:00.000' AS DateTime), 1250.0000, 10010, 7, 1013)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (33, CAST(N'2016-08-12T17:00:00.000' AS DateTime), CAST(N'2016-08-17T20:00:00.000' AS DateTime), 1670.0000, 10008, 1, 1003)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (34, CAST(N'2016-08-11T16:00:00.000' AS DateTime), CAST(N'2016-08-17T18:00:00.000' AS DateTime), 680.0000, 10004, 8, 1005)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (35, CAST(N'2016-08-11T19:00:00.000' AS DateTime), CAST(N'2016-08-12T23:00:00.000' AS DateTime), 410.0000, 10005, 8, 1001)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (36, CAST(N'2016-08-10T18:00:00.000' AS DateTime), CAST(N'2016-08-20T22:00:00.000' AS DateTime), 710.0000, 10014, 3, 1011)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (37, CAST(N'2016-08-10T14:00:00.000' AS DateTime), CAST(N'2016-08-16T19:00:00.000' AS DateTime), 2675.0000, 10006, 3, 1008)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (38, CAST(N'2016-08-11T14:00:00.000' AS DateTime), CAST(N'2016-08-15T20:00:00.000' AS DateTime), 1850.0000, 10013, 4, 1006)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (39, CAST(N'2016-08-18T16:00:00.000' AS DateTime), CAST(N'2016-08-22T19:00:00.000' AS DateTime), 950.0000, 10008, 7, 1006)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (40, CAST(N'2016-08-18T16:00:00.000' AS DateTime), CAST(N'2016-08-27T18:00:00.000' AS DateTime), 1250.0000, 10011, 1, 1010)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (41, CAST(N'2016-08-17T18:00:00.000' AS DateTime), CAST(N'2016-08-25T21:00:00.000' AS DateTime), 860.0000, 10013, 3, 1002)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (42, CAST(N'2016-08-17T17:00:00.000' AS DateTime), CAST(N'2016-08-23T22:00:00.000' AS DateTime), 2150.0000, 10002, 1, 1013)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (43, CAST(N'2016-08-18T14:00:00.000' AS DateTime), CAST(N'2016-08-18T16:00:00.000' AS DateTime), 140.0000, 10001, 8, 1001)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (44, CAST(N'2016-08-19T14:00:00.000' AS DateTime), CAST(N'2016-08-23T19:00:00.000' AS DateTime), 1925.0000, 10006, 3, 1008)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (45, CAST(N'2016-08-18T14:00:00.000' AS DateTime), CAST(N'2016-08-25T18:00:00.000' AS DateTime), 530.0000, 10015, 1, 1012)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (46, CAST(N'2016-08-25T15:00:00.000' AS DateTime), CAST(N'2016-09-02T17:00:00.000' AS DateTime), 1400.0000, 10009, 4, 1008)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (47, CAST(N'2016-09-02T18:00:00.000' AS DateTime), CAST(N'2016-09-10T20:00:00.000' AS DateTime), 1130.0000, 10008, 2, 1010)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (48, CAST(N'2016-09-02T16:00:00.000' AS DateTime), CAST(N'2016-09-03T22:00:00.000' AS DateTime), 950.0000, 10002, 1, 1007)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (49, CAST(N'2016-09-10T12:00:00.000' AS DateTime), CAST(N'2016-09-16T14:00:00.000' AS DateTime), 680.0000, 10014, 5, 1001)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (50, CAST(N'2016-09-09T18:00:00.000' AS DateTime), CAST(N'2016-09-13T20:00:00.000' AS DateTime), 200.0000, 10012, 7, 1009)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (51, CAST(N'2016-09-10T20:00:00.000' AS DateTime), CAST(N'2016-09-11T01:00:00.000' AS DateTime), 650.0000, 10013, 3, 1013)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (52, CAST(N'2016-09-10T16:00:00.000' AS DateTime), CAST(N'2016-09-11T21:00:00.000' AS DateTime), 650.0000, 10010, 3, 1006)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (53, CAST(N'2016-09-08T17:00:00.000' AS DateTime), CAST(N'2016-09-09T19:00:00.000' AS DateTime), 350.0000, 10002, 5, 1007)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (54, CAST(N'2016-09-08T16:00:00.000' AS DateTime), CAST(N'2016-09-14T20:00:00.000' AS DateTime), 2150.0000, 10011, 3, 1008)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (55, CAST(N'2016-09-16T20:00:00.000' AS DateTime), CAST(N'2016-09-23T02:00:00.000' AS DateTime), 770.0000, 10002, 3, 1011)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (56, CAST(N'2016-09-22T14:00:00.000' AS DateTime), CAST(N'2016-09-25T19:00:00.000' AS DateTime), 1550.0000, 10010, 3, 1007)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (57, CAST(N'2016-09-23T20:00:00.000' AS DateTime), CAST(N'2016-09-27T22:00:00.000' AS DateTime), 350.0000, 10011, 7, 1002)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (58, CAST(N'2016-09-28T17:00:00.000' AS DateTime), CAST(N'2016-10-01T23:00:00.000' AS DateTime), 770.0000, 10001, 2, 1002)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (59, CAST(N'2016-09-28T15:00:00.000' AS DateTime), CAST(N'2016-10-01T19:00:00.000' AS DateTime), 290.0000, 10004, 6, 1012)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (60, CAST(N'2016-09-29T13:00:00.000' AS DateTime), CAST(N'2016-10-01T17:00:00.000' AS DateTime), 230.0000, 10010, 8, 1004)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (61, CAST(N'2016-09-30T17:00:00.000' AS DateTime), CAST(N'2016-10-07T20:00:00.000' AS DateTime), 410.0000, 10015, 8, 1011)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (62, CAST(N'2016-10-06T20:00:00.000' AS DateTime), CAST(N'2016-10-07T01:00:00.000' AS DateTime), 500.0000, 10003, 2, 1005)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (63, CAST(N'2016-10-15T14:00:00.000' AS DateTime), CAST(N'2016-10-18T16:00:00.000' AS DateTime), 650.0000, 10009, 3, 1008)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (64, CAST(N'2016-10-22T14:00:00.000' AS DateTime), CAST(N'2016-10-31T16:00:00.000' AS DateTime), 1250.0000, 10007, 3, 1013)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (65, CAST(N'2016-10-21T18:00:00.000' AS DateTime), CAST(N'2016-10-31T21:00:00.000' AS DateTime), 545.0000, 10003, 1, 1009)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (66, CAST(N'2016-10-19T20:00:00.000' AS DateTime), CAST(N'2016-10-26T02:00:00.000' AS DateTime), 2930.0000, 10005, 5, 1006)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (67, CAST(N'2016-10-21T17:00:00.000' AS DateTime), CAST(N'2016-10-22T23:00:00.000' AS DateTime), 770.0000, 10011, 6, 1010)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (68, CAST(N'2016-10-21T16:00:00.000' AS DateTime), CAST(N'2016-10-26T22:00:00.000' AS DateTime), 1670.0000, 10009, 1, 1005)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (69, CAST(N'2016-10-19T15:00:00.000' AS DateTime), CAST(N'2016-10-20T18:00:00.000' AS DateTime), 500.0000, 10004, 7, 1008)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (70, CAST(N'2016-10-20T13:00:00.000' AS DateTime), CAST(N'2016-10-23T15:00:00.000' AS DateTime), 410.0000, 10010, 6, 1001)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (71, CAST(N'2016-10-19T14:00:00.000' AS DateTime), CAST(N'2016-10-24T17:00:00.000' AS DateTime), 1670.0000, 10002, 1, 1003)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (72, CAST(N'2016-10-19T20:00:00.000' AS DateTime), CAST(N'2016-10-29T01:00:00.000' AS DateTime), 875.0000, 10012, 4, 1011)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (73, CAST(N'2016-10-26T19:00:00.000' AS DateTime), CAST(N'2016-11-04T22:00:00.000' AS DateTime), 1400.0000, 10014, 5, 1001)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (74, CAST(N'2016-10-29T13:00:00.000' AS DateTime), CAST(N'2016-11-03T15:00:00.000' AS DateTime), 590.0000, 10004, 1, 1005)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (75, CAST(N'2016-10-29T17:00:00.000' AS DateTime), CAST(N'2016-11-08T20:00:00.000' AS DateTime), 2525.0000, 10001, 7, 1007)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (76, CAST(N'2016-10-27T16:00:00.000' AS DateTime), CAST(N'2016-10-31T22:00:00.000' AS DateTime), 500.0000, 10005, 7, 1012)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (77, CAST(N'2016-10-27T17:00:00.000' AS DateTime), CAST(N'2016-11-01T20:00:00.000' AS DateTime), 1670.0000, 10015, 5, 1003)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (78, CAST(N'2016-10-29T16:00:00.000' AS DateTime), CAST(N'2016-10-31T20:00:00.000' AS DateTime), 770.0000, 10010, 4, 1010)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (79, CAST(N'2016-10-27T12:00:00.000' AS DateTime), CAST(N'2016-10-31T17:00:00.000' AS DateTime), 1550.0000, 10006, 8, 1006)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (80, CAST(N'2016-10-28T17:00:00.000' AS DateTime), CAST(N'2016-10-29T21:00:00.000' AS DateTime), 650.0000, 10002, 5, 1008)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (81, CAST(N'2016-10-29T13:00:00.000' AS DateTime), CAST(N'2016-11-06T17:00:00.000' AS DateTime), 1130.0000, 10013, 4, 1002)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (82, CAST(N'2016-11-05T20:00:00.000' AS DateTime), CAST(N'2016-11-06T01:00:00.000' AS DateTime), 950.0000, 10014, 8, 1003)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (83, CAST(N'2016-11-03T13:00:00.000' AS DateTime), CAST(N'2016-11-07T15:00:00.000' AS DateTime), 650.0000, 10010, 2, 1006)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (84, CAST(N'2016-11-03T17:00:00.000' AS DateTime), CAST(N'2016-11-08T19:00:00.000' AS DateTime), 230.0000, 10007, 3, 1012)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (85, CAST(N'2016-11-03T14:00:00.000' AS DateTime), CAST(N'2016-11-05T19:00:00.000' AS DateTime), 1175.0000, 10015, 4, 1008)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (86, CAST(N'2016-11-05T17:00:00.000' AS DateTime), CAST(N'2016-11-14T22:00:00.000' AS DateTime), 2300.0000, 10008, 5, 1005)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (87, CAST(N'2016-11-02T16:00:00.000' AS DateTime), CAST(N'2016-11-02T19:00:00.000' AS DateTime), 275.0000, 10007, 6, 1008)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (88, CAST(N'2016-11-04T12:00:00.000' AS DateTime), CAST(N'2016-11-14T14:00:00.000' AS DateTime), 1370.0000, 10004, 8, 1013)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (89, CAST(N'2016-11-03T14:00:00.000' AS DateTime), CAST(N'2016-11-04T16:00:00.000' AS DateTime), 290.0000, 10003, 8, 1010)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (90, CAST(N'2016-11-05T20:00:00.000' AS DateTime), CAST(N'2016-11-05T02:00:00.000' AS DateTime), 320.0000, 10006, 5, 1001)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (91, CAST(N'2016-11-02T13:00:00.000' AS DateTime), CAST(N'2016-11-09T19:00:00.000' AS DateTime), 770.0000, 10009, 3, 1004)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (92, CAST(N'2016-11-09T19:00:00.000' AS DateTime), CAST(N'2016-11-14T00:00:00.000' AS DateTime), 1925.0000, 10012, 6, 1008)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (93, CAST(N'2016-11-12T17:00:00.000' AS DateTime), CAST(N'2016-11-16T23:00:00.000' AS DateTime), 500.0000, 10011, 8, 1012)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (94, CAST(N'2016-11-12T17:00:00.000' AS DateTime), CAST(N'2016-11-20T22:00:00.000' AS DateTime), 725.0000, 10001, 5, 1009)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (95, CAST(N'2016-11-12T20:00:00.000' AS DateTime), CAST(N'2016-11-15T01:00:00.000' AS DateTime), 1550.0000, 10010, 6, 1007)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (96, CAST(N'2016-11-19T15:00:00.000' AS DateTime), CAST(N'2016-11-28T17:00:00.000' AS DateTime), 950.0000, 10009, 6, 1005)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (97, CAST(N'2016-11-16T17:00:00.000' AS DateTime), CAST(N'2016-11-16T21:00:00.000' AS DateTime), 110.0000, 10012, 8, 1004)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (98, CAST(N'2016-11-17T20:00:00.000' AS DateTime), CAST(N'2016-11-24T02:00:00.000' AS DateTime), 2930.0000, 10012, 2, 1010)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (99, CAST(N'2016-11-19T14:00:00.000' AS DateTime), CAST(N'2016-11-28T20:00:00.000' AS DateTime), 4550.0000, 10005, 6, 1008)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (100, CAST(N'2016-11-16T12:00:00.000' AS DateTime), CAST(N'2016-11-20T18:00:00.000' AS DateTime), 1850.0000, 10015, 3, 1006)
GO
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (101, CAST(N'2016-11-19T14:00:00.000' AS DateTime), CAST(N'2016-11-27T18:00:00.000' AS DateTime), 1670.0000, 10004, 5, 1001)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (102, CAST(N'2016-11-19T12:00:00.000' AS DateTime), CAST(N'2016-11-28T15:00:00.000' AS DateTime), 2300.0000, 10013, 5, 1007)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (103, CAST(N'2016-11-18T12:00:00.000' AS DateTime), CAST(N'2016-11-24T17:00:00.000' AS DateTime), 575.0000, 10010, 4, 1011)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (104, CAST(N'2016-11-25T13:00:00.000' AS DateTime), CAST(N'2016-11-29T16:00:00.000' AS DateTime), 1400.0000, 10010, 6, 1003)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (105, CAST(N'2016-11-24T12:00:00.000' AS DateTime), CAST(N'2016-11-29T17:00:00.000' AS DateTime), 1850.0000, 10002, 4, 1013)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (106, CAST(N'2016-11-26T15:00:00.000' AS DateTime), CAST(N'2016-11-29T18:00:00.000' AS DateTime), 770.0000, 10003, 6, 1006)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (107, CAST(N'2016-11-26T16:00:00.000' AS DateTime), CAST(N'2016-11-27T21:00:00.000' AS DateTime), 200.0000, 10007, 4, 1004)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (108, CAST(N'2016-11-30T18:00:00.000' AS DateTime), CAST(N'2016-12-03T00:00:00.000' AS DateTime), 320.0000, 10004, 5, 1012)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (109, CAST(N'2016-12-09T13:00:00.000' AS DateTime), CAST(N'2016-12-13T19:00:00.000' AS DateTime), 1850.0000, 10014, 5, 1010)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (110, CAST(N'2016-12-09T15:00:00.000' AS DateTime), CAST(N'2016-12-17T19:00:00.000' AS DateTime), 1670.0000, 10006, 8, 1001)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (111, CAST(N'2016-12-10T15:00:00.000' AS DateTime), CAST(N'2016-12-12T18:00:00.000' AS DateTime), 185.0000, 10012, 1, 1004)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (112, CAST(N'2016-12-17T18:00:00.000' AS DateTime), CAST(N'2016-12-22T22:00:00.000' AS DateTime), 410.0000, 10015, 7, 1011)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (113, CAST(N'2016-12-17T16:00:00.000' AS DateTime), CAST(N'2016-12-25T21:00:00.000' AS DateTime), 3425.0000, 10008, 7, 1007)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (114, CAST(N'2016-12-17T12:00:00.000' AS DateTime), CAST(N'2016-12-26T17:00:00.000' AS DateTime), 1550.0000, 10005, 1, 1002)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (115, CAST(N'2016-12-17T12:00:00.000' AS DateTime), CAST(N'2016-12-20T18:00:00.000' AS DateTime), 1490.0000, 10007, 5, 1013)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (116, CAST(N'2016-12-14T14:00:00.000' AS DateTime), CAST(N'2016-12-23T19:00:00.000' AS DateTime), 800.0000, 10003, 6, 1012)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (117, CAST(N'2016-12-15T18:00:00.000' AS DateTime), CAST(N'2016-12-22T23:00:00.000' AS DateTime), 650.0000, 10011, 3, 1009)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (118, CAST(N'2016-12-16T19:00:00.000' AS DateTime), CAST(N'2016-12-17T00:00:00.000' AS DateTime), 350.0000, 10014, 1, 1010)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (119, CAST(N'2016-12-17T18:00:00.000' AS DateTime), CAST(N'2016-12-26T21:00:00.000' AS DateTime), 500.0000, 10012, 2, 1004)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (120, CAST(N'2016-12-15T20:00:00.000' AS DateTime), CAST(N'2016-12-18T23:00:00.000' AS DateTime), 950.0000, 10002, 7, 1008)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (121, CAST(N'2016-12-14T17:00:00.000' AS DateTime), CAST(N'2016-12-20T23:00:00.000' AS DateTime), 2570.0000, 10004, 3, 1006)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (122, CAST(N'2016-12-22T15:00:00.000' AS DateTime), CAST(N'2016-12-25T19:00:00.000' AS DateTime), 1010.0000, 10014, 5, 1010)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (123, CAST(N'2016-12-23T16:00:00.000' AS DateTime), CAST(N'2016-12-26T20:00:00.000' AS DateTime), 770.0000, 10013, 1, 1001)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (124, CAST(N'2016-12-21T14:00:00.000' AS DateTime), CAST(N'2016-12-28T17:00:00.000' AS DateTime), 1850.0000, 10006, 1, 1008)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (125, CAST(N'2016-12-21T13:00:00.000' AS DateTime), CAST(N'2016-12-26T15:00:00.000' AS DateTime), 1130.0000, 10001, 3, 1003)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (126, CAST(N'2016-12-22T18:00:00.000' AS DateTime), CAST(N'2016-12-29T20:00:00.000' AS DateTime), 1010.0000, 10009, 6, 1006)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (127, CAST(N'2016-12-22T20:00:00.000' AS DateTime), CAST(N'2016-12-26T22:00:00.000' AS DateTime), 500.0000, 10010, 4, 1005)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (128, CAST(N'2016-12-24T19:00:00.000' AS DateTime), CAST(N'2016-12-26T01:00:00.000' AS DateTime), 320.0000, 10003, 4, 1011)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (129, CAST(N'2016-12-22T17:00:00.000' AS DateTime), CAST(N'2016-12-31T21:00:00.000' AS DateTime), 2450.0000, 10004, 5, 1013)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (130, CAST(N'2016-12-22T14:00:00.000' AS DateTime), CAST(N'2016-12-30T18:00:00.000' AS DateTime), 590.0000, 10015, 8, 1009)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (131, CAST(N'2016-12-29T15:00:00.000' AS DateTime), CAST(N'2017-01-07T17:00:00.000' AS DateTime), 1850.0000, 10014, 1, 1003)
INSERT [dbo].[Angazman] ([BrojAngazmana], [PocetniDatum], [ZavrsniDatum], [UgovorenaCijena], [IdKlijent], [IdAgent], [IdIzvodac]) VALUES (132, CAST(N'2016-06-01T00:00:00.000' AS DateTime), NULL, 1000.0000, 10006, 1, 1003)
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (101, N'Andrew', N'Fuller', N'555-2701', N'M')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (102, N'Suzanne', N'Viescas', N'555-2686', N'F')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (103, N'Gary', N'Hallmark', N'555-2676', N'M')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (104, N'Jeffrey', N'Smith', N'555-2596', N'M')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (105, N'Michael', N'Davolio', N'555-2491', N'M')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (106, N'Laura', N'Callahan', N'555-2526', N'F')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (107, N'Sara', N'Kennedy', N'555-2566', N'F')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (108, N'Rachel', N'Patterson', N'555-2546', N'F')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (109, N'David', N'Viescas', N'555-2661', N'M')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (110, N'Andrea', N'Buchanan', N'555-2641', N'F')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (111, N'Kathryn', N'Patterson', N'555-2651', N'F')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (112, N'Kendra', N'Bonnicksen', N'555-2716', N'F')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (113, N'Steven', N'Pundt', N'555-9938', N'M')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (114, N'George', N'Chavez', N'555-9930', N'M')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (115, N'Joe', N'Rosales III', N'555-2281', N'M')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (116, N'Ryan', N'Ehrlich', N'555-2311', N'M')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (117, N'Allan', N'Davis', N'555-2316', N'M')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (118, N'Carol', N'Peacock', N'555-2691', N'F')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (119, N'John', N'Viescas', N'555-2511', N'M')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (120, N'Michael', N'Hernandez', N'555-2711', N'M')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (121, N'Katherine', N'Ehrlich', N'555-0399', N'F')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (122, N'Julia', N'Schnebly', N'555-9936', N'F')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (123, N'Susan', N'McLain', N'555-2301', N'F')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (124, N'Caroline', N'Coie', N'555-2306', N'F')
INSERT [dbo].[Clanovi] ([IdClan], [Ime], [Prezime], [Telefon], [Spol]) VALUES (125, N'Albert', N'Buchanan', N'555-2531', NULL)
INSERT [dbo].[Izvodac] ([IdIzvodac], [Naziv], [Adresa], [Grad], [Drzava], [PostanskIBroj], [Telefon], [Web], [Email], [DatumUnosa]) VALUES (1001, N'Carol Peacock Trio', N'4110 Old Redmond Rd.', N'Redmond', N'WA', N'98052', N'555-2691', NULL, NULL, NULL)
INSERT [dbo].[Izvodac] ([IdIzvodac], [Naziv], [Adresa], [Grad], [Drzava], [PostanskIBroj], [Telefon], [Web], [Email], [DatumUnosa]) VALUES (1002, N'Topazz', N'16 Maple Lane', N'Auburn', N'WA', N'98002', N'555-2591', NULL, NULL, NULL)
INSERT [dbo].[Izvodac] ([IdIzvodac], [Naziv], [Adresa], [Grad], [Drzava], [PostanskIBroj], [Telefon], [Web], [Email], [DatumUnosa]) VALUES (1003, N'JV & the Deep Six', N'15127 NE 24th, #383', N'Redmond', N'WA', N'98052', N'555-2511', NULL, NULL, NULL)
INSERT [dbo].[Izvodac] ([IdIzvodac], [Naziv], [Adresa], [Grad], [Drzava], [PostanskIBroj], [Telefon], [Web], [Email], [DatumUnosa]) VALUES (1004, N'Albert Buchanan', N'13920 S.E. 40th Street', N'Bellevue', N'WA', N'98009', N'555-2531', NULL, NULL, NULL)
INSERT [dbo].[Izvodac] ([IdIzvodac], [Naziv], [Adresa], [Grad], [Drzava], [PostanskIBroj], [Telefon], [Web], [Email], [DatumUnosa]) VALUES (1005, N'Jazz Persuasion', N'233 West Valley Hwy', N'Bellevue', N'WA', N'98005', N'555-2541', NULL, NULL, NULL)
INSERT [dbo].[Izvodac] ([IdIzvodac], [Naziv], [Adresa], [Grad], [Drzava], [PostanskIBroj], [Telefon], [Web], [Email], [DatumUnosa]) VALUES (1006, N'Modern Dance', N'Route 2, Box 203B', N'Woodinville', N'WA', N'98072', N'555-2631', NULL, NULL, NULL)
INSERT [dbo].[Izvodac] ([IdIzvodac], [Naziv], [Adresa], [Grad], [Drzava], [PostanskIBroj], [Telefon], [Web], [Email], [DatumUnosa]) VALUES (1007, N'Coldwater Cattle Company', N'4726 - 11th Ave. N.E.', N'Seattle', N'WA', N'98105', N'555-2561', NULL, NULL, NULL)
INSERT [dbo].[Izvodac] ([IdIzvodac], [Naziv], [Adresa], [Grad], [Drzava], [PostanskIBroj], [Telefon], [Web], [Email], [DatumUnosa]) VALUES (1008, N'Country Feeling', N'PO Box 223311', N'Seattle', N'WA', N'98125', N'555-2711', NULL, NULL, NULL)
INSERT [dbo].[Izvodac] ([IdIzvodac], [Naziv], [Adresa], [Grad], [Drzava], [PostanskIBroj], [Telefon], [Web], [Email], [DatumUnosa]) VALUES (1009, N'Katherine Ehrlich', N'777 Fenexet Blvd', N'Woodinville', N'WA', N'98072', N'555-0399', NULL, NULL, NULL)
INSERT [dbo].[Izvodac] ([IdIzvodac], [Naziv], [Adresa], [Grad], [Drzava], [PostanskIBroj], [Telefon], [Web], [Email], [DatumUnosa]) VALUES (1010, N'Saturday Revue', N'3887 Easy Street', N'Seattle', N'WA', N'98125', N'555-0039', NULL, NULL, NULL)
INSERT [dbo].[Izvodac] ([IdIzvodac], [Naziv], [Adresa], [Grad], [Drzava], [PostanskIBroj], [Telefon], [Web], [Email], [DatumUnosa]) VALUES (1011, N'Julia Schnebly', N'2343 Harmony Lane', N'Seattle', N'WA', N'99837', N'555-9936', NULL, NULL, NULL)
INSERT [dbo].[Izvodac] ([IdIzvodac], [Naziv], [Adresa], [Grad], [Drzava], [PostanskIBroj], [Telefon], [Web], [Email], [DatumUnosa]) VALUES (1012, N'Susan McLain', N'511 Lenora Ave', N'Bellevue', N'WA', N'98006', N'555-2301', NULL, NULL, NULL)
INSERT [dbo].[Izvodac] ([IdIzvodac], [Naziv], [Adresa], [Grad], [Drzava], [PostanskIBroj], [Telefon], [Web], [Email], [DatumUnosa]) VALUES (1013, N'Caroline Coie Cuartet', N'298 Forest Lane', N'Auburn', N'WA', N'98002', N'555-2306', NULL, NULL, NULL)
INSERT [dbo].[Izvodac] ([IdIzvodac], [Naziv], [Adresa], [Grad], [Drzava], [PostanskIBroj], [Telefon], [Web], [Email], [DatumUnosa]) VALUES (1014, N'Novi izvođač', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1001, 106, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1001, 107, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1001, 118, 2)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1002, 120, 2)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1002, 121, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1003, 102, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1003, 103, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1003, 104, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1003, 109, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1003, 117, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1003, 119, 2)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1004, 125, 2)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1005, 116, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1005, 120, 2)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1005, 121, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1006, 104, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1006, 113, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1006, 118, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1006, 120, 2)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1007, 101, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1007, 102, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1007, 105, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1007, 107, 2)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1007, 110, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1008, 103, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1008, 105, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1008, 111, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1008, 114, 2)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1008, 115, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1009, 121, 2)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1010, 108, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1010, 112, 2)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1010, 123, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1010, 124, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1011, 122, 2)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1012, 123, 2)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1013, 112, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1013, 114, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1013, 117, 1)
INSERT [dbo].[Izvodac_Clanovi] ([IdIzvodac], [IdClan], [Status]) VALUES (1013, 124, 2)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1001, 10)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1001, 20)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1001, 21)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1002, 17)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1002, 19)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1002, 23)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1003, 3)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1003, 8)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1004, 13)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1005, 15)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1005, 19)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1005, 24)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1006, 22)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1006, 23)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1006, 24)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1007, 6)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1007, 11)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1008, 3)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1008, 6)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1009, 7)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1009, 14)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1009, 21)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1010, 4)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1010, 21)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1010, 22)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1011, 7)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1011, 14)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1011, 20)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1012, 7)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1012, 13)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1013, 10)
INSERT [dbo].[Izvodac_Zanr] ([IdIzvodac], [IdZanr]) VALUES (1013, 15)
INSERT [dbo].[Klijent] ([IdKlijent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon]) VALUES (10001, N'Sally', N'Callahan', N'4726 - 11th Ave. N.E.', N'Seattle', N'WA', N'98105', N'555-2671')
INSERT [dbo].[Klijent] ([IdKlijent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon]) VALUES (10002, N'Ann', N'Fuller', N'908 W. Capital Way', N'Tacoma', N'WA', N'98413', N'555-2496')
INSERT [dbo].[Klijent] ([IdKlijent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon]) VALUES (10003, N'James', N'Leverling', N'722 Moss Bay Blvd.', N'Kirkland', N'WA', N'98033', N'555-2501')
INSERT [dbo].[Klijent] ([IdKlijent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon]) VALUES (10004, N'Kenneth', N'Peacock', N'4110 Old Redmond Rd.', N'Redmond', N'WA', N'98052', N'555-2506')
INSERT [dbo].[Klijent] ([IdKlijent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon]) VALUES (10005, N'Elizabeth', N'Hallmark', N'Route 2, Box 203B', N'Auburn', N'WA', N'98002', N'555-2521')
INSERT [dbo].[Klijent] ([IdKlijent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon]) VALUES (10006, N'Thomas', N'Fuller', N'908 W. Capital Way', N'Tacoma', N'WA', N'98413', N'555-2581')
INSERT [dbo].[Klijent] ([IdKlijent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon]) VALUES (10007, N'Amelia', N'Buchanan', N'13920 S.E. 40th Street', N'Bellevue', N'WA', N'98006', N'555-2556')
INSERT [dbo].[Klijent] ([IdKlijent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon]) VALUES (10008, N'Samuel', N'Peacock', N'2601 Seaview Lane', N'Kirkland', N'WA', N'98033', N'555-2616')
INSERT [dbo].[Klijent] ([IdKlijent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon]) VALUES (10009, N'Sarah', N'Thompson', N'2222 Springer Road', N'Bellevue', N'WA', N'98006', N'555-2626')
INSERT [dbo].[Klijent] ([IdKlijent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon]) VALUES (10010, N'Zachary', N'Ehrlich', N'12330 Kingman Drive', N'Kirkland', N'WA', N'98033', N'555-2721')
INSERT [dbo].[Klijent] ([IdKlijent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon]) VALUES (10011, N'Joyce', N'Bonnicksen', N'2424 Thames Drive', N'Bellevue', N'WA', N'98006', N'555-2726')
INSERT [dbo].[Klijent] ([IdKlijent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon]) VALUES (10012, N'Mel', N'Ehrlich', N'777 Fenexet Blvd', N'Redmond', N'WA', N'98052', N'555-0399')
INSERT [dbo].[Klijent] ([IdKlijent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon]) VALUES (10013, N'Estella', N'Pundt', N'2500 Rosales Lane', N'Bellevue', N'WA', N'98006', N'555-9938')
INSERT [dbo].[Klijent] ([IdKlijent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon]) VALUES (10014, N'Mark', N'Rosales', N'323 Advocate Lane', N'Bellevue', N'WA', N'98006', N'555-2286')
INSERT [dbo].[Klijent] ([IdKlijent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon]) VALUES (10015, N'David', N'Nathanson', N'754 Fourth Ave', N'Seattle', N'WA', N'98115', N'555-2296')
INSERT [dbo].[Klijent] ([IdKlijent], [Ime], [Prezime], [Adresa], [Grad], [Drzava], [PostanskiBroj], [Telefon]) VALUES (10016, N'Tvrtko', N'Begović', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10001, 10)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10001, 22)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10002, 3)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10002, 8)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10003, 15)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10003, 17)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10003, 19)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10003, 21)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10005, 7)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10005, 14)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10006, 13)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10006, 23)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10007, 4)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10007, 8)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10007, 19)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10008, 10)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10008, 21)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10009, 6)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10009, 11)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10009, 18)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10010, 15)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10010, 19)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10010, 24)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10011, 1)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10011, 7)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10011, 21)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10012, 10)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10012, 20)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10013, 15)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10013, 24)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10014, 5)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10014, 18)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10014, 22)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10015, 1)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10015, 20)
INSERT [dbo].[Klijent_Preference] ([IdKlijent], [IdZanr]) VALUES (10015, 21)
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (1, N'40''s Ballroom Music')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (2, N'50''s Music')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (3, N'60''s Music')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (4, N'70''s Music')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (5, N'80''s Music')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (6, N'Country')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (7, N'Classical')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (8, N'Classic Rock & Roll')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (9, N'Rap')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (10, N'Contemporary')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (11, N'Country Rock')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (12, N'Elvis')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (13, N'Folk')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (14, N'Chamber Music')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (15, N'Jazz')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (16, N'Karaoke')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (17, N'Motown')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (18, N'Modern Rock')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (19, N'Rhythm and Blues')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (20, N'Show Tunes')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (21, N'Standards')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (22, N'Top 40 Hits')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (23, N'Variety')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (24, N'Salsa')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (25, N'90''s Music')
INSERT [dbo].[MuzickiZanr] ([IdZanr], [NazivZanra]) VALUES (26, N'Novi zanr')
/****** Object:  Index [aaaaaAgents_PK]    Script Date: 24/03/2020 22:24:32 ******/
ALTER TABLE [dbo].[Agent] ADD  CONSTRAINT [aaaaaAgents_PK] PRIMARY KEY NONCLUSTERED 
(
	[IdAgent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Engagements_PK]    Script Date: 24/03/2020 22:24:32 ******/
ALTER TABLE [dbo].[Angazman] ADD  CONSTRAINT [Engagements_PK] PRIMARY KEY NONCLUSTERED 
(
	[BrojAngazmana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaaMembers_PK]    Script Date: 24/03/2020 22:24:32 ******/
ALTER TABLE [dbo].[Clanovi] ADD  CONSTRAINT [aaaaaMembers_PK] PRIMARY KEY NONCLUSTERED 
(
	[IdClan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaaEntertainers_PK]    Script Date: 24/03/2020 22:24:32 ******/
ALTER TABLE [dbo].[Izvodac] ADD  CONSTRAINT [aaaaaEntertainers_PK] PRIMARY KEY NONCLUSTERED 
(
	[IdIzvodac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaaEntertainer_Members_PK]    Script Date: 24/03/2020 22:24:32 ******/
ALTER TABLE [dbo].[Izvodac_Clanovi] ADD  CONSTRAINT [aaaaaEntertainer_Members_PK] PRIMARY KEY NONCLUSTERED 
(
	[IdIzvodac] ASC,
	[IdClan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaaEntertainer_Styles_PK]    Script Date: 24/03/2020 22:24:32 ******/
ALTER TABLE [dbo].[Izvodac_Zanr] ADD  CONSTRAINT [aaaaaEntertainer_Styles_PK] PRIMARY KEY NONCLUSTERED 
(
	[IdIzvodac] ASC,
	[IdZanr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaaCustomers_PK]    Script Date: 24/03/2020 22:24:32 ******/
ALTER TABLE [dbo].[Klijent] ADD  CONSTRAINT [aaaaaCustomers_PK] PRIMARY KEY NONCLUSTERED 
(
	[IdKlijent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaaMusical_Preferences_PK]    Script Date: 24/03/2020 22:24:32 ******/
ALTER TABLE [dbo].[Klijent_Preference] ADD  CONSTRAINT [aaaaaMusical_Preferences_PK] PRIMARY KEY NONCLUSTERED 
(
	[IdKlijent] ASC,
	[IdZanr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaaMusical_Styles_PK]    Script Date: 24/03/2020 22:24:32 ******/
ALTER TABLE [dbo].[MuzickiZanr] ADD  CONSTRAINT [aaaaaMusical_Styles_PK] PRIMARY KEY NONCLUSTERED 
(
	[IdZanr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Agent] ADD  DEFAULT ((0)) FOR [Placa]
GO
ALTER TABLE [dbo].[Agent] ADD  DEFAULT ((0)) FOR [Provizija]
GO
ALTER TABLE [dbo].[Clanovi] ADD  DEFAULT ((0)) FOR [IdClan]
GO
ALTER TABLE [dbo].[Izvodac_Clanovi] ADD  DEFAULT ((0)) FOR [IdClan]
GO
ALTER TABLE [dbo].[Izvodac_Clanovi] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Izvodac_Zanr] ADD  DEFAULT ((0)) FOR [IdZanr]
GO
ALTER TABLE [dbo].[Klijent_Preference] ADD  DEFAULT ((0)) FOR [IdKlijent]
GO
ALTER TABLE [dbo].[Klijent_Preference] ADD  DEFAULT ((0)) FOR [IdZanr]
GO
ALTER TABLE [dbo].[MuzickiZanr] ADD  DEFAULT ((0)) FOR [IdZanr]
GO
ALTER TABLE [dbo].[Angazman]  WITH CHECK ADD  CONSTRAINT [FK_Angazman_Agent] FOREIGN KEY([IdAgent])
REFERENCES [dbo].[Agent] ([IdAgent])
GO
ALTER TABLE [dbo].[Angazman] CHECK CONSTRAINT [FK_Angazman_Agent]
GO
ALTER TABLE [dbo].[Angazman]  WITH CHECK ADD  CONSTRAINT [FK_Angazman_Izvodac] FOREIGN KEY([IdIzvodac])
REFERENCES [dbo].[Izvodac] ([IdIzvodac])
GO
ALTER TABLE [dbo].[Angazman] CHECK CONSTRAINT [FK_Angazman_Izvodac]
GO
ALTER TABLE [dbo].[Angazman]  WITH CHECK ADD  CONSTRAINT [FK_Angazman_Klijent] FOREIGN KEY([IdKlijent])
REFERENCES [dbo].[Klijent] ([IdKlijent])
GO
ALTER TABLE [dbo].[Angazman] CHECK CONSTRAINT [FK_Angazman_Klijent]
GO
ALTER TABLE [dbo].[Izvodac_Clanovi]  WITH CHECK ADD  CONSTRAINT [FK_Izvodac_Clanovi_Clanovi] FOREIGN KEY([IdClan])
REFERENCES [dbo].[Clanovi] ([IdClan])
GO
ALTER TABLE [dbo].[Izvodac_Clanovi] CHECK CONSTRAINT [FK_Izvodac_Clanovi_Clanovi]
GO
ALTER TABLE [dbo].[Izvodac_Clanovi]  WITH CHECK ADD  CONSTRAINT [FK_Izvodac_Clanovi_Izvodac] FOREIGN KEY([IdIzvodac])
REFERENCES [dbo].[Izvodac] ([IdIzvodac])
GO
ALTER TABLE [dbo].[Izvodac_Clanovi] CHECK CONSTRAINT [FK_Izvodac_Clanovi_Izvodac]
GO
ALTER TABLE [dbo].[Izvodac_Zanr]  WITH CHECK ADD  CONSTRAINT [FK_Izvodac_Zanr_Izvodac] FOREIGN KEY([IdIzvodac])
REFERENCES [dbo].[Izvodac] ([IdIzvodac])
GO
ALTER TABLE [dbo].[Izvodac_Zanr] CHECK CONSTRAINT [FK_Izvodac_Zanr_Izvodac]
GO
ALTER TABLE [dbo].[Izvodac_Zanr]  WITH CHECK ADD  CONSTRAINT [FK_Izvodac_Zanr_MuzickiZanr] FOREIGN KEY([IdZanr])
REFERENCES [dbo].[MuzickiZanr] ([IdZanr])
GO
ALTER TABLE [dbo].[Izvodac_Zanr] CHECK CONSTRAINT [FK_Izvodac_Zanr_MuzickiZanr]
GO
ALTER TABLE [dbo].[Klijent_Preference]  WITH CHECK ADD  CONSTRAINT [FK_Klijent_Preference_Klijent] FOREIGN KEY([IdKlijent])
REFERENCES [dbo].[Klijent] ([IdKlijent])
GO
ALTER TABLE [dbo].[Klijent_Preference] CHECK CONSTRAINT [FK_Klijent_Preference_Klijent]
GO
ALTER TABLE [dbo].[Klijent_Preference]  WITH CHECK ADD  CONSTRAINT [FK_Klijent_Preference_MuzickiZanr] FOREIGN KEY([IdZanr])
REFERENCES [dbo].[MuzickiZanr] ([IdZanr])
GO
ALTER TABLE [dbo].[Klijent_Preference] CHECK CONSTRAINT [FK_Klijent_Preference_MuzickiZanr]
GO
