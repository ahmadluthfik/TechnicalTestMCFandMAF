USE [master]
GO
/****** Object:  Database [TechnicalTestMega]    Script Date: 18/01/2025 07:30:51 ******/
CREATE DATABASE [TechnicalTestMega]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TechnicalTestMega', FILENAME = N'C:\Users\LUTHFI\TechnicalTestMega.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TechnicalTestMega_log', FILENAME = N'C:\Users\LUTHFI\TechnicalTestMega_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TechnicalTestMega] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TechnicalTestMega].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TechnicalTestMega] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET ARITHABORT OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TechnicalTestMega] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TechnicalTestMega] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TechnicalTestMega] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TechnicalTestMega] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TechnicalTestMega] SET  MULTI_USER 
GO
ALTER DATABASE [TechnicalTestMega] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TechnicalTestMega] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TechnicalTestMega] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TechnicalTestMega] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TechnicalTestMega] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TechnicalTestMega] SET QUERY_STORE = OFF
GO
USE [TechnicalTestMega]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [TechnicalTestMega]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 18/01/2025 07:30:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ms_storage_location]    Script Date: 18/01/2025 07:30:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ms_storage_location](
	[location_id] [varchar](10) NOT NULL,
	[location_name] [varchar](100) NULL,
 CONSTRAINT [PK_ms_storage_location] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ms_user]    Script Date: 18/01/2025 07:30:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ms_user](
	[user_id] [bigint] NOT NULL,
	[user_name] [varchar](20) NULL,
	[password] [varchar](50) NULL,
	[is_active] [bit] NULL,
 CONSTRAINT [PK_ms_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tr_bpkb]    Script Date: 18/01/2025 07:30:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tr_bpkb](
	[agreement_number] [varchar](100) NOT NULL,
	[bpkb_no] [varchar](100) NULL,
	[branch_id] [varchar](10) NULL,
	[bpkb_date] [datetime2](7) NULL,
	[faktur_no] [varchar](100) NULL,
	[faktur_date] [datetime2](7) NULL,
	[location_id] [varchar](10) NULL,
	[police_no] [varchar](20) NULL,
	[bpkb_date_in] [datetime2](7) NULL,
	[created_by] [varchar](20) NULL,
	[created_on] [datetime2](7) NULL,
	[last_updated_by] [varchar](20) NULL,
	[last_updated_on] [datetime2](7) NULL,
 CONSTRAINT [PK_tr_bpkb] PRIMARY KEY CLUSTERED 
(
	[agreement_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ms_storage_location] ([location_id], [location_name]) VALUES (N'001', N'Jakarta')
INSERT [dbo].[ms_storage_location] ([location_id], [location_name]) VALUES (N'002', N'Bandung')
INSERT [dbo].[ms_storage_location] ([location_id], [location_name]) VALUES (N'003', N'Surabaya')
INSERT [dbo].[ms_storage_location] ([location_id], [location_name]) VALUES (N'004', N'Medan')
GO
INSERT [dbo].[ms_user] ([user_id], [user_name], [password], [is_active]) VALUES (1, N'JhonUmiro', N'admin1*', 1)
INSERT [dbo].[ms_user] ([user_id], [user_name], [password], [is_active]) VALUES (2, N'TrisNatan', N'admin2@', 1)
INSERT [dbo].[ms_user] ([user_id], [user_name], [password], [is_active]) VALUES (3, N'HugoRess', N'admin3#', 0)
GO
ALTER TABLE [dbo].[tr_bpkb]  WITH CHECK ADD  CONSTRAINT [FK_tr_bpkb_ms_storage_location] FOREIGN KEY([location_id])
REFERENCES [dbo].[ms_storage_location] ([location_id])
GO
ALTER TABLE [dbo].[tr_bpkb] CHECK CONSTRAINT [FK_tr_bpkb_ms_storage_location]
GO
USE [master]
GO
ALTER DATABASE [TechnicalTestMega] SET  READ_WRITE 
GO
