/*****CREACION DE BASE DE DATOS SMARTEAS3.0 *******/
USE [master]
GO

/****** Object:  Database [SmartEAS3.0]    Script Date: 06/25/2013 15:31:30 ******/
CREATE DATABASE [SmartEAS3.0] ON  PRIMARY 
( NAME = N'SmartEAS3.0', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SmartEAS3.0.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SmartEAS3.0_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SmartEAS3.0_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [SmartEAS3.0] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SmartEAS3.0].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [SmartEAS3.0] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET ARITHABORT OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [SmartEAS3.0] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [SmartEAS3.0] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [SmartEAS3.0] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET  DISABLE_BROKER 
GO

ALTER DATABASE [SmartEAS3.0] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [SmartEAS3.0] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [SmartEAS3.0] SET  READ_WRITE 
GO

ALTER DATABASE [SmartEAS3.0] SET RECOVERY FULL 
GO

ALTER DATABASE [SmartEAS3.0] SET  MULTI_USER 
GO

ALTER DATABASE [SmartEAS3.0] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [SmartEAS3.0] SET DB_CHAINING OFF 
GO
/*****CREACION DE TABLAS*******/
USE [SmartEAS3.0]
GO
/****** Object:  Table [dbo].[ReasonCode]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReasonCode](
	[code] [int] NOT NULL,
	[reason] [varchar](50) NOT NULL,
	[abbrv] [varchar](20) NULL,
	[ste] [bit] NULL,
	[deact] [bit] NULL,
 CONSTRAINT [PK_ReasonCode] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Receipt](
	[id] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Receipt] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[storeEmployee]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[storeEmployee](
	[id_Employee] [varchar](100) NOT NULL,
	[nombre_Employee] [nvarchar](100) NULL,
	[apellido_Employee] [nvarchar](100) NULL,
 CONSTRAINT [PK_storeEmployee] PRIMARY KEY CLUSTERED 
(
	[id_Employee] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ldm_history]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ldm_history](
	[ip_LDM] [varchar](50) NULL,
	[device] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
	[fecha] [datetime] NULL,
	[checked] [nchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Aisle]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aisle](
	[id] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Aisle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[code] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TypeDoor]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TypeDoor](
	[id] [numeric](1, 0) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[description] [varchar](100) NULL,
 CONSTRAINT [PK_TypeDoor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Store]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Store](
	[id] [varchar](25) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[manager] [varchar](100) NULL,
	[address] [varchar](100) NULL,
	[tel] [varchar](20) NULL,
	[city] [varchar](50) NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ultralink]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ultralink](
	[ip] [varchar](25) NOT NULL,
	[idStore] [varchar](25) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](200) NULL,
 CONSTRAINT [PK_Ultralink] PRIMARY KEY CLUSTERED 
(
	[ip] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Door]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Door](
	[ipUltralink] [varchar](25) NOT NULL,
	[id] [varchar](25) NOT NULL,
	[idType] [numeric](1, 0) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](200) NULL,
 CONSTRAINT [PK_Door] PRIMARY KEY CLUSTERED 
(
	[ipUltralink] ASC,
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DesactivationCount]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DesactivationCount](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[category] [numeric](2, 0) NULL,
	[idStore] [varchar](25) NOT NULL,
	[division] [varchar](25) NULL,
	[idDoor] [varchar](25) NOT NULL,
	[descriptionDoor] [varchar](25) NULL,
	[typeDoor] [numeric](1, 0) NULL,
	[idDevice] [numeric](2, 0) NULL,
	[descriptionDevice] [varchar](25) NULL,
	[intervalDateTime] [datetime] NOT NULL,
	[time] [numeric](4, 0) NULL,
	[count] [numeric](6, 0) NULL,
	[countSum] [numeric](6, 0) NULL,
	[ipAddress] [varchar](25) NOT NULL,
 CONSTRAINT [PK_DesactivationCount_1] PRIMARY KEY CLUSTERED 
(
	[idStore] ASC,
	[idDoor] ASC,
	[intervalDateTime] ASC,
	[ipAddress] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetacherCount]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetacherCount](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[category] [numeric](2, 0) NULL,
	[idStore] [varchar](25) NOT NULL,
	[division] [varchar](25) NULL,
	[idDoor] [varchar](25) NOT NULL,
	[descriptionDoor] [varchar](25) NULL,
	[typeDoor] [numeric](1, 0) NULL,
	[idDevice] [numeric](2, 0) NULL,
	[descriptionDevice] [varchar](25) NULL,
	[intervalDateTime] [datetime] NOT NULL,
	[time] [numeric](4, 0) NULL,
	[count] [numeric](6, 0) NULL,
	[countSum] [numeric](6, 0) NULL,
	[ipAddress] [varchar](25) NOT NULL,
 CONSTRAINT [PK_DetacherCount] PRIMARY KEY CLUSTERED 
(
	[idStore] ASC,
	[idDoor] ASC,
	[intervalDateTime] ASC,
	[ipAddress] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlarmCount]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlarmCount](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[category] [numeric](2, 0) NULL,
	[idStore] [varchar](25) NOT NULL,
	[division] [varchar](25) NULL,
	[idDoor] [varchar](25) NOT NULL,
	[descriptionDoor] [varchar](25) NULL,
	[typeDoor] [numeric](1, 0) NULL,
	[idDevice] [numeric](2, 0) NULL,
	[descriptionDevice] [varchar](25) NULL,
	[intervalDateTime] [datetime] NOT NULL,
	[time] [numeric](4, 0) NULL,
	[count] [numeric](6, 0) NULL,
	[countSum] [numeric](6, 0) NULL,
	[ipAddress] [varchar](25) NOT NULL,
 CONSTRAINT [PK_AlarmCount] PRIMARY KEY CLUSTERED 
(
	[idStore] ASC,
	[idDoor] ASC,
	[intervalDateTime] ASC,
	[ipAddress] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PeopleCount]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PeopleCount](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[category] [numeric](2, 0) NULL,
	[idStore] [varchar](25) NOT NULL,
	[division] [varchar](25) NULL,
	[idDoor] [varchar](25) NOT NULL,
	[descriptionDoor] [varchar](25) NULL,
	[typeDoor] [numeric](1, 0) NULL,
	[idDevice] [numeric](2, 0) NULL,
	[descriptionDevice] [varchar](25) NULL,
	[intervalDateTime] [datetime] NOT NULL,
	[time] [numeric](4, 0) NULL,
	[inCount] [numeric](6, 0) NULL,
	[outCount] [numeric](6, 0) NULL,
	[totalIn] [numeric](6, 0) NULL,
	[totalOut] [numeric](6, 0) NULL,
	[ipUltralink] [varchar](25) NOT NULL,
 CONSTRAINT [PK_PeopleCount] PRIMARY KEY CLUSTERED 
(
	[idStore] ASC,
	[idDoor] ASC,
	[intervalDateTime] ASC,
	[ipUltralink] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SystemEvents]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SystemEvents](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[category] [numeric](2, 0) NULL,
	[idStore] [varchar](25) NOT NULL,
	[division] [varchar](25) NULL,
	[idDoor] [varchar](25) NOT NULL,
	[descriptionDoor] [varchar](25) NULL,
	[typeDoor] [numeric](1, 0) NULL,
	[idDevice] [numeric](2, 0) NULL,
	[rs485AddressDevice] [numeric](3, 0) NULL,
	[descriptionDevice] [varchar](25) NULL,
	[definitionDevice] [varchar](50) NULL,
	[globalCategory] [numeric](2, 0) NULL,
	[systemError] [numeric](2, 0) NULL,
	[deviceError] [numeric](4, 0) NULL,
	[dateTime] [datetime] NOT NULL,
	[time] [numeric](4, 0) NULL,
	[errorDuration] [numeric](2, 0) NULL,
	[devicesTotal] [numeric](3, 0) NULL,
	[ipAddress] [varchar](25) NOT NULL,
 CONSTRAINT [PK_SystemEvents] PRIMARY KEY CLUSTERED 
(
	[idStore] ASC,
	[idDoor] ASC,
	[dateTime] ASC,
	[ipAddress] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlarmCountReason]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlarmCountReason](
	[idAlarmCount] [bigint] NOT NULL,
	[reasonCode] [int] NOT NULL,
	[userId] [varchar](50) NULL,
	[cashierId] [varchar](50) NULL,
	[aisleId] [varchar](50) NULL,
	[receiptId] [varchar](50) NULL,
	[codeproduct] [varchar](50) NULL,
 CONSTRAINT [PK_AlarmCountReason_1] PRIMARY KEY CLUSTERED 
(
	[idAlarmCount] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 04/04/2013 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sales](
	[sales_id] [int] IDENTITY(1,1) NOT NULL,
	[store_id] [varchar](25) NOT NULL,
	[sale_number] [int] NULL,
	[cashier] [int] NULL,
	[transactions] [int] NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[sales_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_AlarmCount_Door]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[AlarmCount]  WITH CHECK ADD  CONSTRAINT [FK_AlarmCount_Door] FOREIGN KEY([ipAddress], [idDoor])
REFERENCES [dbo].[Door] ([ipUltralink], [id])
GO
ALTER TABLE [dbo].[AlarmCount] CHECK CONSTRAINT [FK_AlarmCount_Door]
GO
/****** Object:  ForeignKey [FK_AlarmCount_Store1]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[AlarmCount]  WITH CHECK ADD  CONSTRAINT [FK_AlarmCount_Store1] FOREIGN KEY([idStore])
REFERENCES [dbo].[Store] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[AlarmCount] CHECK CONSTRAINT [FK_AlarmCount_Store1]
GO
/****** Object:  ForeignKey [FK_AlarmCountReason_Aisle]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[AlarmCountReason]  WITH CHECK ADD  CONSTRAINT [FK_AlarmCountReason_Aisle] FOREIGN KEY([aisleId])
REFERENCES [dbo].[Aisle] ([id])
GO
ALTER TABLE [dbo].[AlarmCountReason] CHECK CONSTRAINT [FK_AlarmCountReason_Aisle]
GO
/****** Object:  ForeignKey [FK_AlarmCountReason_Product]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[AlarmCountReason]  WITH CHECK ADD  CONSTRAINT [FK_AlarmCountReason_Product] FOREIGN KEY([codeproduct])
REFERENCES [dbo].[Product] ([code])
GO
ALTER TABLE [dbo].[AlarmCountReason] CHECK CONSTRAINT [FK_AlarmCountReason_Product]
GO
/****** Object:  ForeignKey [FK_AlarmCountReason_ReasonCode]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[AlarmCountReason]  WITH CHECK ADD  CONSTRAINT [FK_AlarmCountReason_ReasonCode] FOREIGN KEY([reasonCode])
REFERENCES [dbo].[ReasonCode] ([code])
GO
ALTER TABLE [dbo].[AlarmCountReason] CHECK CONSTRAINT [FK_AlarmCountReason_ReasonCode]
GO
/****** Object:  ForeignKey [FK_AlarmCountReason_Receipt]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[AlarmCountReason]  WITH CHECK ADD  CONSTRAINT [FK_AlarmCountReason_Receipt] FOREIGN KEY([receiptId])
REFERENCES [dbo].[Receipt] ([id])
GO
ALTER TABLE [dbo].[AlarmCountReason] CHECK CONSTRAINT [FK_AlarmCountReason_Receipt]
GO
/****** Object:  ForeignKey [FK_AlarmCountReason_storeEmployee]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[AlarmCountReason]  WITH CHECK ADD  CONSTRAINT [FK_AlarmCountReason_storeEmployee] FOREIGN KEY([userId])
REFERENCES [dbo].[storeEmployee] ([id_Employee])
GO
ALTER TABLE [dbo].[AlarmCountReason] CHECK CONSTRAINT [FK_AlarmCountReason_storeEmployee]
GO
/****** Object:  ForeignKey [FK_AlarmCountReason_storeEmployee1]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[AlarmCountReason]  WITH CHECK ADD  CONSTRAINT [FK_AlarmCountReason_storeEmployee1] FOREIGN KEY([cashierId])
REFERENCES [dbo].[storeEmployee] ([id_Employee])
GO
ALTER TABLE [dbo].[AlarmCountReason] CHECK CONSTRAINT [FK_AlarmCountReason_storeEmployee1]
GO
/****** Object:  ForeignKey [FK_DesactivationCount_Door]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[DesactivationCount]  WITH CHECK ADD  CONSTRAINT [FK_DesactivationCount_Door] FOREIGN KEY([ipAddress], [idDoor])
REFERENCES [dbo].[Door] ([ipUltralink], [id])
GO
ALTER TABLE [dbo].[DesactivationCount] CHECK CONSTRAINT [FK_DesactivationCount_Door]
GO
/****** Object:  ForeignKey [FK_DesactivationCount_Store]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[DesactivationCount]  WITH CHECK ADD  CONSTRAINT [FK_DesactivationCount_Store] FOREIGN KEY([idStore])
REFERENCES [dbo].[Store] ([id])
GO
ALTER TABLE [dbo].[DesactivationCount] CHECK CONSTRAINT [FK_DesactivationCount_Store]
GO
/****** Object:  ForeignKey [FK_DetacherCount_Door]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[DetacherCount]  WITH CHECK ADD  CONSTRAINT [FK_DetacherCount_Door] FOREIGN KEY([ipAddress], [idDoor])
REFERENCES [dbo].[Door] ([ipUltralink], [id])
GO
ALTER TABLE [dbo].[DetacherCount] CHECK CONSTRAINT [FK_DetacherCount_Door]
GO
/****** Object:  ForeignKey [FK_DetacherCount_Store]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[DetacherCount]  WITH CHECK ADD  CONSTRAINT [FK_DetacherCount_Store] FOREIGN KEY([idStore])
REFERENCES [dbo].[Store] ([id])
GO
ALTER TABLE [dbo].[DetacherCount] CHECK CONSTRAINT [FK_DetacherCount_Store]
GO
/****** Object:  ForeignKey [FK_Door_TypeDoor]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[Door]  WITH CHECK ADD  CONSTRAINT [FK_Door_TypeDoor] FOREIGN KEY([idType])
REFERENCES [dbo].[TypeDoor] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Door] CHECK CONSTRAINT [FK_Door_TypeDoor]
GO
/****** Object:  ForeignKey [FK_Door_Ultralink]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[Door]  WITH CHECK ADD  CONSTRAINT [FK_Door_Ultralink] FOREIGN KEY([ipUltralink])
REFERENCES [dbo].[Ultralink] ([ip])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Door] CHECK CONSTRAINT [FK_Door_Ultralink]
GO
/****** Object:  ForeignKey [FK_PeopleCount_Door]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[PeopleCount]  WITH CHECK ADD  CONSTRAINT [FK_PeopleCount_Door] FOREIGN KEY([ipUltralink], [idDoor])
REFERENCES [dbo].[Door] ([ipUltralink], [id])
GO
ALTER TABLE [dbo].[PeopleCount] CHECK CONSTRAINT [FK_PeopleCount_Door]
GO
/****** Object:  ForeignKey [FK_PeopleCount_Store]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[PeopleCount]  WITH CHECK ADD  CONSTRAINT [FK_PeopleCount_Store] FOREIGN KEY([idStore])
REFERENCES [dbo].[Store] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PeopleCount] CHECK CONSTRAINT [FK_PeopleCount_Store]
GO
/****** Object:  ForeignKey [FK_Sales_Store]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Store] FOREIGN KEY([store_id])
REFERENCES [dbo].[Store] ([id])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Store]
GO
/****** Object:  ForeignKey [FK_SystemEvents_Door]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[SystemEvents]  WITH CHECK ADD  CONSTRAINT [FK_SystemEvents_Door] FOREIGN KEY([ipAddress], [idDoor])
REFERENCES [dbo].[Door] ([ipUltralink], [id])
GO
ALTER TABLE [dbo].[SystemEvents] CHECK CONSTRAINT [FK_SystemEvents_Door]
GO
/****** Object:  ForeignKey [FK_SystemEvents_Store1]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[SystemEvents]  WITH CHECK ADD  CONSTRAINT [FK_SystemEvents_Store1] FOREIGN KEY([idStore])
REFERENCES [dbo].[Store] ([id])
GO
ALTER TABLE [dbo].[SystemEvents] CHECK CONSTRAINT [FK_SystemEvents_Store1]
GO
/****** Object:  ForeignKey [FK_Ultralink_Store]    Script Date: 04/04/2013 11:41:15 ******/
ALTER TABLE [dbo].[Ultralink]  WITH CHECK ADD  CONSTRAINT [FK_Ultralink_Store] FOREIGN KEY([idStore])
REFERENCES [dbo].[Store] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Ultralink] CHECK CONSTRAINT [FK_Ultralink_Store]
GO
/*** CREATE INITIAL DAT TO TYPEDOOR ***/
INSERT INTO [SmartEAS3.0].[dbo].[TypeDoor]
           ([id]
           ,[type]
           ,[description])
     VALUES
           ('0','Entrada/Salida','Entrada/Salida')
GO
INSERT INTO [SmartEAS3.0].[dbo].[TypeDoor]
           ([id]
           ,[type]
           ,[description])
     VALUES
           ('1','Entrada','Entrada')
GO
INSERT INTO [SmartEAS3.0].[dbo].[TypeDoor]
           ([id]
           ,[type]
           ,[description])
     VALUES
           ('2','Salida','Salida')
GO
/****** CREACION USUARIO *******/
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [SmartEAS3.0]    Script Date: 06/25/2013 16:37:28 ******/
CREATE LOGIN [SmartEAS3.0] WITH PASSWORD=N'SmartEAS3.0', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

EXEC sys.sp_addsrvrolemember @loginame = N'SmartEAS3.0', @rolename = N'sysadmin'
GO

ALTER LOGIN [SmartEAS3.0] ENABLE
GO

