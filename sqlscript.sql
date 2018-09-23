USE [master]
GO
/****** Object:  Database [HealthCareMainDB]    Script Date: 9/23/2018 7:33:53 PM ******/
CREATE DATABASE [HealthCareMainDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HealthCareMainDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\HealthCareMainDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HealthCareMainDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\HealthCareMainDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HealthCareMainDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HealthCareMainDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HealthCareMainDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HealthCareMainDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HealthCareMainDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HealthCareMainDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HealthCareMainDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET RECOVERY FULL 
GO
ALTER DATABASE [HealthCareMainDB] SET  MULTI_USER 
GO
ALTER DATABASE [HealthCareMainDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HealthCareMainDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HealthCareMainDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HealthCareMainDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HealthCareMainDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HealthCareMainDB', N'ON'
GO
ALTER DATABASE [HealthCareMainDB] SET QUERY_STORE = OFF
GO
USE [HealthCareMainDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [HealthCareMainDB]
GO
/****** Object:  Table [dbo].[tblCodeDesc]    Script Date: 9/23/2018 7:33:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCodeDesc](
	[CodeTableId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[InsertDate] [date] NULL,
	[Updatedate] [nchar](10) NULL,
 CONSTRAINT [PK_tblCodeDesc] PRIMARY KEY CLUSTERED 
(
	[CodeTableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPatient]    Script Date: 9/23/2018 7:33:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPatient](
	[PatientId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[SurName] [nvarchar](100) NOT NULL,
	[Gender] [int] NOT NULL,
	[DOB] [date] NULL,
	[TelephoneId] [int] NULL,
	[InsertDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_tblPatient] PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTelephone]    Script Date: 9/23/2018 7:33:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTelephone](
	[TelephoneId] [int] IDENTITY(1,1) NOT NULL,
	[Number] [varchar](50) NULL,
	[CodeTableId] [int] NULL,
	[PatientId] [int] NULL,
	[InsertDate] [date] NULL,
	[UpdateDate] [date] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[TelephoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblTelephone]  WITH CHECK ADD  CONSTRAINT [FK_tblTelephone_tblPatient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[tblPatient] ([PatientId])
GO
ALTER TABLE [dbo].[tblTelephone] CHECK CONSTRAINT [FK_tblTelephone_tblPatient]
GO
USE [master]
GO
ALTER DATABASE [HealthCareMainDB] SET  READ_WRITE 
GO
