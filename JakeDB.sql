USE [master]
GO
/****** Object:  Database [JX_Simpsons_HG]    Script Date: 23/03/2023 13:02:10 ******/
CREATE DATABASE [JX_Simpsons_HG]

ALTER DATABASE [JX_Simpsons_HG] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JX_Simpsons_HG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JX_Simpsons_HG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET ARITHABORT OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [JX_Simpsons_HG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JX_Simpsons_HG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JX_Simpsons_HG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JX_Simpsons_HG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JX_Simpsons_HG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JX_Simpsons_HG] SET  MULTI_USER 
GO
ALTER DATABASE [JX_Simpsons_HG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JX_Simpsons_HG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JX_Simpsons_HG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JX_Simpsons_HG] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JX_Simpsons_HG] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JX_Simpsons_HG] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'JX_Simpsons_HG', N'ON'
GO
ALTER DATABASE [JX_Simpsons_HG] SET QUERY_STORE = OFF
GO
USE [JX_Simpsons_HG]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[appointmentID] [int] IDENTITY(1000,1) NOT NULL,
	[appointmentDate] [date] NULL,
	[PartyN] [int] NULL,
	[timeID] [int] NULL,
	[staffID] [int] NULL,
 CONSTRAINT [PK_App] PRIMARY KEY CLUSTERED 
