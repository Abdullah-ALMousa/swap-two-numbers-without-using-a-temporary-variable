USE [master]
GO
/****** Object:  Database [PIWORKS_TESTING]    Script Date: 1/15/2019 2:39:27 PM ******/
CREATE DATABASE [PIWORKS_TESTING]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PIWORKS_TESTING', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\PIWORKS_TESTING.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PIWORKS_TESTING_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\PIWORKS_TESTING_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PIWORKS_TESTING] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PIWORKS_TESTING].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PIWORKS_TESTING] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET ARITHABORT OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PIWORKS_TESTING] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PIWORKS_TESTING] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PIWORKS_TESTING] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PIWORKS_TESTING] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PIWORKS_TESTING] SET  MULTI_USER 
GO
ALTER DATABASE [PIWORKS_TESTING] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PIWORKS_TESTING] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PIWORKS_TESTING] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PIWORKS_TESTING] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PIWORKS_TESTING] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PIWORKS_TESTING]
GO
/****** Object:  Table [dbo].[i_user_login_logs]    Script Date: 1/15/2019 2:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[i_user_login_logs](
	[userId] [int] NOT NULL,
	[login_date] [date] NULL CONSTRAINT [DF_i_user_login_logs_login_date]  DEFAULT (getutcdate())
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[i_users]    Script Date: 1/15/2019 2:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[i_users](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[emailaddress] [varchar](100) NULL,
	[isActive] [bit] NULL,
	[password] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
 CONSTRAINT [PK_i_users] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[i_user_login_logs] ([userId], [login_date]) VALUES (1, CAST(N'2019-01-15' AS Date))
INSERT [dbo].[i_user_login_logs] ([userId], [login_date]) VALUES (2, CAST(N'2019-01-15' AS Date))
INSERT [dbo].[i_user_login_logs] ([userId], [login_date]) VALUES (1, CAST(N'2019-01-15' AS Date))
INSERT [dbo].[i_user_login_logs] ([userId], [login_date]) VALUES (1, CAST(N'2019-01-15' AS Date))
INSERT [dbo].[i_user_login_logs] ([userId], [login_date]) VALUES (2, CAST(N'2019-01-15' AS Date))
INSERT [dbo].[i_user_login_logs] ([userId], [login_date]) VALUES (2, CAST(N'2019-01-15' AS Date))
INSERT [dbo].[i_user_login_logs] ([userId], [login_date]) VALUES (3, CAST(N'2019-01-15' AS Date))
INSERT [dbo].[i_user_login_logs] ([userId], [login_date]) VALUES (2, CAST(N'2019-01-15' AS Date))
INSERT [dbo].[i_user_login_logs] ([userId], [login_date]) VALUES (2, CAST(N'2019-01-15' AS Date))
INSERT [dbo].[i_user_login_logs] ([userId], [login_date]) VALUES (2, CAST(N'2019-01-15' AS Date))
INSERT [dbo].[i_user_login_logs] ([userId], [login_date]) VALUES (3, CAST(N'2019-01-15' AS Date))
INSERT [dbo].[i_user_login_logs] ([userId], [login_date]) VALUES (3, CAST(N'2019-01-15' AS Date))
SET IDENTITY_INSERT [dbo].[i_users] ON 

INSERT [dbo].[i_users] ([userId], [username], [emailaddress], [isActive], [password], [Gender]) VALUES (1, N'Admin', N'Admin@piworks', 1, N'jdshfjsdhfjkshdjf', NULL)
INSERT [dbo].[i_users] ([userId], [username], [emailaddress], [isActive], [password], [Gender]) VALUES (2, N'Rita', N'Rita@gmail.com', 1, N'djjskdhfh', N'F')
INSERT [dbo].[i_users] ([userId], [username], [emailaddress], [isActive], [password], [Gender]) VALUES (3, N'Abdullah', N'abdullah.almousa.tr@piworks.net', 1, N'dkdjkdjkjdd', N'M')
INSERT [dbo].[i_users] ([userId], [username], [emailaddress], [isActive], [password], [Gender]) VALUES (4, N'Mohammed', N'Mhd@gmail.com', 0, N'dkdkdjkjd', N'M')
SET IDENTITY_INSERT [dbo].[i_users] OFF
ALTER TABLE [dbo].[i_user_login_logs]  WITH CHECK ADD  CONSTRAINT [FK_i_user_login_logs_i_users] FOREIGN KEY([userId])
REFERENCES [dbo].[i_users] ([userId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[i_user_login_logs] CHECK CONSTRAINT [FK_i_user_login_logs_i_users]
GO
USE [master]
GO
ALTER DATABASE [PIWORKS_TESTING] SET  READ_WRITE 
GO
