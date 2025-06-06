USE [DB_Events]
GO
/****** Object:  User [user]    Script Date: 4-6-2025 13:35:08 ******/
CREATE USER [user] FOR LOGIN [user] WITH DEFAULT_SCHEMA=[db_accessadmin]
GO
ALTER ROLE [db_owner] ADD MEMBER [user]
GO
/****** Object:  Table [db_accessadmin].[Capacitief]    Script Date: 4-6-2025 13:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_accessadmin].[Capacitief](
	[SensorValue] [varchar](max) NULL,
	[SampleNr] [int] NULL,
	[Time] [datetime] NULL,
	[SensorID] [int] NULL,
	[MeasurementNr] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [db_accessadmin].[Encoder]    Script Date: 4-6-2025 13:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_accessadmin].[Encoder](
	[SensorValue] [varchar](255) NULL,
	[SampleNr] [int] NULL,
	[Time] [datetime] NULL,
	[MeasurementNr] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [db_accessadmin].[LoadCell]    Script Date: 4-6-2025 13:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_accessadmin].[LoadCell](
	[SensorValue] [varchar](255) NULL,
	[SampleNr] [int] NULL,
	[Time] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [db_accessadmin].[TempSensor]    Script Date: 4-6-2025 13:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_accessadmin].[TempSensor](
	[SensorValue] [varchar](255) NULL,
	[SampleNr] [int] NULL,
	[Time] [datetime] NULL,
	[SensorID] [int] NULL,
	[MeasurementNr] [int] NULL
) ON [PRIMARY]
GO