(
	[appointmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BridalParty]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BridalParty](
	[PartyN] [int] IDENTITY(100,1) NOT NULL,
	[Client1] [int] NULL,
	[Client2] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PartyN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[clientID] [int] IDENTITY(1,1) NOT NULL,
	[clientSurN] [nvarchar](50) NULL,
	[clientForN] [nvarchar](50) NULL,
	[PhoneNo] [nvarchar](11) NULL,
	[clientAddress] [nvarchar](150) NULL,
	[clientPostCode] [nvarchar](8) NULL,
	[email] [nvarchar](255) NULL,
	[City] [nvarchar](50) NULL,
 CONSTRAINT [PK_C] PRIMARY KEY CLUSTERED 
(
	[clientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_](
	[orderID] [int] IDENTITY(200,13) NOT NULL,
	[staffID] [int] NULL,
	[DateOfOrder] [date] NULL,
	[clientID] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Stocks]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Stocks](
	[orderID] [int] NOT NULL,
	[stockID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[DeliveryDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC,
	[stockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[staffID] [int] IDENTITY(1000,2) NOT NULL,
	[staffPW] [nvarchar](50) NULL,
	[staffUN] [nvarchar](50) NULL,
	[staffSurN] [nvarchar](50) NULL,
	[staffForN] [nvarchar](50) NULL,
	[admin] [bit] NULL,
	[email] [nvarchar](255) NULL,
	[City] [nvarchar](50) NULL,
	[YearlySalary] [decimal](18, 0) NULL,
	[Tax_Code] [int] NULL,
	[Emergency_Contact_Number] [nvarchar](11) NULL,
	[National_Insurance_number] [nvarchar](9) NULL,
 CONSTRAINT [PK_S] PRIMARY KEY CLUSTERED 
(
	[staffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[stockID] [int] IDENTITY(2222,2) NOT NULL,
	[stockN] [nvarchar](50) NULL,
	[stockDis] [nvarchar](50) NULL,
	[stockQ] [int] NULL,
	[stockP] [decimal](18, 2) NULL,
	[deliverySpeed] [int] NULL,
 CONSTRAINT [PK_ST] PRIMARY KEY CLUSTERED 
(
	[stockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Times]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Times](
	[timeID] [int] NOT NULL,
	[time] [nvarchar](50) NULL,
 CONSTRAINT [PK_T] PRIMARY KEY CLUSTERED 
(
	[timeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeddingList]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeddingList](
	[WeddingListID] [int] IDENTITY(5000,100) NOT NULL,
	[PartyN] [int] NULL,
 CONSTRAINT [PK_WL] PRIMARY KEY CLUSTERED 
(
	[WeddingListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeddingListStocks]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeddingListStocks](
	[WeddingListID] [int] NOT NULL,
	[stockID] [int] NOT NULL,
	[Payed] [bit] NULL,
 CONSTRAINT [PK_WLS] PRIMARY KEY CLUSTERED 
(
	[WeddingListID] ASC,
	[stockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Appointment] ON 

INSERT [dbo].[Appointment] ([appointmentID], [appointmentDate], [PartyN], [timeID], [staffID]) VALUES (1000, CAST(N'2022-11-01' AS Date), 100, 1, 1000)
INSERT [dbo].[Appointment] ([appointmentID], [appointmentDate], [PartyN], [timeID], [staffID]) VALUES (1001, CAST(N'2022-11-01' AS Date), 101, 2, 1002)
INSERT [dbo].[Appointment] ([appointmentID], [appointmentDate], [PartyN], [timeID], [staffID]) VALUES (1003, CAST(N'2022-01-11' AS Date), 100, 1, 1002)
INSERT [dbo].[Appointment] ([appointmentID], [appointmentDate], [PartyN], [timeID], [staffID]) VALUES (1004, CAST(N'2022-01-11' AS Date), 100, 1, 1004)
INSERT [dbo].[Appointment] ([appointmentID], [appointmentDate], [PartyN], [timeID], [staffID]) VALUES (1005, CAST(N'2022-01-11' AS Date), 100, 1, 1004)
INSERT [dbo].[Appointment] ([appointmentID], [appointmentDate], [PartyN], [timeID], [staffID]) VALUES (1007, CAST(N'2022-02-11' AS Date), 101, 5, 1004)
INSERT [dbo].[Appointment] ([appointmentID], [appointmentDate], [PartyN], [timeID], [staffID]) VALUES (1008, CAST(N'2022-11-02' AS Date), 101, 5, 1002)
INSERT [dbo].[Appointment] ([appointmentID], [appointmentDate], [PartyN], [timeID], [staffID]) VALUES (1012, CAST(N'2023-03-08' AS Date), 101, 5, 1002)
SET IDENTITY_INSERT [dbo].[Appointment] OFF
GO
SET IDENTITY_INSERT [dbo].[BridalParty] ON 

INSERT [dbo].[BridalParty] ([PartyN], [Client1], [Client2]) VALUES (100, 16, 2)
INSERT [dbo].[BridalParty] ([PartyN], [Client1], [Client2]) VALUES (101, 4, 5)
SET IDENTITY_INSERT [dbo].[BridalParty] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([clientID], [clientSurN], [clientForN], [PhoneNo], [clientAddress], [clientPostCode], [email], [City]) VALUES (1, N'Xue', N'jakes', N'02569235698', N'18 Dorrs', N'Bt41 4ER', N'123@czc.com', N'belfast')
INSERT [dbo].[Clients] ([clientID], [clientSurN], [clientForN], [PhoneNo], [clientAddress], [clientPostCode], [email], [City]) VALUES (2, N'Barry', N'xue', N'01234567890', N'Doors14', N'BT15 5BT', N'4534353@hh.com', N'belfast')
INSERT [dbo].[Clients] ([clientID], [clientSurN], [clientForN], [PhoneNo], [clientAddress], [clientPostCode], [email], [City]) VALUES (3, N'Mark', N'xue', N'01265348646', N'123Dorrs', N'BT13 3BT', N'8899@kk.com', N'belfast')
INSERT [dbo].[Clients] ([clientID], [clientSurN], [clientForN], [PhoneNo], [clientAddress], [clientPostCode], [email], [City]) VALUES (4, N'Jennifer', N'xue', N'01265348646', N'123Dorrs', N'BT13 3BT', N'Hi.com', N'belfast')
INSERT [dbo].[Clients] ([clientID], [clientSurN], [clientForN], [PhoneNo], [clientAddress], [clientPostCode], [email], [City]) VALUES (5, N'Jordan', N'sucks', N'02385937937', N'16 yes road', N'BT41 1SE', N'Yes@kk.com', N'belfast')
INSERT [dbo].[Clients] ([clientID], [clientSurN], [clientForN], [PhoneNo], [clientAddress], [clientPostCode], [email], [City]) VALUES (7, N'Grue', N'ASDA', N'02665695659', N'ASDA 1ST', N'BT66 6YU', N'Hallo@kl.com', N'belfast')
INSERT [dbo].[Clients] ([clientID], [clientSurN], [clientForN], [PhoneNo], [clientAddress], [clientPostCode], [email], [City]) VALUES (8, N'JASKE', N'DASD', N'00415646541', N'ASDASD', N'bT32 4DF', N'hello@llo.com', N'belfast')
INSERT [dbo].[Clients] ([clientID], [clientSurN], [clientForN], [PhoneNo], [clientAddress], [clientPostCode], [email], [City]) VALUES (9, N'SADASDASD', N'ASDASDA', N'01451451456', N'ASDASD', N'bT32 1FJ', N'hello@llo.com', N'belfast')
INSERT [dbo].[Clients] ([clientID], [clientSurN], [clientForN], [PhoneNo], [clientAddress], [clientPostCode], [email], [City]) VALUES (11, N'adadasd', N'asdasdasdas', N'00124414651', N'sadsdfs', N'Bt23 1fd', N'hello@llo.com', N'belfast')
INSERT [dbo].[Clients] ([clientID], [clientSurN], [clientForN], [PhoneNo], [clientAddress], [clientPostCode], [email], [City]) VALUES (12, N'qwert', N'qwert', N'01111111111', N'asda', N'bt11 1YY', N'hello@llo.com', N'belfast')
INSERT [dbo].[Clients] ([clientID], [clientSurN], [clientForN], [PhoneNo], [clientAddress], [clientPostCode], [email], [City]) VALUES (13, N'OOOOOO', N'OOOOOOOOOOO', N'02222322222', N'aaaaaaaaaaaaaaaaaaa', N'Bt11 1yu', N'fuihfshue@nn.com', N'belfast')
INSERT [dbo].[Clients] ([clientID], [clientSurN], [clientForN], [PhoneNo], [clientAddress], [clientPostCode], [email], [City]) VALUES (14, N'Mark', N'jaek', N'07888888888', N'18 Doors', N'BT90 0HZ', N'hello@llo.com', N'belfast')
INSERT [dbo].[Clients] ([clientID], [clientSurN], [clientForN], [PhoneNo], [clientAddress], [clientPostCode], [email], [City]) VALUES (15, N'jo', N'jo', N'07328893279', N'12 trump', N'BT39 9sx', N'hello@llo.com', N'belfast')
INSERT [dbo].[Clients] ([clientID], [clientSurN], [clientForN], [PhoneNo], [clientAddress], [clientPostCode], [email], [City]) VALUES (16, N'NEW', N'NEW', N'09876543211', N'12 NEW ADDRESS', N'BT39 9ST', N'hello@llo.com', N'belfast')
INSERT [dbo].[Clients] ([clientID], [clientSurN], [clientForN], [PhoneNo], [clientAddress], [clientPostCode], [email], [City]) VALUES (17, N'hhhhhhh', N'hhhhhhhhh', N'09876543121', N'12 jnjnjnnnj', N'BT39 9SX', N'hello@llo.com', N'newY')
INSERT [dbo].[Clients] ([clientID], [clientSurN], [clientForN], [PhoneNo], [clientAddress], [clientPostCode], [email], [City]) VALUES (18, N'ok', N'ASDA', N'12312312222', N'wqeqewq', N'BT89 7TH', N'hello@llo.com', N'belfast')
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_] ON 

INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (200, 1000, CAST(N'2022-12-11' AS Date), 4)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (213, 1000, CAST(N'2022-12-11' AS Date), 4)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (226, 1000, CAST(N'2022-12-11' AS Date), 7)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (239, 1000, CAST(N'2022-12-11' AS Date), 5)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (252, 1000, CAST(N'2022-12-11' AS Date), 5)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (265, 1000, CAST(N'2022-12-11' AS Date), 3)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (278, 1000, CAST(N'2022-12-11' AS Date), 8)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (291, 1000, CAST(N'2022-12-11' AS Date), 7)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (304, 1000, CAST(N'2022-12-11' AS Date), 5)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (317, 1000, CAST(N'2022-12-11' AS Date), 4)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (330, 1000, CAST(N'2022-12-11' AS Date), 7)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (343, 1000, CAST(N'2022-12-11' AS Date), 3)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (356, 1000, CAST(N'2022-12-11' AS Date), 2)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (369, 1000, CAST(N'2022-12-12' AS Date), 13)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (382, 1000, CAST(N'2022-12-12' AS Date), 3)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (395, 1000, CAST(N'2022-12-12' AS Date), 8)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (408, 1000, CAST(N'2022-12-12' AS Date), 4)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (421, 1000, CAST(N'2022-12-12' AS Date), 7)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (434, 1000, CAST(N'2022-12-14' AS Date), 4)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (447, 1000, CAST(N'2023-03-18' AS Date), 13)
INSERT [dbo].[Order_] ([orderID], [staffID], [DateOfOrder], [clientID]) VALUES (460, 1000, CAST(N'2023-03-01' AS Date), 9)
SET IDENTITY_INSERT [dbo].[Order_] OFF
GO
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (291, 2222, 1, CAST(N'2023-09-28' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (291, 2224, 7, CAST(N'2023-09-28' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (291, 2226, 1, CAST(N'2023-09-28' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (304, 2222, 1, CAST(N'2023-10-11' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (304, 2224, 1, CAST(N'2023-10-11' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (304, 2226, 1, CAST(N'2023-10-11' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (356, 2222, 1, CAST(N'2022-12-14' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (356, 2224, 1, CAST(N'2022-12-16' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (356, 2226, 1, CAST(N'2022-12-14' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (369, 2222, 10, CAST(N'2022-12-15' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (369, 2224, 9, CAST(N'2022-12-17' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (382, 2222, 6, CAST(N'2022-12-15' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (395, 2222, 1, CAST(N'2022-12-15' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (408, 2222, 1, CAST(N'2022-12-15' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (421, 2224, 1, CAST(N'2022-12-17' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (434, 2222, 1, CAST(N'2022-12-17' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (447, 2222, 1, CAST(N'2022-12-21' AS Date))
INSERT [dbo].[Order_Stocks] ([orderID], [stockID], [Quantity], [DeliveryDate]) VALUES (460, 2224, 1, CAST(N'2023-01-13' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([staffID], [staffPW], [staffUN], [staffSurN], [staffForN], [admin], [email], [City], [YearlySalary], [Tax_Code], [Emergency_Contact_Number], [National_Insurance_number]) VALUES (1000, N'DDFF112313*', N'DDFFF', N'czczx', N'czxczxc', 0, N'1rrr@gmail.com', N'NYC ', CAST(12000 AS Decimal(18, 0)), 4456, N'12345678910', N'7eeraa')
INSERT [dbo].[Staff] ([staffID], [staffPW], [staffUN], [staffSurN], [staffForN], [admin], [email], [City], [YearlySalary], [Tax_Code], [Emergency_Contact_Number], [National_Insurance_number]) VALUES (1002, N'asd/das3423UUI', N'USS', N'xue', N'jake', 1, N'1rrr@gmail.com', N'NYC ', CAST(500 AS Decimal(18, 0)), 4445444, N'12345678910', N'7eeraa')
INSERT [dbo].[Staff] ([staffID], [staffPW], [staffUN], [staffSurN], [staffForN], [admin], [email], [City], [YearlySalary], [Tax_Code], [Emergency_Contact_Number], [National_Insurance_number]) VALUES (1004, N'JAKE123123''', N'Jaker', N'jake', N'jake', 0, N'1rrr@gmail.com', N'NYC ', CAST(8007 AS Decimal(18, 0)), 4445444, N'12345678910', N'7eeraa')
INSERT [dbo].[Staff] ([staffID], [staffPW], [staffUN], [staffSurN], [staffForN], [admin], [email], [City], [YearlySalary], [Tax_Code], [Emergency_Contact_Number], [National_Insurance_number]) VALUES (1006, N'ASFE23423"', N'ssaaa', N'jake', N'jake', 1, N'1rrr@gmail.coms', N'NYC ', CAST(4455 AS Decimal(18, 0)), 4445444, N'12345678910', N'7eeraa')
INSERT [dbo].[Staff] ([staffID], [staffPW], [staffUN], [staffSurN], [staffForN], [admin], [email], [City], [YearlySalary], [Tax_Code], [Emergency_Contact_Number], [National_Insurance_number]) VALUES (1008, N'Staff123@@', N'Staff', N'Staff', N'Staff', 0, N'1rrr@gmail.comhjkj', N'NYC ', CAST(600 AS Decimal(18, 0)), 4445444, N'12345678910', N'7eeraa')
INSERT [dbo].[Staff] ([staffID], [staffPW], [staffUN], [staffSurN], [staffForN], [admin], [email], [City], [YearlySalary], [Tax_Code], [Emergency_Contact_Number], [National_Insurance_number]) VALUES (1010, N'HFQdss432''', N'jhnery', N'Henry', N'Jacob', 1, N'1rrr@gmail.com', N'NYC ', CAST(800 AS Decimal(18, 0)), 4445444, N'12345678910', N'77uri')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
SET IDENTITY_INSERT [dbo].[Stock] ON 

INSERT [dbo].[Stock] ([stockID], [stockN], [stockDis], [stockQ], [stockP], [deliverySpeed]) VALUES (2222, N'Pans', N'Copper Pans', 0, CAST(6.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Stock] ([stockID], [stockN], [stockDis], [stockQ], [stockP], [deliverySpeed]) VALUES (2224, N'Cutlery', N'Gold Cutlery', 7, CAST(5.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[Stock] ([stockID], [stockN], [stockDis], [stockQ], [stockP], [deliverySpeed]) VALUES (2226, N'Test', N'Test', 100, CAST(54.65 AS Decimal(18, 2)), 3)
INSERT [dbo].[Stock] ([stockID], [stockN], [stockDis], [stockQ], [stockP], [deliverySpeed]) VALUES (2228, N'Toaster', N'Red Toaster', 12, CAST(45.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Stock] ([stockID], [stockN], [stockDis], [stockQ], [stockP], [deliverySpeed]) VALUES (2230, N'Kettle', N'Black Kettle', 34, CAST(23.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Stock] ([stockID], [stockN], [stockDis], [stockQ], [stockP], [deliverySpeed]) VALUES (2232, N'Crystal Glasses', N'Heavy duty Crystal glasses set', 12, CAST(392.99 AS Decimal(18, 2)), 5)
SET IDENTITY_INSERT [dbo].[Stock] OFF
GO
INSERT [dbo].[Times] ([timeID], [time]) VALUES (1, N'9.00 - 9.30')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (2, N'9.30 - 10.00')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (3, N'10.00 - 10.30')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (4, N'10.30 - 11.00')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (5, N'11.00 - 11.30')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (6, N'11.30 - 12.00')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (7, N'12.00 - 12.30')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (8, N'13.00 - 13.30')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (9, N'13.30 - 14.00')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (10, N'14.00 - 14.30')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (11, N'14.30 - 15.00')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (12, N'15.00 - 15.30')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (13, N'15.30 - 16.00')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (14, N'16.00 - 16.30')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (15, N'16.30 - 17.00')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (16, N'17.00 - 17.30')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (17, N'17.30 - 18.00')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (18, N'18.00 - 18.30')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (19, N'18.30 - 19.00')
INSERT [dbo].[Times] ([timeID], [time]) VALUES (20, N'19.00 - 19.30')
GO
SET IDENTITY_INSERT [dbo].[WeddingList] ON 

INSERT [dbo].[WeddingList] ([WeddingListID], [PartyN]) VALUES (5200, 100)
INSERT [dbo].[WeddingList] ([WeddingListID], [PartyN]) VALUES (5400, 101)
SET IDENTITY_INSERT [dbo].[WeddingList] OFF
GO
INSERT [dbo].[WeddingListStocks] ([WeddingListID], [stockID], [Payed]) VALUES (5200, 2222, 0)
INSERT [dbo].[WeddingListStocks] ([WeddingListID], [stockID], [Payed]) VALUES (5400, 2224, 0)
INSERT [dbo].[WeddingListStocks] ([WeddingListID], [stockID], [Payed]) VALUES (5400, 2230, 0)
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD FOREIGN KEY([PartyN])
REFERENCES [dbo].[BridalParty] ([PartyN])
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD FOREIGN KEY([staffID])
REFERENCES [dbo].[Staff] ([staffID])
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD FOREIGN KEY([timeID])
REFERENCES [dbo].[Times] ([timeID])
GO
ALTER TABLE [dbo].[BridalParty]  WITH CHECK ADD FOREIGN KEY([Client1])
REFERENCES [dbo].[Clients] ([clientID])
GO
ALTER TABLE [dbo].[BridalParty]  WITH CHECK ADD FOREIGN KEY([Client2])
REFERENCES [dbo].[Clients] ([clientID])
GO
ALTER TABLE [dbo].[Order_]  WITH CHECK ADD FOREIGN KEY([clientID])
REFERENCES [dbo].[Clients] ([clientID])
GO
ALTER TABLE [dbo].[Order_]  WITH CHECK ADD FOREIGN KEY([staffID])
REFERENCES [dbo].[Staff] ([staffID])
GO
ALTER TABLE [dbo].[Order_]  WITH CHECK ADD FOREIGN KEY([staffID])
REFERENCES [dbo].[Staff] ([staffID])
GO
ALTER TABLE [dbo].[Order_Stocks]  WITH CHECK ADD FOREIGN KEY([stockID])
REFERENCES [dbo].[Stock] ([stockID])
GO
ALTER TABLE [dbo].[Order_Stocks]  WITH CHECK ADD FOREIGN KEY([stockID])
REFERENCES [dbo].[Stock] ([stockID])
GO
ALTER TABLE [dbo].[Order_Stocks]  WITH CHECK ADD FOREIGN KEY([stockID])
REFERENCES [dbo].[Stock] ([stockID])
GO
ALTER TABLE [dbo].[WeddingList]  WITH CHECK ADD FOREIGN KEY([PartyN])
REFERENCES [dbo].[BridalParty] ([PartyN])
GO
ALTER TABLE [dbo].[WeddingList]  WITH CHECK ADD FOREIGN KEY([PartyN])
REFERENCES [dbo].[BridalParty] ([PartyN])
GO
ALTER TABLE [dbo].[WeddingListStocks]  WITH CHECK ADD FOREIGN KEY([stockID])
REFERENCES [dbo].[Stock] ([stockID])
GO
ALTER TABLE [dbo].[WeddingListStocks]  WITH CHECK ADD FOREIGN KEY([stockID])
REFERENCES [dbo].[Stock] ([stockID])
GO
ALTER TABLE [dbo].[WeddingListStocks]  WITH CHECK ADD FOREIGN KEY([WeddingListID])
REFERENCES [dbo].[WeddingList] ([WeddingListID])
GO
ALTER TABLE [dbo].[WeddingListStocks]  WITH CHECK ADD FOREIGN KEY([WeddingListID])
REFERENCES [dbo].[WeddingList] ([WeddingListID])
GO
/****** Object:  StoredProcedure [dbo].[addBridalParty]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[addBridalParty]  @Groom int, @Bride int
AS
INSERT INTO BridalParty VALUES (@Groom,@Bride );
GO
/****** Object:  StoredProcedure [dbo].[addOrder]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[addOrder] @Client_ID INT, @Staff_ID INT, @DateOfOrder DATE
AS
INSERT INTO Order_ VALUES (@Staff_ID,@DateOfOrder,@Client_ID);
GO
/****** Object:  StoredProcedure [dbo].[addOrderStock]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[addOrderStock] @Order_ID INT, @Stock_ID INT, @Quantity INT, @delivery_date DATE
AS
INSERT INTO Order_Stocks VALUES (@Order_ID, @Stock_ID,@Quantity, @delivery_date);

GO
/****** Object:  StoredProcedure [dbo].[addStaff]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[addStaff] @StaffUsername NVARCHAR(50),@StaffPassword NVARCHAR(50),@StaffSurname NVARCHAR(50), @StaffForname NVARCHAR(50), @Admin NVARCHAR(50), @Email nvarchar(255), @City nvarchar(50), @YSal decimal(9,2), @NIN nvarchar(9), @TaxCode int, @ERNumber nvarchar(11) 
AS
INSERT INTO Staff VALUES ( @StaffPassword, @StaffUsername, @StaffSurname, @StaffForname,@Admin, @Email,@City,@YSal,@NIN,@TaxCode,@ERNumber );
GO
/****** Object:  StoredProcedure [dbo].[addStock]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[addStock] @StockName NVARCHAR(50), @StockDiscription NVARCHAR(50), @StockQuantity INT, @StockPrice DECIMAL, @DeliverySpeed INT
AS
INSERT INTO Stock VALUES (@StockName,@StockDiscription, @StockQuantity,@StockPrice,@DeliverySpeed);
GO
/****** Object:  StoredProcedure [dbo].[addTimes]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[addTimes] @Time_ID INT, @Time NVARCHAR
AS
INSERT INTO Times VALUES (@Time_ID, @Time);
GO
/****** Object:  StoredProcedure [dbo].[addWeddingList]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[addWeddingList] @PartyName int
AS
INSERT INTO WeddingList VALUES (@PartyName);
GO
/****** Object:  StoredProcedure [dbo].[addWeddingListStock]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[addWeddingListStock] @WeddingListID INT, @StockID INT, @Purchased BIT
AS
INSERT INTO WeddingListStockS VALUES (@WeddingListID,@StockID,@Purchased );
GO
/****** Object:  StoredProcedure [dbo].[changeStock]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[changeStock] @quantity int, @sid int
as
Update Stock SET stockQ=stockQ-@quantity WHERE stockID = @sid
GO
/****** Object:  StoredProcedure [dbo].[DeliverySpeedReport]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[DeliverySpeedReport]
as
SELECT stockID, stockN,stockDis,StockQ,stockP, deliverySpeed
FROM Stock
GO
/****** Object:  StoredProcedure [dbo].[editBridalParty]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[editBridalParty] 
    @PartyN INT, 
    @Bride INT, 
    @Groom INT
AS
BEGIN
    UPDATE BridalParty
    SET Client1 = @Bride, Client2 = @Groom
    WHERE PartyN = @PartyN
END
GO
/****** Object:  StoredProcedure [dbo].[editClients]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[editClients] @ClientID INT, @ClientSurname NVARCHAR(50), @ClientForname NVARCHAR(50), @PhoneNumber NVARCHAR(11), @ClientAddress NVARCHAR(150), @ClientPostCode NVARCHAR(8), @ClientCity Nvarchar(50), @ClientEmail Nvarchar(255)
AS
UPDATE Clients
SET clientSurN=@ClientSurname, clientForN=@ClientForname, PhoneNo=@PhoneNumber, clientAddress =@ClientAddress, clientPostCode =@ClientPostCode,  email = @ClientEmail, City = @ClientCity
WHERE clientID=@ClientID

--CREATE PROCEDURE editStaff @StaffID INT IDNTITY(1000,2), @StaffUsername NVARCHAR(50), @StaffPassword NVARCHAR(50), @StaffPhoneNumber NVARCHAR(11), @StaffSurname NVARCHAR(50), @StaffForname NVARCHAR(50), @Admin BIT 
--AS
--UPDATE Staff
--SET  staffPW=@StaffPassword , staffUN=@StaffUsername , staffSurN=@StaffSurname , staffForN=@StaffForname , admin=@Admin
--WHERE staffID=@StaffID

--CREATE PROCEDURE editStock @StockID INT IDENTITY(2222,2), @StockName NVARCHAR(50), @StockDiscription NVARCHAR(50), @StockQuantity INT, @StockPrice DECIMAL(18,2), @DeliverySpeed INT
--AS
--UPDATE Stock
--SET  stockN=@StockName , stockDis=@StockDiscription ,stockQ =@StockQuantity , stockP=@StockPrice, deliverySpeed=@DeliverySpeed
--WHERE stockID=@StockID

--CREATE PROCEDURE editBridalParty @PartyN NVARCHAR(20) ,@Groom NVARCHAR(50) ,@Bride NVARCHAR(50) 
--A
--UPDATE BridalParty
--SET  PartyN=@PartyN , Groom=@Groom , Bride=@Bride
--WHERE PartyN=@PartyN

--CREATE PROCEDURE editWeddingList @WeddingListID INT(5000,100),@PartyName NVARCHAR(20)
--AS
--UPDATE WeddingList
--SET PartyN=@PartyName
--WHEREWeddingListID=@WeddingListID

--CREATE PROCEDURE editWeddingListStocks @WeddingListID INT,@StockID INT ,@Purchased BIT
--AS
--UPDATE WeddingListStocks
--SET  Payed=@Purchased 
--WHERE WeddingListID=@WeddingListID, stockID=@StockID

--CREATE PROCEDURE editOrder_ @Order_ID INT IDENTITY(200,13) ,@Staff_ID INT ,@DateOfOrder DATE ,@Client_ID INT
--AS
--UPDATE Order_
--SET clientID =@Client_ID,DateOfOrder =@DateOfOrder
--WHERE orderID=@Order_ID, staffID=@Staff_ID

--CREATE PROCEDURE editOrderStock @Order_ID INT,@Stock_ID INT,@Quantity INT,@delivery_date DATE
--AS
--UPDATE Order_Stock
--SET  Quantity=@Quantity , DeliveryDate=@delivery_date 
--WHERE orderID=@Order_ID, stockID=@Stock_ID


--CREATE PROCEDURE editTimes @Time_ID INT,@Time NVARCHAR(50)
--AS
--UPDATE Times
--SET  time=@Time 
--WHERE timeID=@Time_ID
GO
/****** Object:  StoredProcedure [dbo].[editOrder_]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[editOrder_] @Order_ID INT,@Staff_ID INT ,@DateOfOrder DATE ,@Client_ID INT
AS
UPDATE Order_
SET clientID =@Client_ID,DateOfOrder =@DateOfOrder
WHERE orderID=@Order_ID AND staffID=@Staff_ID

--CREATE PROCEDURE editOrderStock @Order_ID INT,@Stock_ID INT,@Quantity INT,@delivery_date DATE
--AS
--UPDATE Order_Stock
--SET  Quantity=@Quantity , DeliveryDate=@delivery_date 
--WHERE orderID=@Order_ID, stockID=@Stock_ID


--CREATE PROCEDURE editTimes @Time_ID INT,@Time NVARCHAR(50)
--AS
--UPDATE Times
--SET  time=@Time 
--WHERE timeID=@Time_ID
GO
/****** Object:  StoredProcedure [dbo].[editOrderStock]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[editOrderStock] @Order_ID INT,@Stock_ID INT,@Quantity INT,@delivery_date DATE
AS
UPDATE Order_Stocks
SET  Quantity=@Quantity , DeliveryDate=@delivery_date 
WHERE orderID=@Order_ID and stockID=@Stock_ID


--CREATE PROCEDURE editTimes @Time_ID INT,@Time NVARCHAR(50)
--AS
--UPDATE Times
--SET  time=@Time 
--WHERE timeID=@Time_ID
GO
/****** Object:  StoredProcedure [dbo].[editStaff]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[editStaff] @StaffID INT, @StaffUsername NVARCHAR(50), @StaffPassword NVARCHAR(50), @StaffSurname NVARCHAR(50), @StaffForname NVARCHAR(50), @Admin BIT ,  @Email nvarchar(255), @City nvarchar(50), @YSal decimal(9,2), @NIN nvarchar(9), @TaxCode int, @ERNumber nvarchar(11) 
AS
UPDATE Staff
SET  staffPW=@StaffPassword , staffUN=@StaffUsername , staffSurN=@StaffSurname , staffForN=@StaffForname , admin=@Admin, email = @Email, City = @City, YearlySalary = @YSal, National_Insurance_number = @NIN, Tax_Code = @TaxCode, Emergency_Contact_Number = @ERNumber
WHERE staffID=@StaffID

--CREATE PROCEDURE editStock @StockID INT IDENTITY(2222,2), @StockName NVARCHAR(50), @StockDiscription NVARCHAR(50), @StockQuantity INT, @StockPrice DECIMAL(18,2), @DeliverySpeed INT
--AS
--UPDATE Stock
--SET  stockN=@StockName , stockDis=@StockDiscription ,stockQ =@StockQuantity , stockP=@StockPrice, deliverySpeed=@DeliverySpeed
--WHERE stockID=@StockID

--CREATE PROCEDURE editBridalParty @PartyN NVARCHAR(20) ,@Groom NVARCHAR(50) ,@Bride NVARCHAR(50) 
--A
--UPDATE BridalParty
--SET  PartyN=@PartyN , Groom=@Groom , Bride=@Bride
--WHERE PartyN=@PartyN

--CREATE PROCEDURE editWeddingList @WeddingListID INT(5000,100),@PartyName NVARCHAR(20)
--AS
--UPDATE WeddingList
--SET PartyN=@PartyName
--WHEREWeddingListID=@WeddingListID

--CREATE PROCEDURE editWeddingListStocks @WeddingListID INT,@StockID INT ,@Purchased BIT
--AS
--UPDATE WeddingListStocks
--SET  Payed=@Purchased 
--WHERE WeddingListID=@WeddingListID, stockID=@StockID

--CREATE PROCEDURE editOrder_ @Order_ID INT IDENTITY(200,13) ,@Staff_ID INT ,@DateOfOrder DATE ,@Client_ID INT
--AS
--UPDATE Order_
--SET clientID =@Client_ID,DateOfOrder =@DateOfOrder
--WHERE orderID=@Order_ID, staffID=@Staff_ID

--CREATE PROCEDURE editOrderStock @Order_ID INT,@Stock_ID INT,@Quantity INT,@delivery_date DATE
--AS
--UPDATE Order_Stock
--SET  Quantity=@Quantity , DeliveryDate=@delivery_date 
--WHERE orderID=@Order_ID, stockID=@Stock_ID


--CREATE PROCEDURE editTimes @Time_ID INT,@Time NVARCHAR(50)
--AS
--UPDATE Times
--SET  time=@Time 
--WHERE timeID=@Time_ID
GO
/****** Object:  StoredProcedure [dbo].[editStock]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[editStock] @StockID INT, @StockName NVARCHAR(50), @StockDiscription NVARCHAR(50), @StockQuantity INT, @StockPrice DECIMAL(18,2), @DeliverySpeed INT
AS
UPDATE Stock
SET  stockN=@StockName , stockDis=@StockDiscription ,stockQ =@StockQuantity , stockP=@StockPrice, deliverySpeed=@DeliverySpeed
WHERE stockID=@StockID

--CREATE PROCEDURE editBridalParty @PartyN NVARCHAR(20) ,@Groom NVARCHAR(50) ,@Bride NVARCHAR(50) 
--A
--UPDATE BridalParty
--SET  PartyN=@PartyN , Groom=@Groom , Bride=@Bride
--WHERE PartyN=@PartyN

--CREATE PROCEDURE editWeddingList @WeddingListID INT(5000,100),@PartyName NVARCHAR(20)
--AS
--UPDATE WeddingList
--SET PartyN=@PartyName
--WHEREWeddingListID=@WeddingListID

--CREATE PROCEDURE editWeddingListStocks @WeddingListID INT,@StockID INT ,@Purchased BIT
--AS
--UPDATE WeddingListStocks
--SET  Payed=@Purchased 
--WHERE WeddingListID=@WeddingListID, stockID=@StockID

--CREATE PROCEDURE editOrder_ @Order_ID INT IDENTITY(200,13) ,@Staff_ID INT ,@DateOfOrder DATE ,@Client_ID INT
--AS
--UPDATE Order_
--SET clientID =@Client_ID,DateOfOrder =@DateOfOrder
--WHERE orderID=@Order_ID, staffID=@Staff_ID

--CREATE PROCEDURE editOrderStock @Order_ID INT,@Stock_ID INT,@Quantity INT,@delivery_date DATE
--AS
--UPDATE Order_Stock
--SET  Quantity=@Quantity , DeliveryDate=@delivery_date 
--WHERE orderID=@Order_ID, stockID=@Stock_ID


--CREATE PROCEDURE editTimes @Time_ID INT,@Time NVARCHAR(50)
--AS
--UPDATE Times
--SET  time=@Time 
--WHERE timeID=@Time_ID
GO
/****** Object:  StoredProcedure [dbo].[editTimes]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[editTimes] @Time_ID INT,@Time NVARCHAR(50)
AS
UPDATE Times
SET  time=@Time 
WHERE timeID=@Time_ID
GO
/****** Object:  StoredProcedure [dbo].[editWeddingList]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[editWeddingList] @WeddingListID INT,@PartyName int
AS
UPDATE WeddingList
SET PartyN=@PartyName
WHERE WeddingListID=@WeddingListID

--CREATE PROCEDURE editWeddingListStocks @WeddingListID INT,@StockID INT ,@Purchased BIT
--AS
--UPDATE WeddingListStocks
--SET  Payed=@Purchased 
--WHERE WeddingListID=@WeddingListID, stockID=@StockID

--CREATE PROCEDURE editOrder_ @Order_ID INT IDENTITY(200,13) ,@Staff_ID INT ,@DateOfOrder DATE ,@Client_ID INT
--AS
--UPDATE Order_
--SET clientID =@Client_ID,DateOfOrder =@DateOfOrder
--WHERE orderID=@Order_ID, staffID=@Staff_ID

--CREATE PROCEDURE editOrderStock @Order_ID INT,@Stock_ID INT,@Quantity INT,@delivery_date DATE
--AS
--UPDATE Order_Stock
--SET  Quantity=@Quantity , DeliveryDate=@delivery_date 
--WHERE orderID=@Order_ID, stockID=@Stock_ID


--CREATE PROCEDURE editTimes @Time_ID INT,@Time NVARCHAR(50)
--AS
--UPDATE Times
--SET  time=@Time 
--WHERE timeID=@Time_ID
GO
/****** Object:  StoredProcedure [dbo].[editWeddingListStocks]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[editWeddingListStocks] @WeddingListID INT,@StockID INT ,@Purchased BIT
AS
UPDATE WeddingListStocks
SET  Payed=@Purchased 
WHERE WeddingListID=@WeddingListID and stockID=@StockID

--CREATE PROCEDURE editOrder_ @Order_ID INT IDENTITY(200,13) ,@Staff_ID INT ,@DateOfOrder DATE ,@Client_ID INT
--AS
--UPDATE Order_
--SET clientID =@Client_ID,DateOfOrder =@DateOfOrder
--WHERE orderID=@Order_ID, staffID=@Staff_ID

--CREATE PROCEDURE editOrderStock @Order_ID INT,@Stock_ID INT,@Quantity INT,@delivery_date DATE
--AS
--UPDATE Order_Stock
--SET  Quantity=@Quantity , DeliveryDate=@delivery_date 
--WHERE orderID=@Order_ID, stockID=@Stock_ID


--CREATE PROCEDURE editTimes @Time_ID INT,@Time NVARCHAR(50)
--AS
--UPDATE Times
--SET  time=@Time 
--WHERE timeID=@Time_ID
GO
/****** Object:  StoredProcedure [dbo].[getAppointment]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getAppointment] @date date
as
SELECT c1.ClientID, c1.clientForN, c1.clientSurN,c2.ClientID, c2.clientForN, c2.clientSurN, Times.timeID, Times.time, Staff.staffID, Staff.staffSurN
FROM Appointment
INNER JOIN Times ON Appointment.timeID = Times.timeID
INNER JOIN Staff ON Appointment.staffID=Staff.staffID
INNER JOIN BridalParty ON Appointment.PartyN=BridalParty.PartyN
INNER JOIN Clients c1 ON BridalParty.Client1 = c1.clientID
INNER JOIN Clients c2 ON BridalParty.Client2=c2.clientID
WHERE appointmentDate = @date
GO
/****** Object:  StoredProcedure [dbo].[getBridalParties]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getBridalParties]
as
select BridalParty.PartyN, c.clientForN, c.clientSurN,cl.clientForN, cl.clientSurN from BridalParty
INNER JOIN Clients c ON BridalParty.Client1 = c.clientID
INNER JOIN Clients cl ON BridalParty.Client2 = cl.clientID
GO
/****** Object:  StoredProcedure [dbo].[getBridalParties2]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getBridalParties2]
as
select BridalParty.PartyN, c.clientForN AS 'Client1Fname', c.clientSurN AS 'Client1Sname',cl.clientForN AS 'Client2Fname', cl.clientSurN AS 'Client2Sname' from BridalParty
INNER JOIN Clients c ON BridalParty.Client1 = c.clientID
INNER JOIN Clients cl ON BridalParty.Client2 = cl.clientID
GO
/****** Object:  StoredProcedure [dbo].[getClient]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getClient] @cs nvarchar(50), @cf nvarchar(50)
as
SELECT * FROM Clients WHERE clientSurN = @cs AND clientForN=@cf;
GO
/****** Object:  StoredProcedure [dbo].[getDeliverySpeed]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getDeliverySpeed] @sid int
as
SELECT deliverySpeed from Stock where stockID=@sid;
GO
/****** Object:  StoredProcedure [dbo].[GetParties]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetParties]
as
SELECT WeddingList.WeddingListID,BridalParty.PartyN, cg.clientForN +' '+ cg.clientSurN AS Bride, cb.clientForN +' '+ cb.clientSurN AS Groom
FROM BridalParty
INNER JOIN WeddingList ON BridalParty.PartyN=WeddingList.PartyN
INNER JOIN BridalParty bp ON WeddingList.PartyN = bp.PartyN
LEFT JOIN Clients cg ON bp.Client1 = cg.clientID
LEFT JOIN Clients cb ON bp.Client2 = cb.clientID
GO
/****** Object:  StoredProcedure [dbo].[getStaff]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getStaff] @ss nvarchar(50), @sf nvarchar(50)
as
SELECT * FROM Staff WHERE staffSurN = @ss AND staffForN=@sf;
GO
/****** Object:  StoredProcedure [dbo].[getStaffID]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getStaffID] @fn nvarchar(50), @sn nvarchar(50)
as
SELECT staffID FROM Staff WHERE staffSurN = @sn AND staffForN=@fn
GO
/****** Object:  StoredProcedure [dbo].[getStock]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getStock] @sn nvarchar(50), @sid int
as
SELECT * FROM stocks WHERE StockN = @sn AND StockID = @sid;

GO
/****** Object:  StoredProcedure [dbo].[GiftList]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GiftList]
as
SELECT WeddingList.WeddingListID, WeddingListStocks.stockID, Stock.stockN, Stock.stockP,Stock.stockDis,WeddingListStocks.Payed
FROM WeddingList
INNER JOIN WeddingListStocks ON WeddingList.WeddingListID=WeddingList.WeddingListID
INNER JOIN Stock ON WeddingListStocks.stockID=Stock.stockID
GO
/****** Object:  StoredProcedure [dbo].[MonthOrdersANDStockReports]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MonthOrdersANDStockReports]
as
SELECT Order_Stocks.stockID, Stock.stockN, Stock.stockP, COUNT(Order_Stocks.Quantity) AS 'QuantityOrdered', Stock.stockQ AS 'InWarehouse', Month(GETDATE()) AS 'Month'
FROM Order_ 
INNER JOIN Order_Stocks ON Order_.orderID = Order_Stocks.orderID
INNER JOIN Stock ON Order_Stocks.stockID=Stock.stockID
WHERE MONTH(GETDATE()) = MONTH(Order_.DateOfOrder)
GROUP BY Order_Stocks.stockID, Stock.stockN, Stock.stockP, Stock.stockQ
GO
/****** Object:  StoredProcedure [dbo].[RemoveClient]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RemoveClient] @ClientID INT
AS
DELETE FROM Clients WHERE clientID = @ClientID;
GO
/****** Object:  StoredProcedure [dbo].[Report]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Report]
as
SELECT Stock.stockID,Stock.stockN,Stock.stockDis,Stock.stockP,Stock.stockQ, Order_Stocks.Quantity, Order_Stocks.orderID, Clients.clientID, Clients.clientForN ,Clients.clientSurN, Staff.staffID, Order_.DateOfOrder
FROM Stock
INNER JOIN Order_Stocks ON Order_Stocks.orderID = Order_Stocks.orderID
INNER JOIN Order_ ON Order_Stocks.orderID=Order_.orderID
INNER JOIN Clients ON Order_.clientID = Clients.clientID
INNER JOIN Staff ON Order_.staffID= Staff.staffID
GO
/****** Object:  StoredProcedure [dbo].[reports]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[reports]
as
select Order_.DateOfOrder, Stock.stockN, Stock.stockP
FROM Order_
INNER JOIN Order_Stocks ON Order_.orderID = Order_Stocks.orderID
INNER JOIN Stock ON Order_Stocks.stockID = Stock.stockID
GO
/****** Object:  StoredProcedure [dbo].[SearchClient]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PRocedure [dbo].[SearchClient] @searchClient nvarchar(50)
as
SELECT * FROM Clients Where clientSurN LIKE ('%'+@searchClient+'%') OR clientForN LIKE ('%'+@searchClient+'%') OR PhoneNo LIKE ('%'+@searchClient+'%') OR clientAddress LIKE ('%'+@searchClient+'%') OR clientPostCode LIKE ('%'+@searchClient+'%') ;
GO
/****** Object:  StoredProcedure [dbo].[searchClientAddress]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[searchClientAddress] @search nvarchar(50)
as
SELECT * FROM Clients WHERE clientAddress LIKE '%'+@search+'%' 
GO
/****** Object:  StoredProcedure [dbo].[searchClientEmail]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[searchClientEmail] @search nvarchar(50)
as
SELECT * FROM Clients WHERE email LIKE '%'+@search+'%' 
GO
/****** Object:  StoredProcedure [dbo].[searchClientID]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[searchClientID] @search nvarchar(50)
as
SELECT * FROM Clients WHERE clientID LIKE '%'+@search+'%' 
GO
/****** Object:  StoredProcedure [dbo].[searchClientSurname]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[searchClientSurname] @search nvarchar(50)
as
SELECT * FROM Clients WHERE clientSurN LIKE '%'+@search+'%' 
GO
/****** Object:  StoredProcedure [dbo].[searchStaffEmail]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[searchStaffEmail] @searchterm nvarchar(255)
as
select * from Staff 
WHERE email LIKE '%'+@searchterm+'%' 
GO
/****** Object:  StoredProcedure [dbo].[searchStaffID]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[searchStaffID] @searchterm int
as
select * from Staff 
WHERE staffID = @searchterm 
GO
/****** Object:  StoredProcedure [dbo].[searchStaffSurname]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[searchStaffSurname] @searchterm nvarchar(50)
as
select * from Staff 
WHERE staffForN LIKE '%'+@searchterm+'%' or staffSurN LIKE '%'+@searchterm+'%' 
GO
/****** Object:  StoredProcedure [dbo].[searchStaffUsername]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[searchStaffUsername] @searchterm nvarchar(50)
as
select * from Staff 
WHERE staffUN LIKE '%'+@searchterm+'%' 
GO
/****** Object:  StoredProcedure [dbo].[WeekOrdersANDStockReports]    Script Date: 23/03/2023 13:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WeekOrdersANDStockReports]
as
SELECT Order_Stocks.stockID, Stock.stockN, Stock.stockP, COUNT(Order_Stocks.Quantity) AS 'QuantityOrdered', Stock.stockQ AS 'InWarehouse'
FROM Order_ 
INNER JOIN Order_Stocks ON Order_.orderID = Order_Stocks.orderID
INNER JOIN Stock ON Order_Stocks.stockID=Stock.stockID
WHERE Order_.DateOfOrder >= DateAdd(day,-7, getdate())
GROUP BY Order_Stocks.stockID, Stock.stockN, Stock.stockP, Stock.stockQ
GO
USE [master]
GO
ALTER DATABASE [JX_Simpsons_HG] SET  READ_WRITE 
GO
