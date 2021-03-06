USE [master]
GO
/****** Object:  Database [EntityFrameworkExample]    Script Date: 16/04/2016 01:08:21 a.m. ******/
CREATE DATABASE [EntityFrameworkExample] ON  PRIMARY 
( NAME = N'EntityFrameworkExample', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\EntityFrameworkExample.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EntityFrameworkExample_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\EntityFrameworkExample_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EntityFrameworkExample] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EntityFrameworkExample].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EntityFrameworkExample] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET ARITHABORT OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EntityFrameworkExample] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EntityFrameworkExample] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EntityFrameworkExample] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EntityFrameworkExample] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EntityFrameworkExample] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EntityFrameworkExample] SET RECOVERY FULL 
GO
ALTER DATABASE [EntityFrameworkExample] SET  MULTI_USER 
GO
ALTER DATABASE [EntityFrameworkExample] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EntityFrameworkExample] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EntityFrameworkExample', N'ON'
GO
USE [EntityFrameworkExample]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 16/04/2016 01:08:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombreUsuario] [varchar](50) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([idUsuario], [nombreUsuario]) VALUES (1, N'Juan Perez')
INSERT [dbo].[Usuarios] ([idUsuario], [nombreUsuario]) VALUES (2, N'John Smith')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
USE [master]
GO
ALTER DATABASE [EntityFrameworkExample] SET  READ_WRITE 
GO
