USE [InloTEC]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[ColorValue] [nvarchar](16) NOT NULL,
	[Deleted] [int] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses_Details]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses_Details](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdLocations] [bigint] NOT NULL,
	[IdTeachers] [bigint] NOT NULL,
	[IdCourses] [bigint] NOT NULL,
	[IdPrograms] [bigint] NOT NULL,
	[IdSchedule] [bigint] NOT NULL,
	[IdModality] [bigint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Notes] [nvarchar](512) NULL,
	[Deleted] [int] NOT NULL,
 CONSTRAINT [PK_Courses_Details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses_Details_Groups]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses_Details_Groups](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdGroups] [bigint] NOT NULL,
	[IdCourses_Details] [bigint] NOT NULL,
	[Deleted] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Days]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Days](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Deleted] [int] NOT NULL,
 CONSTRAINT [PK_Days] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Errors]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Errors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](100) NULL,
	[errorNumber] [int] NULL,
	[errorState] [int] NULL,
	[errorSeverity] [int] NULL,
	[errorLine] [int] NULL,
	[errorProcedure] [varchar](max) NULL,
	[errorMessage] [varchar](max) NULL,
	[errorDatetime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Deleted] [int] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hours]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hours](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[Deleted] [int] NOT NULL,
 CONSTRAINT [PK_Hours] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Deleted] [int] NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modality]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modality](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](64) NOT NULL,
	[Deleted] [int] NOT NULL,
 CONSTRAINT [PK_Modality] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programs]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Deleted] [int] NOT NULL,
 CONSTRAINT [PK_Programs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Deleted] [int] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](128) NOT NULL,
	[Deleted] [int] NOT NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule_Days]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule_Days](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdDays] [bigint] NOT NULL,
	[IdHours] [bigint] NOT NULL,
	[Deleted] [int] NOT NULL,
 CONSTRAINT [PK_Schedule_Days] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScheduleDays_Schedule]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleDays_Schedule](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdSchedule_Days] [bigint] NOT NULL,
	[IdSchedule] [bigint] NOT NULL,
	[Deleted] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[IdentityNumber] [nvarchar](64) NOT NULL,
	[Email] [nvarchar](128) NOT NULL,
	[Deleted] [int] NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[LastName1] [nvarchar](64) NOT NULL,
	[LastName2] [nvarchar](64) NOT NULL,
	[Passwordhash] [nvarchar](256) NOT NULL,
	[Email] [nvarchar](256) NOT NULL,
	[Deleted] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users_Roles]    Script Date: 9/17/2024 6:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users_Roles](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdUsers] [bigint] NOT NULL,
	[IdRoles] [bigint] NOT NULL,
	[Deleted] [int] NOT NULL,
 CONSTRAINT [PK_Users_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Courses_Details]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Details_Courses] FOREIGN KEY([IdCourses])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[Courses_Details] CHECK CONSTRAINT [FK_Courses_Details_Courses]
