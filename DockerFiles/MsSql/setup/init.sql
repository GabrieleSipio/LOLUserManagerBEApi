-- init.sql
USE [master]
GO

/****** Object:  Database [WORKSHOP]    Script Date: 20/09/2022 17:20:41 ******/
CREATE DATABASE [WORKSHOP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WORKSHOP', FILENAME = N'/var/opt/mssql/data/WORKSHOP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WORKSHOP_log', FILENAME = N'/var/opt/mssql/data/WORKSHOP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WORKSHOP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [WORKSHOP] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [WORKSHOP] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [WORKSHOP] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [WORKSHOP] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [WORKSHOP] SET ARITHABORT OFF 
GO

ALTER DATABASE [WORKSHOP] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [WORKSHOP] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [WORKSHOP] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [WORKSHOP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [WORKSHOP] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [WORKSHOP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [WORKSHOP] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [WORKSHOP] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [WORKSHOP] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [WORKSHOP] SET  DISABLE_BROKER 
GO

ALTER DATABASE [WORKSHOP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [WORKSHOP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [WORKSHOP] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [WORKSHOP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [WORKSHOP] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [WORKSHOP] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [WORKSHOP] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [WORKSHOP] SET RECOVERY FULL 
GO

ALTER DATABASE [WORKSHOP] SET  MULTI_USER 
GO

ALTER DATABASE [WORKSHOP] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [WORKSHOP] SET DB_CHAINING OFF 
GO

ALTER DATABASE [WORKSHOP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [WORKSHOP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [WORKSHOP] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [WORKSHOP] SET QUERY_STORE = OFF
GO

ALTER DATABASE [WORKSHOP] SET  READ_WRITE 
GO

