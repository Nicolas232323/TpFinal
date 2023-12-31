USE [master]
GO
/****** Object:  Database [TpFinal]    Script Date: 30/11/2023 14:09:25 ******/
CREATE DATABASE [TpFinal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TpFinal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TpFinal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TpFinal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TpFinal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TpFinal] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TpFinal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TpFinal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TpFinal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TpFinal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TpFinal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TpFinal] SET ARITHABORT OFF 
GO
ALTER DATABASE [TpFinal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TpFinal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TpFinal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TpFinal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TpFinal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TpFinal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TpFinal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TpFinal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TpFinal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TpFinal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TpFinal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TpFinal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TpFinal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TpFinal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TpFinal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TpFinal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TpFinal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TpFinal] SET RECOVERY FULL 
GO
ALTER DATABASE [TpFinal] SET  MULTI_USER 
GO
ALTER DATABASE [TpFinal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TpFinal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TpFinal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TpFinal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TpFinal] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TpFinal', N'ON'
GO
ALTER DATABASE [TpFinal] SET QUERY_STORE = OFF
GO
USE [TpFinal]
GO
/****** Object:  User [alumno]    Script Date: 30/11/2023 14:09:25 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Comentarios]    Script Date: 30/11/2023 14:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentarios](
	[IdComentarios] [int] IDENTITY(1,1) NOT NULL,
	[comentario] [varchar](50) NULL,
 CONSTRAINT [PK_Comentarios] PRIMARY KEY CLUSTERED 
(
	[IdComentarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 30/11/2023 14:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipo](
	[IDequipo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_equipo] [varchar](50) NOT NULL,
	[Image_equipo] [varchar](800) NULL,
	[puntos_equipo] [int] NULL,
	[partido_jugados] [int] NULL,
	[partidos_ganados] [int] NULL,
	[partidos_empatados] [int] NULL,
	[partidos_perdidos] [int] NULL,
	[goles_a_favor] [int] NULL,
	[goles_en_contra] [int] NULL,
	[diferencia_de_gol] [int] NULL,
 CONSTRAINT [PK_Equipo] PRIMARY KEY CLUSTERED 
(
	[IDequipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fixture]    Script Date: 30/11/2023 14:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fixture](
	[IdFixture] [int] IDENTITY(1,1) NOT NULL,
	[Fkequipo] [int] NULL,
	[equipo_local] [varchar](50) NULL,
	[equipo_visitante] [varchar](50) NULL,
	[fecha_juego] [varchar](max) NULL,
	[Hora_Partido] [varchar](max) NULL,
 CONSTRAINT [PK_Fixture] PRIMARY KEY CLUSTERED 
(
	[IdFixture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fixture2]    Script Date: 30/11/2023 14:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fixture2](
	[IdFixture2] [int] IDENTITY(1,1) NOT NULL,
	[Fkequipo2] [int] NULL,
	[equipo_local2] [varchar](50) NULL,
	[equipo_visitante2] [varchar](50) NULL,
	[fecha_juego2] [varchar](max) NULL,
	[Hira_Partido2] [varchar](max) NULL,
 CONSTRAINT [PK_Fixture2] PRIMARY KEY CLUSTERED 
(
	[IdFixture2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugador]    Script Date: 30/11/2023 14:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugador](
	[IDjugador] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[pocision] [varchar](50) NULL,
	[pais] [varchar](50) NULL,
	[Fkequipo] [int] NULL,
 CONSTRAINT [PK_Jugador] PRIMARY KEY CLUSTERED 
(
	[IDjugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TablaGrupoA]    Script Date: 30/11/2023 14:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TablaGrupoA](
	[IdTablaGrupoA] [int] IDENTITY(1,1) NOT NULL,
	[NombreEquipo] [varchar](50) NULL,
 CONSTRAINT [PK_TablaB] PRIMARY KEY CLUSTERED 
(
	[IdTablaGrupoA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TablaGrupoB]    Script Date: 30/11/2023 14:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TablaGrupoB](
	[IdTablaGrupoB] [int] IDENTITY(1,1) NOT NULL,
	[NombreEquipo] [varchar](50) NULL,
 CONSTRAINT [PK_TablaGrupoB] PRIMARY KEY CLUSTERED 
(
	[IdTablaGrupoB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Equipo] ON 

INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (1, N'RiverPlate', N'https://upload.wikimedia.org/wikipedia/commons/3/3f/Logo_River_Plate.png', 61, 27, 18, 7, 2, 50, 15, 35)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (2, N'Arsenal', N'https://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/3785.png', 50, 27, 15, 5, 7, 40, 25, 15)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (3, N'Atlético Tucumán', N'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Escudo_del_Club_Atletico_Tucuman.svg/873px-Escudo_del_Club_Atletico_Tucuman.svg.png', 46, 27, 14, 4, 9, 35, 30, 5)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (4, N'Banfield', N'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/CA_Banfield_%282014%29.svg/1252px-CA_Banfield_%282014%29.svg.png', 45, 27, 13, 6, 8, 30, 28, 2)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (5, N'Barracas Central', N'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Barracas_central_logo.svg/1200px-Barracas_central_logo.svg.png', 45, 27, 12, 5, 10, 25, 30, -5)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (6, N'Belgrano', N'https://upload.wikimedia.org/wikipedia/commons/8/85/Escudo_Oficial_del_Club_Atl%C3%A9tico_Belgrano.png', 44, 27, 11, 8, 8, 28, 25, 3)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (7, N'Boca Juniors', N'https://upload.wikimedia.org/wikipedia/commons/c/c9/Boca_escudo.png', 44, 27, 10, 9, 8, 35, 20, 15)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (8, N'Central Córdoba', N'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Escudo_del_Club_Central_C%C3%B3rdoba_de_Santiago_del_Estero.svg/994px-Escudo_del_Club_Central_C%C3%B3rdoba_de_Santiago_del_Estero.svg.png', 42, 27, 9, 7, 11, 22, 25, -3)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (9, N'Colón', N'https://upload.wikimedia.org/wikipedia/commons/b/b5/Escudo_del_C._A._Col%C3%B3n.png', 41, 27, 8, 10, 9, 28, 26, 2)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (10, N'Defensa y Justicia', N'https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Escudo_del_Club_Social_y_Deportivo_Defensa_y_Justicia.svg/1200px-Escudo_del_Club_Social_y_Deportivo_Defensa_y_Justicia.svg.png', 40, 27, 7, 6, 14, 25, 30, -5)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (11, N'Estudiantes ', N'https://i.pinimg.com/originals/23/dd/64/23dd6441fbbe1eb27880ae4f49a272a9.png', 37, 27, 10, 8, 9, 25, 20, 5)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (12, N'Gimnasia', N'https://upload.wikimedia.org/wikipedia/commons/9/9e/Gimnasia_y_Esgrima_La_Plata_logo.png', 35, 27, 9, 7, 11, 22, 25, -3)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (13, N'Godoy Cruz', N'https://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/3787.png', 35, 27, 8, 10, 9, 28, 26, 2)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (14, N'Huracán', N'https://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/4215.png', 33, 27, 4, 10, 13, 20, 25, -5)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (15, N'Independiente', N'https://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/4320.png', 29, 27, 7, 8, 12, 30, 25, 5)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (16, N'Instituto', N'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Escudo_Instituto_Atletico_Central_Cordoba.svg/2048px-Escudo_Instituto_Atletico_Central_Cordoba.svg.png', 28, 27, 9, 1, 17, 30, 35, -5)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (17, N'Lanús', N'https://pbs.twimg.com/media/FHjIdl3WQAUy4Z0.png:large', 26, 27, 10, 10, 7, 30, 25, 5)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (18, N'Newell''s Old Boys', N'https://upload.wikimedia.org/wikipedia/commons/e/ea/Newells-old-boys-logo.png', 23, 27, 8, 9, 10, 28, 30, -2)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (19, N'Platense', N'https://upload.wikimedia.org/wikipedia/commons/9/9e/Escudo_platense.png', 21, 27, 5, 6, 16, 20, 40, -20)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (20, N'Racing Club', N'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Escudo_de_Racing_Club_%282014%29.svg/1686px-Escudo_de_Racing_Club_%282014%29.svg.png', 20, 27, 6, 2, 19, 25, 45, -20)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (21, N'Rosario Central', N'https://upload.wikimedia.org/wikipedia/commons/c/c0/Rosario_Central_logo.png', 17, 27, 4, 8, 15, 18, 30, -12)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (22, N'San Lorenzo', N'https://seeklogo.com/images/C/club-atletico-san-lorenzo-de-manfredi-cordoba-logo-D885F0563A-seeklogo.com.png', 15, 27, 3, 6, 18, 15, 35, -20)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (23, N'Sarmiento (J)', N'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Escudo_del_Club_Atl%C3%A9tico_Sarmiento_de_Jun%C3%ADn.svg/2086px-Escudo_del_Club_Atl%C3%A9tico_Sarmiento_de_Jun%C3%ADn.svg.png', 12, 27, 2, 6, 19, 12, 40, -28)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (24, N'Tigre', N'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Escudo_del_Club_Atl%C3%A9tico_Tigre.svg/1667px-Escudo_del_Club_Atl%C3%A9tico_Tigre.svg.png', 11, 27, 1, 8, 18, 10, 30, -20)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (25, N'Vélez Sarsfield', N'https://upload.wikimedia.org/wikipedia/commons/3/36/Escudo_V%C3%A9lez_Sarsfield.png', 11, 27, 5, 6, 16, 25, 20, 5)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (26, N'Talleres', N'https://seeklogo.com/images/C/Club_Atletico_Talleres_De_Cordoba-logo-47B0516243-seeklogo.com.png', 9, 27, 10, 8, 9, 30, 25, 5)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (27, N'Union', N'https://upload.wikimedia.org/wikipedia/commons/d/d8/Union_de_Santa_Fe.png', 6, 27, 9, 7, 11, 22, 25, -3)
INSERT [dbo].[Equipo] ([IDequipo], [Nombre_equipo], [Image_equipo], [puntos_equipo], [partido_jugados], [partidos_ganados], [partidos_empatados], [partidos_perdidos], [goles_a_favor], [goles_en_contra], [diferencia_de_gol]) VALUES (28, N'argentinos Juniors', N'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Asociacion_Atletica_Argentinos_Juniors.svg/1200px-Asociacion_Atletica_Argentinos_Juniors.svg.png', 3, 27, 1, 0, 26, 8, 48, -40)
SET IDENTITY_INSERT [dbo].[Equipo] OFF
GO
SET IDENTITY_INSERT [dbo].[Fixture] ON 

INSERT [dbo].[Fixture] ([IdFixture], [Fkequipo], [equipo_local], [equipo_visitante], [fecha_juego], [Hora_Partido]) VALUES (1, 1, N'Argentinos Juniors', N'Independiente', N'2023-11-01', N'10:00')
INSERT [dbo].[Fixture] ([IdFixture], [Fkequipo], [equipo_local], [equipo_visitante], [fecha_juego], [Hora_Partido]) VALUES (2, 2, N'Arsenal', N'Instituto', N'2023-11-01', N'10:00')
INSERT [dbo].[Fixture] ([IdFixture], [Fkequipo], [equipo_local], [equipo_visitante], [fecha_juego], [Hora_Partido]) VALUES (3, 3, N'Atlético Tucumán', N'Lanús', N'2023-11-01', N'12:00')
INSERT [dbo].[Fixture] ([IdFixture], [Fkequipo], [equipo_local], [equipo_visitante], [fecha_juego], [Hora_Partido]) VALUES (4, 4, N'Banfield', N'Newell''s Old Boys', N'2023-11-01', N'12:00')
INSERT [dbo].[Fixture] ([IdFixture], [Fkequipo], [equipo_local], [equipo_visitante], [fecha_juego], [Hora_Partido]) VALUES (5, 5, N'Barracas Central', N'Platense', N'2023-11-01', N'14:00')
INSERT [dbo].[Fixture] ([IdFixture], [Fkequipo], [equipo_local], [equipo_visitante], [fecha_juego], [Hora_Partido]) VALUES (6, 6, N'Belgrano', N'Racing Club', N'2023-11-01', N'14:00')
INSERT [dbo].[Fixture] ([IdFixture], [Fkequipo], [equipo_local], [equipo_visitante], [fecha_juego], [Hora_Partido]) VALUES (7, 7, N'Boca Juniors', N'Rosario Central', N'2023-11-01', N'16:00')
INSERT [dbo].[Fixture] ([IdFixture], [Fkequipo], [equipo_local], [equipo_visitante], [fecha_juego], [Hora_Partido]) VALUES (8, 8, N'Central Córdoba (SdE)', N'San Lorenzo', N'2023-11-02', N'16:00')
INSERT [dbo].[Fixture] ([IdFixture], [Fkequipo], [equipo_local], [equipo_visitante], [fecha_juego], [Hora_Partido]) VALUES (9, 9, N'Colón', N'Sarmiento (J)', N'2023-11-02', N'18:00')
INSERT [dbo].[Fixture] ([IdFixture], [Fkequipo], [equipo_local], [equipo_visitante], [fecha_juego], [Hora_Partido]) VALUES (10, 10, N'Defensa y Justicia', N'Tigre', N'2023-11-02', N'18:00')
INSERT [dbo].[Fixture] ([IdFixture], [Fkequipo], [equipo_local], [equipo_visitante], [fecha_juego], [Hora_Partido]) VALUES (11, 11, N'Estudiantes (LP)', N'Vélez Sarsfield', N'2023-11-02', N'20:00')
INSERT [dbo].[Fixture] ([IdFixture], [Fkequipo], [equipo_local], [equipo_visitante], [fecha_juego], [Hora_Partido]) VALUES (12, 12, N'Gimnasia y Esgrima (LP)', N'Belgrano', N'2023-11-02', N'20:00')
INSERT [dbo].[Fixture] ([IdFixture], [Fkequipo], [equipo_local], [equipo_visitante], [fecha_juego], [Hora_Partido]) VALUES (13, 13, N'Godoy Cruz', N'Instituto', N'2023-11-02', N'22:00')
INSERT [dbo].[Fixture] ([IdFixture], [Fkequipo], [equipo_local], [equipo_visitante], [fecha_juego], [Hora_Partido]) VALUES (14, 14, N'Huracán', N'RiverPlate', N'2023-11-02', N'22:00')
SET IDENTITY_INSERT [dbo].[Fixture] OFF
GO
SET IDENTITY_INSERT [dbo].[Fixture2] ON 

INSERT [dbo].[Fixture2] ([IdFixture2], [Fkequipo2], [equipo_local2], [equipo_visitante2], [fecha_juego2], [Hira_Partido2]) VALUES (1, 1, N'RiverPlate', N'Huracán', N'2023-11-02', N'10:00')
INSERT [dbo].[Fixture2] ([IdFixture2], [Fkequipo2], [equipo_local2], [equipo_visitante2], [fecha_juego2], [Hira_Partido2]) VALUES (2, 2, N'Instituto', N'Godoy Cruz', N'2023-11-02', N'10:00')
INSERT [dbo].[Fixture2] ([IdFixture2], [Fkequipo2], [equipo_local2], [equipo_visitante2], [fecha_juego2], [Hira_Partido2]) VALUES (3, 3, N'Belgrano', N'Gimnasia y Esgrima (LP)', N'2023-11-02', N'12:00')
INSERT [dbo].[Fixture2] ([IdFixture2], [Fkequipo2], [equipo_local2], [equipo_visitante2], [fecha_juego2], [Hira_Partido2]) VALUES (4, 4, N'Vélez Sarsfield', N'Estudiantes (LP)', N'2023-11-02', N'12:00')
INSERT [dbo].[Fixture2] ([IdFixture2], [Fkequipo2], [equipo_local2], [equipo_visitante2], [fecha_juego2], [Hira_Partido2]) VALUES (5, 5, N'Tigre', N'Defensa y Justicia', N'2023-11-02', N'14:00')
INSERT [dbo].[Fixture2] ([IdFixture2], [Fkequipo2], [equipo_local2], [equipo_visitante2], [fecha_juego2], [Hira_Partido2]) VALUES (6, 6, N'Sarmiento (J)', N'Colón', N'2023-11-02', N'14:00')
INSERT [dbo].[Fixture2] ([IdFixture2], [Fkequipo2], [equipo_local2], [equipo_visitante2], [fecha_juego2], [Hira_Partido2]) VALUES (7, 7, N'San Lorenzo', N'Central Córdoba (SdE)', N'2023-11-02', N'16:00')
INSERT [dbo].[Fixture2] ([IdFixture2], [Fkequipo2], [equipo_local2], [equipo_visitante2], [fecha_juego2], [Hira_Partido2]) VALUES (8, 8, N'Rosario Central', N'Boca Juniors', N'2023-11-02', N'16:00')
INSERT [dbo].[Fixture2] ([IdFixture2], [Fkequipo2], [equipo_local2], [equipo_visitante2], [fecha_juego2], [Hira_Partido2]) VALUES (9, 9, N'Racing Club', N'Belgrano', N'2023-11-02', N'18:00')
INSERT [dbo].[Fixture2] ([IdFixture2], [Fkequipo2], [equipo_local2], [equipo_visitante2], [fecha_juego2], [Hira_Partido2]) VALUES (10, 10, N'Platense', N'Barracas Central', N'2023-11-02', N'18:00')
INSERT [dbo].[Fixture2] ([IdFixture2], [Fkequipo2], [equipo_local2], [equipo_visitante2], [fecha_juego2], [Hira_Partido2]) VALUES (11, 11, N'Newell''s Old Boys', N'Banfield', N'2023-11-02', N'20:00')
INSERT [dbo].[Fixture2] ([IdFixture2], [Fkequipo2], [equipo_local2], [equipo_visitante2], [fecha_juego2], [Hira_Partido2]) VALUES (12, 12, N'Lanús', N'Atlético Tucumán', N'2023-11-02', N'20:00')
INSERT [dbo].[Fixture2] ([IdFixture2], [Fkequipo2], [equipo_local2], [equipo_visitante2], [fecha_juego2], [Hira_Partido2]) VALUES (13, 13, N'Instituto', N'Arsenal', N'2023-11-02', N'22:00')
INSERT [dbo].[Fixture2] ([IdFixture2], [Fkequipo2], [equipo_local2], [equipo_visitante2], [fecha_juego2], [Hira_Partido2]) VALUES (14, 14, N'Independiente', N'Argentinos Juniors', N'2023-11-02', N'22:00')
SET IDENTITY_INSERT [dbo].[Fixture2] OFF
GO
SET IDENTITY_INSERT [dbo].[Jugador] ON 

INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (1, N'Franco Armani', N'Arquero', N'Argentina', 1)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (2, N'Milton Casco', N'Defensor', N'Argentina', 1)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (3, N'Gonzales Pires', N'Defensor', N'Argentina', 1)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (4, N'Paulo Diaz', N'Defensor', N'Argentina', 1)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (5, N'Enzo Diaz', N'Defensor', N'Argentina', 1)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (6, N'Matias Kranevitter', N'Mediocampista', N'Argentina', 1)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (7, N'Manuel Lanzini', N'Mediocampista', N'Argentina', 1)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (8, N'Ignacio Fernandez', N'Mediocampista', N'Argentina', 1)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (9, N'Nicolas De La Cruz', N'Mediocampista', N'Argentina', 1)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (10, N'Ezequiel Barco', N'Mediocampista', N'Argentina', 1)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (11, N'Salomon Rondon', N'Delantero', N'Argentina', 1)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (201, N'Tomas Sultani', N'Arquero', N'Colombia', 2)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (202, N'Sporle', N'Defensor', N'Argentina', 2)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (203, N'Pombo', N'Defensor', N'Argentina', 2)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (204, N'Breitenbruch', N'Defensor', N'Paraguay', 2)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (205, N'Chimino', N'Defensor', N'Argentina', 2)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (206, N'Muscia', N'Mediocampista', N'Argentina', 2)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (207, N'Cejas', N'Mediocampista', N'Colombia', 2)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (208, N'Viveros', N'Mediocampista', N'Argentina', 2)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (209, N'Rivero', N'Mediocampista', N'Argentina', 2)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (210, N'Brochero', N'Mediocampista', N'Argentina', 2)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (211, N'Londoño', N'Delantero', N'Argentina', 2)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (212, N'Marchiori', N'Arquero', N'Colombia', 3)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (213, N'Orihuela', N'Defensor', N'Argentina', 3)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (214, N'Romero', N'Defensor', N'Argentina', 3)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (215, N'Bianchi', N'Defensor', N'Paraguay', 3)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (216, N'Flores', N'Defensor', N'Argentina', 3)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (217, N'Pereyra', N'Mediocampista', N'Argentina', 3)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (218, N'Acosta', N'Mediocampista', N'Colombia', 3)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (219, N'Giani', N'Mediocampista', N'Argentina', 3)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (220, N'Carrera', N'Mediocampista', N'Argentina', 3)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (221, N'Tesuri', N'Mediocampista', N'Argentina', 3)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (222, N'Coronel', N'Delantero', N'Argentina', 3)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (223, N'Cambeses', N'Arquero', N'Argentina', 4)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (224, N'Coronel', N'Defensor', N'Argentina', 4)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (225, N'Maciel', N'Defensor', N'Argentina', 4)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (226, N'Quiroz', N'Defensor', N'Argentina', 4)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (227, N'Insúa', N'Defensor', N'Argentina', 4)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (228, N'Remedi', N'Mediocampista', N'Argentina', 4)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (229, N'Alvarez', N'Mediocampista', N'Argentina', 4)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (230, N'Cañete', N'Mediocampista', N'Argentina', 4)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (231, N'Rodriguez', N'Mediocampista', N'Argentina', 4)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (232, N'Bisanz', N'Mediocampista', N'Argentina', 4)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (233, N'Gimenez', N'Delantero', N'Argentina', 4)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (234, N'Desabato', N'Arquero', N'Argentina', 5)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (235, N'Insua', N'Defensor', N'Argentina', 5)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (236, N'Diaz', N'Defensor', N'Argentina', 5)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (237, N'Alvarez', N'Defensor', N'Argentina', 5)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (238, N'Capraro', N'Defensor', N'Argentina', 5)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (239, N'Peinipil', N'Defensor', N'Argentina', 5)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (240, N'Calderara', N'Mediocampista', N'Argentina', 5)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (241, N'Arce', N'Mediocampista', N'Argentina', 5)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (242, N'Tapia', N'Mediocampista', N'Argentina', 5)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (243, N'Mater', N'Mediocampista', N'Argentina', 5)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (244, N'Dominguez', N'Delantero', N'Argentina', 5)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (245, N'Losada', N'Arquero', N'Argentina', 6)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (246, N'Moreno', N'Defensor', N'Argentina', 6)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (247, N'Ibacache', N'Defensor', N'Argentina', 6)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (248, N'Rebola', N'Defensor', N'Argentina', 6)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (249, N'Barinaga', N'Defensor', N'Argentina', 6)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (250, N'Longo', N'Mediocampista', N'Argentina', 6)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (251, N'Rolon', N'Mediocampista', N'Argentina', 6)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (252, N'Sanchez', N'Mediocampista', N'Argentina', 6)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (253, N'Pastran', N'Mediocampista', N'Argentina', 6)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (254, N'Lencioni', N'Mediocampista', N'Argentina', 6)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (255, N'Passerini', N'Delantero', N'Argentina', 6)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (256, N'Romero', N'Arquero', N'Argentina', 7)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (257, N'Rojo', N'Defensor', N'Argentina', 7)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (258, N'Figal', N'Defensor', N'Argentina', 7)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (259, N'Advincula', N'Defensor', N'Argentina', 7)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (260, N'Saracchi', N'Defensor', N'Argentina', 7)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (261, N'Fernandez', N'Mediocampista', N'Argentina', 7)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (262, N'Medina', N'Mediocampista', N'Argentina', 7)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (263, N'Bullaude', N'Mediocampista', N'Argentina', 7)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (264, N'Barco', N'Mediocampista', N'Argentina', 7)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (265, N'Janson', N'Delantero', N'Argentina', 7)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (266, N'Merentiel', N'Delantero', N'Argentina', 7)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (267, N'Mansilla', N'Arquero', N'Argentina', 8)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (268, N'Gomez', N'Defensor', N'Argentina', 8)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (269, N'Valdez', N'Defensor', N'Argentina', 8)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (270, N'Goñi', N'Defensor', N'Argentina', 8)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (271, N'Canto', N'Mediocampista', N'Argentina', 8)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (272, N'Meli', N'Mediocampista', N'Argentina', 8)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (273, N'Pitton', N'Mediocampista', N'Argentina', 8)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (274, N'Farioli', N'Mediocampista', N'Argentina', 8)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (275, N'Maciel', N'Mediocampista', N'Argentina', 8)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (276, N'Ocampos Dominguez', N'Delantero', N'Argentina', 8)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (277, N'Rodriguez', N'Delantero', N'Argentina', 8)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (278, N'Ibañez', N'Arquero', N'Argentina', 9)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (279, N'Delgado', N'Defensor', N'Argentina', 9)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (280, N'Garces', N'Defensor', N'Argentina', 9)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (281, N'Conti', N'Defensor', N'Argentina', 9)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (282, N'Goltz', N'Defensor', N'Argentina', 9)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (283, N'Nardelli', N'Defensor', N'Argentina', 9)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (284, N'Moreyra', N'Mediocampista', N'Argentina', 9)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (285, N'Perlaza', N'Mediocampista', N'Argentina', 9)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (286, N'Galvan', N'Mediocampista', N'Argentina', 9)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (287, N'Botta', N'Delantero', N'Argentina', 9)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (288, N'Abila', N'Delantero', N'Argentina', 9)
GO
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (289, N'Fiermarin', N'Arquero', N'Argentina', 10)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (290, N'Ramos', N'Defensor', N'Argentina', 10)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (291, N'Caceres', N'Defensor', N'Argentina', 10)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (292, N'Malatini', N'Defensor', N'Argentina', 10)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (293, N'Escalante', N'Defensor', N'Argentina', 10)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (294, N'Schamine', N'Mediocampista', N'Argentina', 10)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (295, N'Lopez', N'Mediocampista', N'Argentina', 10)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (296, N'Beron', N'Mediocampista', N'Argentina', 10)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (297, N'Bogarin', N'Mediocampista', N'Argentina', 10)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (298, N'Fedele', N'Mediocampista', N'Argentina', 10)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (299, N'Pratto', N'Delantero', N'Argentina', 10)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (300, N'Andujar', N'Arquero', N'Argentina', 11)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (301, N'Godoy', N'Defensor', N'Argentina', 11)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (302, N'Nuñez', N'Defensor', N'Argentina', 11)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (303, N'Romero', N'Defensor', N'Argentina', 11)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (304, N'Mancuso', N'Defensor', N'Argentina', 11)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (305, N'Sosa', N'Mediocampista', N'Argentina', 11)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (306, N'Rodriguez', N'Mediocampista', N'Argentina', 11)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (307, N'Zuqui', N'Mediocampista', N'Argentina', 11)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (308, N'Rollheiser', N'Mediocampista', N'Argentina', 11)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (309, N'Boselli', N'Delantero', N'Argentina', 11)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (310, N'Mendez', N'Delantero', N'Argentina', 11)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (311, N'Durso', N'Arquero', N'Argentina', 12)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (312, N'Guiffrey', N'Defensor', N'Argentina', 12)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (313, N'Cabral', N'Defensor', N'Argentina', 12)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (314, N'Morales', N'Defensor', N'Argentina', 12)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (315, N'Enriqeu', N'Defensor', N'Argentina', 12)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (316, N'De Blasis', N'Mediocampista', N'Argentina', 12)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (317, N'Saravia', N'Mediocampista', N'Argentina', 12)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (318, N'Ramirez', N'Mediocampista', N'Argentina', 12)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (319, N'Abaldo', N'Mediocampista', N'Argentina', 12)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (320, N'Colazo', N'Mediocampista', N'Argentina', 12)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (321, N'Tarragona', N'Delantero', N'Argentina', 12)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (322, N'Rodriguez', N'Arquero', N'Argentina', 13)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (323, N'Arce', N'Defensor', N'Argentina', 13)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (324, N'Barrios', N'Defensor', N'Argentina', 13)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (325, N'Rasmussen', N'Defensor', N'Argentina', 13)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (326, N'Galdames', N'Defensor', N'Argentina', 13)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (327, N'Fernandez', N'Mediocampista', N'Argentina', 13)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (328, N'Leyes', N'Mediocampista', N'Argentina', 13)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (329, N'Barrea', N'Mediocampista', N'Argentina', 13)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (330, N'Lopez', N'Mediocampista', N'Argentina', 13)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (331, N'Conechny', N'Mediocampista', N'Argentina', 13)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (332, N'Rodriguez', N'Delantero', N'Argentina', 13)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (333, N'Chavez', N'Arquero', N'Argentina', 14)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (334, N'Tobio', N'Defensor', N'Argentina', 14)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (335, N'Ibañez', N'Defensor', N'Argentina', 14)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (336, N'Pereyra', N'Defensor', N'Argentina', 14)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (337, N'Souto', N'Defensor', N'Argentina', 14)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (338, N'Carrizo', N'Mediocampista', N'Argentina', 14)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (339, N'Fertoli', N'Mediocampista', N'Argentina', 14)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (340, N'Soñora', N'Mediocampista', N'Argentina', 14)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (341, N'Echeverria', N'Mediocampista', N'Argentina', 14)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (342, N'Pusetto', N'Delantero', N'Argentina', 14)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (343, N'Mazzantti', N'Delantero', N'Argentina', 14)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (344, N'Rey', N'Arquero', N'Argentina', 15)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (345, N'Isla', N'Defensor', N'Argentina', 15)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (346, N'Baez', N'Defensor', N'Argentina', 15)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (347, N'Laso', N'Defensor', N'Argentina', 15)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (348, N'Perez', N'Defensor', N'Argentina', 15)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (349, N'Gonzalez', N'Mediocampista', N'Argentina', 15)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (350, N'Marcone', N'Mediocampista', N'Argentina', 15)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (351, N'Mancuello', N'Mediocampista', N'Argentina', 15)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (352, N'Canelo', N'Delantero', N'Argentina', 15)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (353, N'Gimenez', N'Delantero', N'Argentina', 15)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (354, N'Martinez', N'Delantero', N'Argentina', 15)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (355, N'Roffo', N'Arquero', N'Argentina', 16)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (356, N'Bay', N'Defensor', N'Argentina', 16)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (357, N'Alarcon', N'Defensor', N'Argentina', 16)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (358, N'Parnisari', N'Defensor', N'Argentina', 16)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (359, N'Franco', N'Defensor', N'Argentina', 16)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (360, N'Acevedo', N'Mediocampista', N'Argentina', 16)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (361, N'Lodico', N'Mediocampista', N'Argentina', 16)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (362, N'Linares', N'Mediocampista', N'Argentina', 16)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (363, N'Romero', N'Mediocampista', N'Argentina', 16)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (364, N'Martinez', N'Delantero', N'Argentina', 16)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (365, N'Albertengo', N'Delantero', N'Argentina', 16)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (366, N'Acosta', N'Arquero', N'Argentina', 17)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (367, N'Soler', N'Defensor', N'Argentina', 17)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (368, N'Canale', N'Defensor', N'Argentina', 17)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (369, N'Lema', N'Defensor', N'Argentina', 17)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (370, N'Caceres', N'Defensor', N'Argentina', 17)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (371, N'Perez', N'Mediocampista', N'Argentina', 17)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (372, N'Loaiza', N'Mediocampista', N'Argentina', 17)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (373, N'Esquivel', N'Mediocampista', N'Argentina', 17)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (374, N'De La Vega', N'Mediocampista', N'Argentina', 17)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (375, N'Acosta', N'Mediocampista', N'Argentina', 17)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (376, N'Torres', N'Delantero', N'Argentina', 17)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (377, N'Hoyos', N'Arquero', N'Argentina', 18)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (378, N'Ortiz', N'Defensor', N'Argentina', 18)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (379, N'Glavinovich', N'Defensor', N'Argentina', 18)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (380, N'Velazquez', N'Defensor', N'Argentina', 18)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (381, N'Sforza', N'Mediocampista', N'Argentina', 18)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (382, N'Martino', N'Mediocampista', N'Argentina', 18)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (383, N'Sordo', N'Mediocampista', N'Argentina', 18)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (384, N'Gomez', N'Mediocampista', N'Argentina', 18)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (385, N'Ferreira', N'Mediocampista', N'Argentina', 18)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (386, N'Aguirre', N'Delantero', N'Argentina', 18)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (387, N'Recalde', N'Delantero', N'Argentina', 18)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (388, N'Macagno', N'Arquero', N'Argentina', 19)
GO
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (389, N'Morgantini', N'Defensor', N'Argentina', 19)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (406, N'Vazquez', N'Defensor', N'Argentina', 19)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (407, N'Jacquet', N'Defensor', N'Argentina', 19)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (408, N'Infante', N'Defensor', N'Argentina', 19)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (409, N'Russo', N'Mediocampista', N'Argentina', 19)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (410, N'Diaz', N'Mediocampista', N'Argentina', 19)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (411, N'Castro', N'Mediocampista', N'Argentina', 19)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (412, N'Ocampo', N'Mediocampista', N'Argentina', 19)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (413, N'Pellegrino', N'Mediocampista', N'Argentina', 19)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (414, N'Martinez', N'Delantero', N'Argentina', 19)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (415, N'Arias', N'Arquero', N'Argentina', 20)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (416, N'Mura', N'Defensor', N'Argentina', 20)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (417, N'Rubio', N'Defensor', N'Argentina', 20)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (418, N'Colombo', N'Defensor', N'Argentina', 20)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (419, N'Rojas', N'Defensor', N'Argentina', 20)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (420, N'Nardoni', N'Mediocampista', N'Argentina', 20)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (421, N'Moreno', N'Mediocampista', N'Argentina', 20)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (422, N'Quintero', N'Mediocampista', N'Argentina', 20)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (423, N'Gallego', N'Mediocampista', N'Argentina', 20)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (424, N'Ojeda', N'Mediocampista', N'Argentina', 20)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (425, N'Hauche', N'Delantero', N'Argentina', 20)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (426, N'Broun', N'Arquero', N'Argentina', 21)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (427, N'Rodriguez', N'Defensor', N'Argentina', 21)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (428, N'Sandez', N'Defensor', N'Argentina', 21)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (429, N'Mallo', N'Defensor', N'Argentina', 21)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (430, N'Komar', N'Defensor', N'Argentina', 21)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (431, N'O´Connor', N'Mediocampista', N'Argentina', 21)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (432, N'Ortiz', N'Mediocampista', N'Argentina', 21)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (433, N'Campaz', N'Mediocampista', N'Argentina', 21)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (434, N'Malcorra', N'Mediocampista', N'Argentina', 21)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (435, N'Lovera', N'Mediocampista', N'Argentina', 21)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (436, N'Martinez', N'Delantero', N'Argentina', 21)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (437, N'Batalla', N'Arquero', N'Argentina', 22)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (438, N'Perez', N'Defensor', N'Argentina', 22)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (439, N'Campi', N'Defensor', N'Argentina', 22)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (440, N'Hernandez', N'Defensor', N'Argentina', 22)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (441, N'Sanchez', N'Mediocampista', N'Argentina', 22)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (442, N'Giay', N'Mediocampista', N'Argentina', 22)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (443, N'Braida', N'Mediocampista', N'Argentina', 22)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (444, N'Elias', N'Mediocampista', N'Argentina', 22)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (445, N'Barrios', N'Mediocampista', N'Argentina', 22)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (446, N'Bareiro', N'Delantero', N'Argentina', 22)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (447, N'Girotti', N'Delantero', N'Argentina', 22)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (448, N'Devecchi', N'Arquero', N'Argentina', 23)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (449, N'Bettini', N'Defensor', N'Argentina', 23)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (450, N'Paredes', N'Defensor', N'Argentina', 23)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (451, N'Insaurralde', N'Defensor', N'Argentina', 23)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (452, N'Diaz', N'Defensor', N'Argentina', 23)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (453, N'Maneiro', N'Mediocampista', N'Argentina', 23)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (454, N'Quiroz', N'Mediocampista', N'Argentina', 23)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (455, N'Calcaterra', N'Mediocampista', N'Argentina', 23)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (456, N'Ojeda', N'Mediocampista', N'Argentina', 23)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (457, N'Marinelli', N'Mediocampista', N'Argentina', 23)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (458, N'Fontana', N'Delantero', N'Argentina', 23)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (459, N'Marinelli', N'Arquero', N'Argentina', 24)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (460, N'Forclaz', N'Defensor', N'Argentina', 24)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (461, N'Rojas', N'Defensor', N'Argentina', 24)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (462, N'Luciatti', N'Defensor', N'Argentina', 24)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (463, N'Prieto', N'Defensor', N'Argentina', 24)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (464, N'Cardozo', N'Mediocampista', N'Argentina', 24)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (465, N'Prediger', N'Mediocampista', N'Argentina', 24)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (466, N'Menossi', N'Mediocampista', N'Argentina', 24)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (467, N'Paradela', N'Mediocampista', N'Uruguay', 24)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (468, N'Lopez', N'Delantero', N'Argentina', 24)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (469, N'Reniero', N'Delantero', N'Argentina', 24)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (470, N'Gomez', N'Arquero', N'Argentina', 25)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (471, N'Gomez', N'Defensor', N'Argentina', 25)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (472, N'Gomez', N'Defensor', N'Argentina', 25)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (473, N'Giannetti', N'Defensor', N'Argentina', 25)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (474, N'Garcia', N'Defensor', N'Argentina', 25)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (475, N'Florentin', N'Mediocampista', N'Argentina', 25)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (476, N'Mendez', N'Mediocampista', N'Argentina', 25)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (477, N'Garayalde', N'Mediocampista', N'Argentina', 25)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (478, N'Aquino', N'Delantero', N'Argentina', 25)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (479, N'Castro', N'Delantero', N'Argentina', 25)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (480, N'Pizzini', N'Delantero', N'Argentina', 25)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (481, N'Herrera', N'Arquero', N'Argentina', 26)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (482, N'Benavidez', N'Defensor', N'Argentina', 26)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (483, N'Mantilla', N'Defensor', N'Argentina', 26)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (484, N'Rodriguez', N'Defensor', N'Argentina', 26)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (485, N'Portillo', N'Defensor', N'Argentina', 26)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (486, N'Ortegoza', N'Mediocampista', N'Argentina', 26)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (487, N'Villagra', N'Mediocampista', N'Argentina', 26)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (488, N'Galarza', N'Mediocampista', N'Argentina', 26)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (489, N'Garro', N'Mediocampista', N'Argentina', 26)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (490, N'Bustos', N'Delantero', N'Argentina', 26)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (491, N'Barticciotto', N'Delantero', N'Argentina', 26)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (492, N'Moyano', N'Arquero', N'Argentina', 27)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (493, N'Paz', N'Defensor', N'Argentina', 27)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (494, N'Calderon', N'Defensor', N'Argentina', 27)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (495, N'Corvalan', N'Defensor', N'Argentina', 27)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (496, N'Vera', N'Mediocampista', N'Argentina', 27)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (497, N'Domina', N'Mediocampista', N'Argentina', 27)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (498, N'Pardo', N'Mediocampista', N'Argentina', 27)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (499, N'Luna', N'Mediocampista', N'Argentina', 27)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (500, N'Zenon', N'Mediocampista', N'Argentina', 27)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (501, N'Morales', N'Delantero', N'Argentina', 27)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (502, N'Orsini', N'Delantero', N'Argentina', 27)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (503, N'Arias', N'Arquero', N'Argentina', 28)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (504, N'Villalba', N'Defensor', N'Argentina', 28)
GO
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (505, N'Torren', N'Defensor', N'Argentina', 28)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (506, N'Galvan', N'Defensor', N'Argentina', 28)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (507, N'Montiel', N'Mediocampista', N'Argentina', 28)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (508, N'Rodriguez', N'Mediocampista', N'Argentina', 28)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (509, N'Gonzalez Metilli', N'Mediocampista', N'Argentina', 28)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (510, N'Redondo', N'Mediocampista', N'Argentina', 28)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (511, N'Cabrera', N'Mediocampista', N'Argentina', 28)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (512, N'Heredia', N'Delantero', N'Argentina', 28)
INSERT [dbo].[Jugador] ([IDjugador], [nombre], [pocision], [pais], [Fkequipo]) VALUES (513, N'Gondou', N'Delantero', N'Argentina', 28)
SET IDENTITY_INSERT [dbo].[Jugador] OFF
GO
SET IDENTITY_INSERT [dbo].[TablaGrupoA] ON 

INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (1, N'Almirante Brown')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (2, N'Agropecuario')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (3, N'San Martín Tucumán')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (4, N'Estudiantes Río Cuarto')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (5, N'Defensores de Belgrano')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (6, N'Gimnasia Mendoza')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (7, N'San Martín de San Juan')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (8, N'Temperley')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (9, N'Atlético Güemes')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (10, N'Deportivo Morón')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (11, N'Nueva Chicago')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (12, N'Defensores Unidos')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (13, N'Alvarado')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (14, N'Patronato')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (15, N'All Boys')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (16, N'Guillermo Brown')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (17, N'Almagro')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (18, N'San Telmo')
INSERT [dbo].[TablaGrupoA] ([IdTablaGrupoA], [NombreEquipo]) VALUES (19, N'Flandria')
SET IDENTITY_INSERT [dbo].[TablaGrupoA] OFF
GO
SET IDENTITY_INSERT [dbo].[TablaGrupoB] ON 

INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (1, N'Independiente Rivadavia')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (2, N'Chacarita Juniors')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (3, N'Deportivo Maipú')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (4, N'Quilmes')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (5, N'Atlético Rafaela')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (6, N'Atlético Mitre')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (7, N'Deportivo Riestra')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (8, N'Ferro Carril Oeste')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (9, N'Brown de Adrogué')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (10, N'Gimnasia Jujuy')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (11, N'Deportivo Madryn')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (12, N'Racing de Córdoba')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (13, N'Chaco For Ever')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (14, N'Estudiantes de Caseros')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (15, N'Atlanta')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (16, N'Aldosivi')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (17, N'Tristán Suárez')
INSERT [dbo].[TablaGrupoB] ([IdTablaGrupoB], [NombreEquipo]) VALUES (18, N'Villa Dálmine')
SET IDENTITY_INSERT [dbo].[TablaGrupoB] OFF
GO
ALTER TABLE [dbo].[Fixture]  WITH CHECK ADD  CONSTRAINT [FK_Fixture_Equipo] FOREIGN KEY([Fkequipo])
REFERENCES [dbo].[Equipo] ([IDequipo])
GO
ALTER TABLE [dbo].[Fixture] CHECK CONSTRAINT [FK_Fixture_Equipo]
GO
ALTER TABLE [dbo].[Fixture2]  WITH CHECK ADD  CONSTRAINT [FK_Fixture2_Equipo] FOREIGN KEY([Fkequipo2])
REFERENCES [dbo].[Equipo] ([IDequipo])
GO
ALTER TABLE [dbo].[Fixture2] CHECK CONSTRAINT [FK_Fixture2_Equipo]
GO
ALTER TABLE [dbo].[Jugador]  WITH CHECK ADD  CONSTRAINT [FK_Jugador_Equipo] FOREIGN KEY([Fkequipo])
REFERENCES [dbo].[Equipo] ([IDequipo])
GO
ALTER TABLE [dbo].[Jugador] CHECK CONSTRAINT [FK_Jugador_Equipo]
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerComentarios]    Script Date: 30/11/2023 14:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_ObtenerComentarios]
AS
BEGIN
SELECT * FROM Comentarios
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerTablaGrupoA]    Script Date: 30/11/2023 14:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_ObtenerTablaGrupoA]
AS
BEGIN
SELECT * FROM TablaGrupoA
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerTablaGrupoB]    Script Date: 30/11/2023 14:09:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_ObtenerTablaGrupoB]
AS
BEGIN
SELECT * FROM TablaGrupoB
END
GO
USE [master]
GO
ALTER DATABASE [TpFinal] SET  READ_WRITE 
GO
