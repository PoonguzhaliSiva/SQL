USE [master]
GO

/****** Object:  Database [CompanyDB]    Script Date: 19-05-2024 21:04:28 ******/
CREATE DATABASE [CompanyDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CompanyDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLSERVERMANAGE\MSSQL\DATA\CompanyDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CompanyDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLSERVERMANAGE\MSSQL\DATA\CompanyDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CompanyDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [CompanyDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [CompanyDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [CompanyDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [CompanyDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [CompanyDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [CompanyDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [CompanyDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [CompanyDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [CompanyDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [CompanyDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [CompanyDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [CompanyDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [CompanyDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [CompanyDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [CompanyDB] SET  ENABLE_BROKER 
GO

ALTER DATABASE [CompanyDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [CompanyDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [CompanyDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [CompanyDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [CompanyDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [CompanyDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [CompanyDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [CompanyDB] SET RECOVERY FULL 
GO

ALTER DATABASE [CompanyDB] SET  MULTI_USER 
GO

ALTER DATABASE [CompanyDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [CompanyDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [CompanyDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [CompanyDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [CompanyDB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [CompanyDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [CompanyDB] SET QUERY_STORE = ON
GO

ALTER DATABASE [CompanyDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [CompanyDB] SET  READ_WRITE 
GO

