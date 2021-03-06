USE [master]
GO
/****** Object:  Database [Gestion_de_recursos_humanos]    Script Date: 30/5/2020 22:32:24 ******/
CREATE DATABASE [Gestion_de_recursos_humanos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gestion_de_recursos_humanos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Gestion_de_recursos_humanos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Gestion_de_recursos_humanos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Gestion_de_recursos_humanos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Gestion_de_recursos_humanos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET ARITHABORT OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET  MULTI_USER 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET QUERY_STORE = OFF
GO
USE [Gestion_de_recursos_humanos]
GO
/****** Object:  Table [dbo].[Barrio]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barrio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nchar](30) NOT NULL,
	[FK_Localidad] [int] NOT NULL,
 CONSTRAINT [PK_Barrio] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Busqueda]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Busqueda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Observacion] [text] NOT NULL,
	[FK_Personal] [int] NOT NULL,
	[FK_Oficina] [int] NOT NULL,
 CONSTRAINT [PK_Busqueda] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Cargo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FK_Barrio] [int] NOT NULL,
	[Calle] [nvarchar](50) NOT NULL,
	[Numero] [int] NOT NULL,
	[FK_TipoDireccion] [int] NOT NULL,
 CONSTRAINT [PK_Direccion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListaPostulante]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaPostulante](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FK_Postulante] [int] NOT NULL,
	[FK_Busqueda] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidad](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[FK_Provincia] [int] NOT NULL,
 CONSTRAINT [PK_Localidad] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Necesidad]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Necesidad](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Observacion] [text] NOT NULL,
	[FK_Personal] [int] NOT NULL,
 CONSTRAINT [PK_Necesidad] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oficina]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oficina](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nchar](30) NOT NULL,
	[FK_Direccion] [int] NOT NULL,
 CONSTRAINT [PK_Oficina] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permiso]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permiso](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[FK_Cargo] [int] NOT NULL,
 CONSTRAINT [PK_Permiso] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](30) NOT NULL,
	[Apellido] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[FK_Genero] [int] NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personal](
	[ID] [int] NOT NULL,
	[FechaIngreso] [nvarchar](30) NOT NULL,
	[FechaNacimiento] [nvarchar](30) NOT NULL,
	[Legajo] [int] IDENTITY(1,1) NOT NULL,
	[FK_Direccion] [int] NOT NULL,
	[FK_Cargo] [int] NOT NULL,
	[FK_Oficina] [int] NOT NULL,
	[FK_Telefono] [int] NOT NULL,
	[FK_Supervisor] [int] NULL,
	[Contraseña] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Personal] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postulante]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postulante](
	[ID] [int] NOT NULL,
	[CV] [text] NOT NULL,
	[FK_Estado] [int] NOT NULL,
 CONSTRAINT [PK_Postulante] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefono]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefono](
	[Numero] [int] NOT NULL,
	[Empresa] [nvarchar](50) NOT NULL,
	[FK_TipoTelefono] [int] NOT NULL,
 CONSTRAINT [PK_Telefono] PRIMARY KEY CLUSTERED 
(
	[Numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDireccion]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDireccion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nchar](30) NOT NULL,
 CONSTRAINT [PK_TipoDireccion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTelefono]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTelefono](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nchar](30) NOT NULL,
 CONSTRAINT [PK_TipoTelefono] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Barrio] ON 

INSERT [dbo].[Barrio] ([ID], [Descripcion], [FK_Localidad]) VALUES (1, N'Lauda                         ', 1)
INSERT [dbo].[Barrio] ([ID], [Descripcion], [FK_Localidad]) VALUES (2, N'Barrio uno                    ', 2)
SET IDENTITY_INSERT [dbo].[Barrio] OFF
SET IDENTITY_INSERT [dbo].[Cargo] ON 

INSERT [dbo].[Cargo] ([ID], [Descripcion]) VALUES (1, N'Gerente                       ')
INSERT [dbo].[Cargo] ([ID], [Descripcion]) VALUES (2, N'Recursos Humanos')
INSERT [dbo].[Cargo] ([ID], [Descripcion]) VALUES (3, N'Empleado')
SET IDENTITY_INSERT [dbo].[Cargo] OFF
SET IDENTITY_INSERT [dbo].[Direccion] ON 

INSERT [dbo].[Direccion] ([ID], [FK_Barrio], [Calle], [Numero], [FK_TipoDireccion]) VALUES (1, 1, N'De los Constituyentes         ', 1229, 1)
INSERT [dbo].[Direccion] ([ID], [FK_Barrio], [Calle], [Numero], [FK_TipoDireccion]) VALUES (2, 2, N'Alfonsina Storni              ', 41, 2)
INSERT [dbo].[Direccion] ([ID], [FK_Barrio], [Calle], [Numero], [FK_TipoDireccion]) VALUES (3, 1, N'constitest2', 1234, 1)
INSERT [dbo].[Direccion] ([ID], [FK_Barrio], [Calle], [Numero], [FK_TipoDireccion]) VALUES (4, 1, N'pepelandia', 1234, 1)
INSERT [dbo].[Direccion] ([ID], [FK_Barrio], [Calle], [Numero], [FK_TipoDireccion]) VALUES (6, 1, N'racing', 1414, 1)
INSERT [dbo].[Direccion] ([ID], [FK_Barrio], [Calle], [Numero], [FK_TipoDireccion]) VALUES (1004, 1, N'git', 12, 1)
SET IDENTITY_INSERT [dbo].[Direccion] OFF
SET IDENTITY_INSERT [dbo].[Genero] ON 

INSERT [dbo].[Genero] ([ID], [Descripcion]) VALUES (1, N'Masculino                     ')
INSERT [dbo].[Genero] ([ID], [Descripcion]) VALUES (2, N'Femenino                      ')
SET IDENTITY_INSERT [dbo].[Genero] OFF
SET IDENTITY_INSERT [dbo].[Localidad] ON 

INSERT [dbo].[Localidad] ([ID], [Descripcion], [FK_Provincia]) VALUES (1, N'Luis Guillon                  ', 1)
INSERT [dbo].[Localidad] ([ID], [Descripcion], [FK_Provincia]) VALUES (2, N'Ezeiza                        ', 1)
SET IDENTITY_INSERT [dbo].[Localidad] OFF
SET IDENTITY_INSERT [dbo].[Necesidad] ON 

INSERT [dbo].[Necesidad] ([ID], [Descripcion], [Observacion], [FK_Personal]) VALUES (1, N'Programador .NET              ', N'Se necesita programador .NET junior part time', 1)
SET IDENTITY_INSERT [dbo].[Necesidad] OFF
SET IDENTITY_INSERT [dbo].[Oficina] ON 

INSERT [dbo].[Oficina] ([ID], [Descripcion], [FK_Direccion]) VALUES (1, N'UPE                           ', 2)
SET IDENTITY_INSERT [dbo].[Oficina] OFF
SET IDENTITY_INSERT [dbo].[Permiso] ON 

INSERT [dbo].[Permiso] ([ID], [Descripcion], [FK_Cargo]) VALUES (1, N'Generar necesidad', 1)
INSERT [dbo].[Permiso] ([ID], [Descripcion], [FK_Cargo]) VALUES (2, N'Visualizar postulante de necesidad', 1)
INSERT [dbo].[Permiso] ([ID], [Descripcion], [FK_Cargo]) VALUES (3, N'Aprobar postulante            ', 1)
INSERT [dbo].[Permiso] ([ID], [Descripcion], [FK_Cargo]) VALUES (4, N'Rechazar postulante           ', 1)
INSERT [dbo].[Permiso] ([ID], [Descripcion], [FK_Cargo]) VALUES (5, N'Borrar necesidad              ', 1)
SET IDENTITY_INSERT [dbo].[Permiso] OFF
SET IDENTITY_INSERT [dbo].[Persona] ON 

INSERT [dbo].[Persona] ([ID], [Nombre], [Apellido], [Email], [FK_Genero]) VALUES (1, N'Matias                        ', N'Piedrabuena                   ', N'matias.ezequiel.piedrabuena@gmail.com', 1)
INSERT [dbo].[Persona] ([ID], [Nombre], [Apellido], [Email], [FK_Genero]) VALUES (2, N'Gaston', N'Roa', N'gaston_roa@live.com', 2)
INSERT [dbo].[Persona] ([ID], [Nombre], [Apellido], [Email], [FK_Genero]) VALUES (5, N'Matiastest2', N'PiedraTest2', N'modPersonal@test.com', 1)
INSERT [dbo].[Persona] ([ID], [Nombre], [Apellido], [Email], [FK_Genero]) VALUES (6, N'test', N'formulario', N'pepe@pepe.pepe', 1)
INSERT [dbo].[Persona] ([ID], [Nombre], [Apellido], [Email], [FK_Genero]) VALUES (8, N'Pipo', N'Argenti', N'ejemplo@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[Persona] OFF
SET IDENTITY_INSERT [dbo].[Personal] ON 

INSERT [dbo].[Personal] ([ID], [FechaIngreso], [FechaNacimiento], [Legajo], [FK_Direccion], [FK_Cargo], [FK_Oficina], [FK_Telefono], [FK_Supervisor], [Contraseña]) VALUES (1, N'2020-05-22', N'1993-01-14', 1, 1, 1, 1, 1138173357, NULL, N'contraseñagenerica')
INSERT [dbo].[Personal] ([ID], [FechaIngreso], [FechaNacimiento], [Legajo], [FK_Direccion], [FK_Cargo], [FK_Oficina], [FK_Telefono], [FK_Supervisor], [Contraseña]) VALUES (5, N'2020-05-26', N'1993-01-14', 2, 3, 2, 1, 1234, 1, N'1234')
INSERT [dbo].[Personal] ([ID], [FechaIngreso], [FechaNacimiento], [Legajo], [FK_Direccion], [FK_Cargo], [FK_Oficina], [FK_Telefono], [FK_Supervisor], [Contraseña]) VALUES (6, N'''2020-5-27''', N'''1234-1-1''', 3, 4, 2, 1, 1234, 1, N'1234')
INSERT [dbo].[Personal] ([ID], [FechaIngreso], [FechaNacimiento], [Legajo], [FK_Direccion], [FK_Cargo], [FK_Oficina], [FK_Telefono], [FK_Supervisor], [Contraseña]) VALUES (8, N'''2020-5-27''', N'''1981-1-12''', 5, 6, 3, 1, 15151515, 1, N'5345345')
SET IDENTITY_INSERT [dbo].[Personal] OFF
SET IDENTITY_INSERT [dbo].[Provincia] ON 

INSERT [dbo].[Provincia] ([ID], [Descripcion]) VALUES (1, N'Buenos Aires                  ')
SET IDENTITY_INSERT [dbo].[Provincia] OFF
INSERT [dbo].[Telefono] ([Numero], [Empresa], [FK_TipoTelefono]) VALUES (1234, N'pepe', 1)
INSERT [dbo].[Telefono] ([Numero], [Empresa], [FK_TipoTelefono]) VALUES (12121212, N'github', 1)
INSERT [dbo].[Telefono] ([Numero], [Empresa], [FK_TipoTelefono]) VALUES (15151515, N'vomistar', 1)
INSERT [dbo].[Telefono] ([Numero], [Empresa], [FK_TipoTelefono]) VALUES (1138173357, N'Tuenti                        ', 1)
SET IDENTITY_INSERT [dbo].[TipoDireccion] ON 

INSERT [dbo].[TipoDireccion] ([ID], [Descripcion]) VALUES (1, N'Casa                          ')
INSERT [dbo].[TipoDireccion] ([ID], [Descripcion]) VALUES (2, N'Oficina                       ')
SET IDENTITY_INSERT [dbo].[TipoDireccion] OFF
SET IDENTITY_INSERT [dbo].[TipoTelefono] ON 

INSERT [dbo].[TipoTelefono] ([ID], [Descripcion]) VALUES (1, N'Celular                       ')
SET IDENTITY_INSERT [dbo].[TipoTelefono] OFF
ALTER TABLE [dbo].[Barrio]  WITH CHECK ADD  CONSTRAINT [FK_Localidad] FOREIGN KEY([FK_Localidad])
REFERENCES [dbo].[Localidad] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Barrio] CHECK CONSTRAINT [FK_Localidad]
GO
ALTER TABLE [dbo].[Busqueda]  WITH CHECK ADD  CONSTRAINT [Necesidad_Busqueda] FOREIGN KEY([ID])
REFERENCES [dbo].[Necesidad] ([ID])
GO
ALTER TABLE [dbo].[Busqueda] CHECK CONSTRAINT [Necesidad_Busqueda]
GO
ALTER TABLE [dbo].[Busqueda]  WITH CHECK ADD  CONSTRAINT [Para_Oficina] FOREIGN KEY([FK_Oficina])
REFERENCES [dbo].[Oficina] ([ID])
GO
ALTER TABLE [dbo].[Busqueda] CHECK CONSTRAINT [Para_Oficina]
GO
ALTER TABLE [dbo].[Busqueda]  WITH CHECK ADD  CONSTRAINT [RRHH_Busqueda] FOREIGN KEY([FK_Personal])
REFERENCES [dbo].[Personal] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Busqueda] CHECK CONSTRAINT [RRHH_Busqueda]
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Barrio] FOREIGN KEY([FK_Barrio])
REFERENCES [dbo].[Barrio] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_Barrio]
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_TipoDireccion] FOREIGN KEY([FK_TipoDireccion])
REFERENCES [dbo].[TipoDireccion] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_TipoDireccion]
GO
ALTER TABLE [dbo].[ListaPostulante]  WITH CHECK ADD  CONSTRAINT [EnBusqueda] FOREIGN KEY([FK_Busqueda])
REFERENCES [dbo].[Busqueda] ([ID])
GO
ALTER TABLE [dbo].[ListaPostulante] CHECK CONSTRAINT [EnBusqueda]
GO
ALTER TABLE [dbo].[ListaPostulante]  WITH CHECK ADD  CONSTRAINT [Postulado] FOREIGN KEY([FK_Postulante])
REFERENCES [dbo].[Postulante] ([ID])
GO
ALTER TABLE [dbo].[ListaPostulante] CHECK CONSTRAINT [Postulado]
GO
ALTER TABLE [dbo].[Localidad]  WITH CHECK ADD  CONSTRAINT [FK_Provincia] FOREIGN KEY([FK_Provincia])
REFERENCES [dbo].[Provincia] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [FK_Provincia]
GO
ALTER TABLE [dbo].[Necesidad]  WITH CHECK ADD  CONSTRAINT [Gerente_Necesidad] FOREIGN KEY([FK_Personal])
REFERENCES [dbo].[Personal] ([ID])
GO
ALTER TABLE [dbo].[Necesidad] CHECK CONSTRAINT [Gerente_Necesidad]
GO
ALTER TABLE [dbo].[Oficina]  WITH CHECK ADD  CONSTRAINT [FK_Direccion] FOREIGN KEY([FK_Direccion])
REFERENCES [dbo].[Direccion] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Oficina] CHECK CONSTRAINT [FK_Direccion]
GO
ALTER TABLE [dbo].[Permiso]  WITH CHECK ADD  CONSTRAINT [TienePermiso] FOREIGN KEY([FK_Cargo])
REFERENCES [dbo].[Cargo] ([ID])
GO
ALTER TABLE [dbo].[Permiso] CHECK CONSTRAINT [TienePermiso]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Genero] FOREIGN KEY([FK_Genero])
REFERENCES [dbo].[Genero] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Genero]
GO
ALTER TABLE [dbo].[Personal]  WITH NOCHECK ADD  CONSTRAINT [Hijo_Personal] FOREIGN KEY([ID])
REFERENCES [dbo].[Persona] ([ID])
GO
ALTER TABLE [dbo].[Personal] NOCHECK CONSTRAINT [Hijo_Personal]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [Organigrama_Personal] FOREIGN KEY([FK_Supervisor])
REFERENCES [dbo].[Personal] ([ID])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [Organigrama_Personal]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [Tiene_Direccion] FOREIGN KEY([FK_Direccion])
REFERENCES [dbo].[Direccion] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [Tiene_Direccion]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [Tiene_Telefono] FOREIGN KEY([FK_Telefono])
REFERENCES [dbo].[Telefono] ([Numero])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [Tiene_Telefono]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [TieneCargo] FOREIGN KEY([FK_Cargo])
REFERENCES [dbo].[Cargo] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [TieneCargo]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [Trabaja_Oficina] FOREIGN KEY([FK_Oficina])
REFERENCES [dbo].[Oficina] ([ID])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [Trabaja_Oficina]
GO
ALTER TABLE [dbo].[Postulante]  WITH CHECK ADD  CONSTRAINT [Estado_Postulante] FOREIGN KEY([FK_Estado])
REFERENCES [dbo].[Estado] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Postulante] CHECK CONSTRAINT [Estado_Postulante]
GO
ALTER TABLE [dbo].[Postulante]  WITH NOCHECK ADD  CONSTRAINT [Hijo_Postulante] FOREIGN KEY([ID])
REFERENCES [dbo].[Persona] ([ID])
GO
ALTER TABLE [dbo].[Postulante] NOCHECK CONSTRAINT [Hijo_Postulante]
GO
ALTER TABLE [dbo].[Telefono]  WITH CHECK ADD  CONSTRAINT [FK_TipoTelefono] FOREIGN KEY([FK_TipoTelefono])
REFERENCES [dbo].[TipoTelefono] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Telefono] CHECK CONSTRAINT [FK_TipoTelefono]
GO
/****** Object:  StoredProcedure [dbo].[sp_AltaPersonal]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_AltaPersonal] @Nombre nvarchar(30), @Apellido nvarchar(30), @Email nvarchar(50), @genero int, @FechaNacimiento nvarchar(30), @FechaIngreso nvarchar(30),  @Calle nvarchar(50),
									@Altura int, @FK_TipoDireccion int, @FK_Barrio int, @FK_Cargo int, @FK_Oficina int, @FK_TipoTelefono int, @NumeroTelefono int, @EmpresaTelefono nvarchar(50),
									@FK_Supervisor int, @Contraseña nvarchar(50)
as
Begin
	declare
		@ID int,
		@FK_Direccion int
if (@FK_Supervisor = 0)
	begin
		set @FK_Supervisor = null 
	end
if not exists (Select ID from Persona where Nombre = @Nombre AND Apellido = @Apellido AND Email = @Email)
    Begin
            INSERT INTO Persona values(@Nombre,@Apellido,@Email,@genero)
    End  
	INSERT INTO Direccion values (@FK_Barrio, @Calle, @Altura, @FK_TipoDireccion)
	INSERT INTO Telefono values(@NumeroTelefono, @EmpresaTelefono, @FK_TipoTelefono)
	set @ID = (select ID from Persona where Nombre = @Nombre AND Apellido = @Apellido AND Email = @Email)
	set @FK_Direccion = (select ID from Direccion where Calle = @Calle AND Numero = @Altura)
	INSERT INTO Personal values(@ID,@FechaIngreso,@FechaNacimiento,@FK_Direccion,@FK_Cargo,@FK_Oficina,@NumeroTelefono,@FK_Supervisor,@Contraseña)
End
GO
/****** Object:  StoredProcedure [dbo].[sp_BajaPersonal]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_BajaPersonal] @Legajo int
as
begin
declare 
		@ID int,
		@FK_Telefono int,
		@FK_Direccion int
set @ID = (select ID from Personal where Legajo = @Legajo)
set @FK_Telefono = (select FK_Telefono from Personal where Legajo = @Legajo)
set @FK_Direccion = (select FK_Direccion from Personal where Legajo = @Legajo)
update Personal
		set FK_Supervisor = null
		where FK_Supervisor = @Legajo
delete from Personal
where Legajo = @Legajo
delete from Persona
where ID = @ID
delete from Telefono
where Numero = @FK_Telefono
delete from Direccion
where ID = @FK_Direccion
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ComprobarSiExisteElPersonal]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ComprobarSiExisteElPersonal] @Nombre nvarchar(30), @Apellido nvarchar(30), @Email nvarchar(50)
as
declare
		@ID int
if exists (select ID from Persona where Nombre = @Nombre AND Apellido = @Apellido AND Email =  @Email )
begin
	set @ID = (select ID from Persona where Nombre = @Nombre AND Apellido = @Apellido AND Email =  @Email )	
	select ID from Personal where ID = @ID
end
else
begin
	select ID from Persona where ID = @ID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ComprobarUsuario]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ComprobarUsuario] @Legajo int, @Contraseña nvarchar(50)
AS
SELECT [Persona].[Nombre],
	[Persona].[Apellido]
FROM [dbo].[Persona]
WHERE [Persona].[ID] =  
	(SELECT [ID] 
	FROM [PERSONAL]
	WHERE (Legajo = @Legajo) AND (Contraseña = @Contraseña))
GO
/****** Object:  StoredProcedure [dbo].[sp_InformacionCompleta]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InformacionCompleta] @Legajo int
AS

SELECT Empleado.Legajo, Persona.Nombre, Persona.Apellido, Persona.Email, Genero.Descripcion AS Genero, Cargo.Descripcion AS Cargo, Empleado.FechaNacimiento, Empleado.FechaIngreso, 
		Direccion.Calle, Direccion.Numero AS Altura, TipoDireccion.Descripcion AS TipoDireccion, Provincia.Descripcion AS Provincia, Localidad.Descripcion AS Localidad,
		Barrio.Descripcion AS Barrio, TipoTelefono.Descripcion AS TipoTelefono,Telefono.Numero AS NumeroTel, Oficina.Descripcion AS Oficina, 
		Supervisor.ID AS LegajoSupervisor
FROM Personal AS Empleado
INNER JOIN Persona
ON Empleado.ID = Persona.ID
INNER JOIN Genero
ON Persona.FK_Genero = Genero.ID
INNER JOIN Cargo
ON Empleado.FK_Cargo = Cargo.ID
INNER JOIN Direccion
ON Empleado.FK_Direccion = Direccion.ID
INNER JOIN TipoDireccion
ON Direccion.FK_TipoDireccion = TipoDireccion.ID
INNER JOIN Barrio
ON Direccion.FK_Barrio = Barrio.ID
INNER JOIN Localidad
ON Barrio.FK_Localidad = Localidad.ID
INNER JOIN Provincia
ON Localidad.FK_Provincia = Provincia.ID
INNER JOIN Telefono
ON Empleado.FK_Telefono = Telefono.Numero
INNER JOIN TipoTelefono
ON Telefono.FK_TipoTelefono = TipoTelefono.ID
INNER JOIN Oficina
ON Empleado.FK_Oficina = Oficina.ID
LEFT JOIN Personal AS Supervisor
ON Empleado.FK_Supervisor = Supervisor.ID
Where (Empleado.Legajo = @Legajo);
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarPersonal]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ModificarPersonal] @Legajo int,@Nombre nvarchar(30), @Apellido nvarchar(30), @Email nvarchar(50), @genero int,  @Calle nvarchar(50),
									@Altura int, @FK_TipoDireccion int, @FK_Barrio int, @FK_Cargo int, @FK_Oficina int, @FK_TipoTelefono int, @NumeroTelefono int,
									@FK_Supervisor int

as
Begin
	declare
		@ID int,
		@FK_Direccion int,
		@FK_Telefono int
if (@FK_Supervisor = 0)
	begin
		set @FK_Supervisor = null 
	end
set @ID = (select ID from Personal where Legajo = @Legajo)
set @FK_Direccion = (select FK_Direccion from Personal where Legajo = @Legajo)
set @FK_Telefono = (select FK_Telefono from Personal where Legajo = @Legajo)
update Persona 
		set Nombre = @Nombre, 
			Apellido = @Apellido,
			Email = @Email
		where ID = @ID
update Direccion
		set FK_Barrio = @FK_Barrio,
			Calle = @Calle,
			Numero = @Altura,
			FK_TipoDireccion = @FK_TipoDireccion
		where ID = @FK_Direccion
update Telefono
		set Numero = @NumeroTelefono,
			FK_TipoTelefono = @FK_TipoTelefono
		where numero = @FK_Telefono
update Personal
		set FK_Cargo = @FK_Cargo,
			FK_Oficina = @FK_Oficina,
			FK_Supervisor = @FK_Supervisor,
			FK_Direccion = @FK_Direccion,
			FK_Telefono = @FK_Telefono
		where ID = @ID
End
GO
/****** Object:  StoredProcedure [dbo].[sp_VerBarriosEnLocalidad]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_VerBarriosEnLocalidad] @FK_Localidad int
AS
	SELECT ID, Descripcion
	FROM Barrio
	Where FK_Localidad = @FK_Localidad
GO
/****** Object:  StoredProcedure [dbo].[sp_VerGenero]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_VerGenero]
AS
	SELECT ID, Descripcion
	FROM Genero
GO
/****** Object:  StoredProcedure [dbo].[sp_VerLocalidadesEnProvincia]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_VerLocalidadesEnProvincia] @FK_Provincia int
AS
	SELECT ID, Descripcion
	FROM Localidad
	Where FK_Provincia = @FK_Provincia
GO
/****** Object:  StoredProcedure [dbo].[sp_VerTodoCargo]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_VerTodoCargo]
AS
	SELECT *
	FROM Cargo
GO
/****** Object:  StoredProcedure [dbo].[sp_VerTodoOficina]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_VerTodoOficina]
AS
	SELECT ID, Descripcion
	FROM Oficina
GO
/****** Object:  StoredProcedure [dbo].[sp_VerTodoPersonal]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_VerTodoPersonal]
as
begin
SELECT Personal.Legajo AS Legajo, Persona.Nombre AS Nombre, Persona.Apellido AS Apellido, Cargo.Descripcion AS Cargo
FROM Personal
INNER JOIN Persona
ON Personal.ID = Persona.ID
INNER JOIN Cargo
ON Personal.FK_Cargo = Cargo.ID
ORDER BY Personal.Legajo ASC
end
GO
/****** Object:  StoredProcedure [dbo].[sp_VerTodoProvincia]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_VerTodoProvincia]
AS
	SELECT ID, Descripcion
	FROM Provincia
GO
/****** Object:  StoredProcedure [dbo].[sp_VerTodoTipoDireccion]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_VerTodoTipoDireccion]
AS
	SELECT *
	FROM TipoDireccion
GO
/****** Object:  StoredProcedure [dbo].[sp_VerTodoTipoTelefono]    Script Date: 30/5/2020 22:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_VerTodoTipoTelefono]
AS
	SELECT *
	FROM TipoTelefono
GO
USE [master]
GO
ALTER DATABASE [Gestion_de_recursos_humanos] SET  READ_WRITE 
GO