GO
ALTER TABLE [dbo].[Courses_Details]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Details_Locations] FOREIGN KEY([IdLocations])
REFERENCES [dbo].[Locations] ([Id])
GO
ALTER TABLE [dbo].[Courses_Details] CHECK CONSTRAINT [FK_Courses_Details_Locations]
GO
ALTER TABLE [dbo].[Courses_Details]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Details_Modality] FOREIGN KEY([IdModality])
REFERENCES [dbo].[Modality] ([id])
GO
ALTER TABLE [dbo].[Courses_Details] CHECK CONSTRAINT [FK_Courses_Details_Modality]
GO
ALTER TABLE [dbo].[Courses_Details]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Details_Programs] FOREIGN KEY([IdPrograms])
REFERENCES [dbo].[Programs] ([Id])
GO
ALTER TABLE [dbo].[Courses_Details] CHECK CONSTRAINT [FK_Courses_Details_Programs]
GO
ALTER TABLE [dbo].[Courses_Details]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Details_Schedule] FOREIGN KEY([IdSchedule])
REFERENCES [dbo].[Schedule] ([Id])
GO
ALTER TABLE [dbo].[Courses_Details] CHECK CONSTRAINT [FK_Courses_Details_Schedule]
GO
ALTER TABLE [dbo].[Courses_Details]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Details_Teachers] FOREIGN KEY([IdTeachers])
REFERENCES [dbo].[Teachers] ([Id])
GO
ALTER TABLE [dbo].[Courses_Details] CHECK CONSTRAINT [FK_Courses_Details_Teachers]
GO
ALTER TABLE [dbo].[Courses_Details_Groups]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Details_Groups_Courses_Details] FOREIGN KEY([IdCourses_Details])
REFERENCES [dbo].[Courses_Details] ([Id])
GO
ALTER TABLE [dbo].[Courses_Details_Groups] CHECK CONSTRAINT [FK_Courses_Details_Groups_Courses_Details]
GO
ALTER TABLE [dbo].[Courses_Details_Groups]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Details_Groups_Groups] FOREIGN KEY([IdGroups])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[Courses_Details_Groups] CHECK CONSTRAINT [FK_Courses_Details_Groups_Groups]
GO
ALTER TABLE [dbo].[Schedule_Days]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Days_Days] FOREIGN KEY([IdDays])
REFERENCES [dbo].[Days] ([Id])
GO
ALTER TABLE [dbo].[Schedule_Days] CHECK CONSTRAINT [FK_Schedule_Days_Days]
GO
ALTER TABLE [dbo].[Schedule_Days]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Days_Hours] FOREIGN KEY([IdHours])
REFERENCES [dbo].[Hours] ([Id])
GO
ALTER TABLE [dbo].[Schedule_Days] CHECK CONSTRAINT [FK_Schedule_Days_Hours]
GO
ALTER TABLE [dbo].[ScheduleDays_Schedule]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleDays_Schedule_Schedule] FOREIGN KEY([IdSchedule])
REFERENCES [dbo].[Schedule] ([Id])
GO
ALTER TABLE [dbo].[ScheduleDays_Schedule] CHECK CONSTRAINT [FK_ScheduleDays_Schedule_Schedule]
GO
ALTER TABLE [dbo].[ScheduleDays_Schedule]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleDays_Schedule_Schedule_Days] FOREIGN KEY([IdSchedule_Days])
REFERENCES [dbo].[Schedule_Days] ([Id])
GO
ALTER TABLE [dbo].[ScheduleDays_Schedule] CHECK CONSTRAINT [FK_ScheduleDays_Schedule_Schedule_Days]
GO
ALTER TABLE [dbo].[Users_Roles]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles_Roles] FOREIGN KEY([IdRoles])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users_Roles] CHECK CONSTRAINT [FK_Users_Roles_Roles]
GO
ALTER TABLE [dbo].[Users_Roles]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles_Users] FOREIGN KEY([IdUsers])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Users_Roles] CHECK CONSTRAINT [FK_Users_Roles_Users]
GO


USE [InloTEC]
INSERT INTO [dbo].[Roles] ([Name], [Deleted])
    VALUES
	('Admin',0),
	('Normal_User',0),
	('Protected',0);

INSERT INTO [dbo].[Days] ([Name], [Deleted])
    VALUES
	('Lunes',0),
	('Martes',0),
	('Miércoles',0),
	('Jueves',0),
	('Viernes',0),
	('Sabado',0),
	('Domingo',0);

INSERT INTO [dbo].[Locations] ([Name], [Deleted])
    VALUES
	('Cartago',0);

INSERT INTO [dbo].[Programs] ([Name], [Deleted])
    VALUES
	('Técnico en Inventarios y Logística',0);

INSERT INTO [dbo].[Modality] ([Name], [Deleted])
    VALUES
	('Presencial',0),
	('Virtual',0),
	('Semi-Presencial',0);

INSERT INTO [dbo].[Courses] ([Name], [ColorValue], [Deleted])
    VALUES
	('Introducción a la Logística', 'FF7F50',0),
	('Infraestructura de Almacenes', 'FFD700',0),
	('Administración de Bodegas e Inventarios I', 'FF69B4',0),
	('Administración de Transporte', '87CEEB',0),
	('Administración de Bodegas e Inventarios II', 'FFA07A',0),
	('Matemática', 'FFB6C1',0),
	('Costos Logísticos', '98FB98',0),
	('Estadística', 'F08080',0),
	('Planificación de la Producción y de Servicios', 'E0FFFF',0),
	('Administración de Abastecimiento y Compras', 'ADFF2F',0),
	('Comunicación', '00CED1',0),
	('Inventarios y Modelos de Pronósticos', 'FFDAB9',0),
	('Proyecto de Graduación', 'AFEEEE',0);

INSERT INTO [dbo].[Users] ([Name], [LastName1], [LastName2], [Passwordhash], [Email], [Deleted])
    VALUES
	('admin','admin','admin','admin','admin@admin.com',0);

INSERT INTO [dbo].[Users_Roles]( [IdUsers], [IdRoles], [Deleted])
	VALUES
	(1,1,0);