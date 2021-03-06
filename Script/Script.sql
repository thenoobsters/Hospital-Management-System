/****** Object:  Database [Advanced_Hospital]    Script Date: 3/24/2018 7:08:44 PM ******/
CREATE DATABASE [Advanced_Hospital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Advanced_Hospital', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Advanced_Hospital.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Advanced_Hospital_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Advanced_Hospital_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Advanced_Hospital] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Advanced_Hospital].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Advanced_Hospital] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET ARITHABORT OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Advanced_Hospital] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Advanced_Hospital] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Advanced_Hospital] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Advanced_Hospital] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Advanced_Hospital] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET RECOVERY FULL 
GO
ALTER DATABASE [Advanced_Hospital] SET  MULTI_USER 
GO
ALTER DATABASE [Advanced_Hospital] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Advanced_Hospital] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Advanced_Hospital] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Advanced_Hospital', N'ON'
GO
/****** Object:  StoredProcedure [dbo].[ddl_Search_Branch]    Script Date: 3/24/2018 7:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ddl_Search_Branch] 
				   
AS
BEGIN

	SET NOCOUNT ON;
	    SELECT
					id
					,Name
			
	from dbo.Branch 
	order by name
END


GO
/****** Object:  Table [dbo].[Add_InPatient]    Script Date: 3/24/2018 7:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Add_InPatient](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](10) NULL,
	[dob] [varchar](50) NULL,
	[age] [varchar](10) NULL,
	[gender] [varchar](50) NULL,
	[mailid] [varchar](50) NULL,
	[mobileno] [varchar](12) NULL,
	[address] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[natproblem] [varchar](50) NULL,
	[ad_date] [varchar](50) NULL,
	[RoomNo] [varchar](10) NULL,
	[Description] [varchar](max) NULL,
	[AdmitDate] [varchar](50) NULL,
	[MedicalAmount] [varchar](50) NULL,
	[RoomAmoiunt] [varchar](50) NULL,
	[Total] [varchar](50) NULL,
	[DischargeDate] [varchar](50) NULL,
 CONSTRAINT [PK_Add_InPatient] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Adddoctor]    Script Date: 3/24/2018 7:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Adddoctor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[docname] [varchar](50) NULL,
	[dob] [date] NULL,
	[mobileno] [varchar](10) NULL,
	[email] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[doj] [date] NULL,
	[qualification] [varchar](50) NULL,
	[designation] [varchar](50) NULL,
	[specialization] [varchar](50) NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_Adddoctor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AddEmployee]    Script Date: 3/24/2018 7:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddEmployee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[dob] [varchar](50) NULL,
	[mobileno] [varchar](50) NULL,
	[mailid] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[doj] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
 CONSTRAINT [PK_AddEmployee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AddHospital]    Script Date: 3/24/2018 7:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddHospital](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Branchid] [int] NULL,
	[Address] [varchar](max) NULL,
	[Mailid] [varchar](50) NULL,
	[MobileNo] [varchar](10) NULL,
 CONSTRAINT [PK_AddHospital] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 3/24/2018 7:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Appointment](
	[name] [varchar](50) NULL,
	[mobile] [varchar](12) NULL,
	[age] [varchar](50) NULL,
	[select_date] [varchar](50) NULL,
	[select_time] [varchar](50) NULL,
	[Docid] [varchar](50) NULL,
	[BookedBy] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 3/24/2018 7:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Branch](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocAtt]    Script Date: 3/24/2018 7:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocAtt](
	[Id] [int] NOT NULL,
	[Docid] [int] NULL,
	[Donname] [varchar](50) NULL,
	[Attdate] [datetime] NULL,
	[Attmonth] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmpAtt]    Script Date: 3/24/2018 7:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmpAtt](
	[Id] [int] NULL,
	[Empid] [int] NULL,
	[Empname] [varchar](50) NULL,
	[Attdate] [datetime] NULL,
	[Attmonth] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 3/24/2018 7:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FeedBack](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[FeedBack] [varchar](100) NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Organ]    Script Date: 3/24/2018 7:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Organ](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Patientid] [int] NULL,
	[Parts] [varchar](50) NULL,
	[BloodGroup] [varchar](50) NULL,
 CONSTRAINT [PK_Organ] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Out_patient]    Script Date: 3/24/2018 7:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Out_patient](
	[id] [int] NULL,
	[name] [varchar](50) NULL,
	[natprobelm] [varchar](50) NULL,
	[bloodtestno] [varchar](50) NULL,
	[xrayno] [varchar](50) NULL,
	[ctscan] [varchar](50) NULL,
	[prescription] [varchar](50) NULL,
	[Commends] [varchar](50) NULL,
	[date] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Patmaintains]    Script Date: 3/24/2018 7:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Patmaintains](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NULL,
	[natureofproblem] [varchar](50) NULL,
	[bloodtestno] [varchar](50) NULL,
	[xrayno] [varchar](50) NULL,
	[ctscan] [varchar](50) NULL,
	[prescription] [varchar](max) NULL,
	[comments] [varchar](max) NULL,
	[date] [varchar](50) NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_Patmaintains] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoomDetails]    Script Date: 3/24/2018 7:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoomDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomNo] [int] NULL,
	[RoomType] [varchar](4) NULL,
	[Status] [int] NULL,
	[RentAt] [date] NULL,
 CONSTRAINT [PK_RoomDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Treatment]    Script Date: 3/24/2018 7:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Treatment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NULL,
	[Disease] [varchar](50) NULL,
	[Treatement] [varchar](50) NULL,
	[DoctorNote] [varchar](50) NULL,
	[DateOfVisit] [varchar](50) NULL,
 CONSTRAINT [PK_Treatment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserReg]    Script Date: 3/24/2018 7:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserReg](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[natproblem] [varchar](50) NULL,
	[dob] [varchar](50) NULL,
	[mailid] [varchar](50) NULL,
	[mobileno] [varchar](50) NULL,
	[age] [varchar](50) NULL,
 CONSTRAINT [PK_UserReg] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Add_InPatient] ON 

INSERT [dbo].[Add_InPatient] ([id], [name], [dob], [age], [gender], [mailid], [mobileno], [address], [city], [state], [natproblem], [ad_date], [RoomNo], [Description], [AdmitDate], [MedicalAmount], [RoomAmoiunt], [Total], [DischargeDate]) VALUES (1, N'keerthi   ', N'11/02/2018', N'1', N'Male', N'keerthana@gmail.com', N'9988774455', N'adasd', N'coimbatore', N'TamilNadu', N'Feaver', N'18/02/2018', N'1', N'dwqwd', N'23-03-2018', N'1500', N'2500', N'4000', N'3/6/2018')
INSERT [dbo].[Add_InPatient] ([id], [name], [dob], [age], [gender], [mailid], [mobileno], [address], [city], [state], [natproblem], [ad_date], [RoomNo], [Description], [AdmitDate], [MedicalAmount], [RoomAmoiunt], [Total], [DischargeDate]) VALUES (2, N'keerthana ', N'09/02/2010', N'12', N'Female', N'keerthanakeerthur95@gmail.com', N'9952725404', N'sagsgsad', N'gasgas', N'gasga', N'gasgasg', N'05/03/2018', N'2', N'adswas', N'23-03-2018', N'02500', N'2200', N'4700', N'3/6/2018')
INSERT [dbo].[Add_InPatient] ([id], [name], [dob], [age], [gender], [mailid], [mobileno], [address], [city], [state], [natproblem], [ad_date], [RoomNo], [Description], [AdmitDate], [MedicalAmount], [RoomAmoiunt], [Total], [DischargeDate]) VALUES (3, N'rathana   ', N'15/06/2010', N'15', N'Male', N'keertha@gmail.com', N'6516216551', N'Cbe', N'Cbe', N'TN', N'Test', N'05/03/2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Add_InPatient] OFF
SET IDENTITY_INSERT [dbo].[Adddoctor] ON 

INSERT [dbo].[Adddoctor] ([ID], [UserName], [password], [docname], [dob], [mobileno], [email], [Address], [city], [state], [doj], [qualification], [designation], [specialization], [createDate]) VALUES (1, N'mani', N'mani', N'MANI', CAST(0x99150B00 AS Date), N'9952725404', N'mani@gmail.com', N'Cbe', N'Cbe', N'TN', CAST(0xDD3D0B00 AS Date), N'MBBS', N'Doc', N'Eye', NULL)
INSERT [dbo].[Adddoctor] ([ID], [UserName], [password], [docname], [dob], [mobileno], [email], [Address], [city], [state], [doj], [qualification], [designation], [specialization], [createDate]) VALUES (17, N'Keerthi', N'keerthi', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A8AC01355839 AS DateTime))
SET IDENTITY_INSERT [dbo].[Adddoctor] OFF
SET IDENTITY_INSERT [dbo].[AddEmployee] ON 

INSERT [dbo].[AddEmployee] ([id], [name], [password], [dob], [mobileno], [mailid], [address], [city], [state], [doj], [Designation]) VALUES (1, N'keerthi', N'123', N'2/16/2018', N'9988774444', N'keerthana@gmail.com', N'adas', N'asd', N'asdasdas', N'2/22/2018', N'asd')
SET IDENTITY_INSERT [dbo].[AddEmployee] OFF
SET IDENTITY_INSERT [dbo].[AddHospital] ON 

INSERT [dbo].[AddHospital] ([id], [Name], [Branchid], [Address], [Mailid], [MobileNo]) VALUES (1, N'VASAN', 1, N'CBe', N'vasan@gmail.com', N'6565465465')
INSERT [dbo].[AddHospital] ([id], [Name], [Branchid], [Address], [Mailid], [MobileNo]) VALUES (2, N'ASD', 5, N'Erode', N'Keerthi@gmail.com', N'9955441155')
INSERT [dbo].[AddHospital] ([id], [Name], [Branchid], [Address], [Mailid], [MobileNo]) VALUES (3, N'1AWS', 1, N'', N'', N'9999999999')
SET IDENTITY_INSERT [dbo].[AddHospital] OFF
INSERT [dbo].[Appointment] ([name], [mobile], [age], [select_date], [select_time], [Docid], [BookedBy]) VALUES (N'Keerthi', N'9988774455', N'27', N'18/02/2018', N'10:30 PM', N'mani', NULL)
INSERT [dbo].[Appointment] ([name], [mobile], [age], [select_date], [select_time], [Docid], [BookedBy]) VALUES (N'mani', N'9988775566', N'55', N'01/03/2018', N'10:30 PM', N'mani', NULL)
INSERT [dbo].[Appointment] ([name], [mobile], [age], [select_date], [select_time], [Docid], [BookedBy]) VALUES (N'amala', N'9874569874', N'27', N'18/02/2018', N'02:30 PM', N'Ravi', N'Keerthi')
INSERT [dbo].[Appointment] ([name], [mobile], [age], [select_date], [select_time], [Docid], [BookedBy]) VALUES (N'Ragu', N'995272540', N'21', N'05/03/2018', N'01:45 PM', N'Kumar', N'Ragu')
INSERT [dbo].[Appointment] ([name], [mobile], [age], [select_date], [select_time], [Docid], [BookedBy]) VALUES (N'mani', N'23523', N'55', N'06/03/2018', N'10:30 PM', N'', N'1')
SET IDENTITY_INSERT [dbo].[Branch] ON 

INSERT [dbo].[Branch] ([id], [name]) VALUES (1, N'Coimbatore')
INSERT [dbo].[Branch] ([id], [name]) VALUES (2, N'Mettupalayam')
INSERT [dbo].[Branch] ([id], [name]) VALUES (3, N'RS Puram')
INSERT [dbo].[Branch] ([id], [name]) VALUES (4, N'Tiruppur')
INSERT [dbo].[Branch] ([id], [name]) VALUES (5, N'Erode')
SET IDENTITY_INSERT [dbo].[Branch] OFF
SET IDENTITY_INSERT [dbo].[FeedBack] ON 

INSERT [dbo].[FeedBack] ([id], [UserName], [FeedBack]) VALUES (1, N'Keerthi', N'Nil')
INSERT [dbo].[FeedBack] ([id], [UserName], [FeedBack]) VALUES (2, N'1', N'asfas')
SET IDENTITY_INSERT [dbo].[FeedBack] OFF
SET IDENTITY_INSERT [dbo].[Organ] ON 

INSERT [dbo].[Organ] ([id], [Patientid], [Parts], [BloodGroup]) VALUES (1, 1, N'Kidney', NULL)
INSERT [dbo].[Organ] ([id], [Patientid], [Parts], [BloodGroup]) VALUES (2, 1, N'Heart', NULL)
INSERT [dbo].[Organ] ([id], [Patientid], [Parts], [BloodGroup]) VALUES (3, 1, N'Eye', NULL)
INSERT [dbo].[Organ] ([id], [Patientid], [Parts], [BloodGroup]) VALUES (4, 1, N'Kidney', NULL)
INSERT [dbo].[Organ] ([id], [Patientid], [Parts], [BloodGroup]) VALUES (5, 1, N'Eye', N'O-')
SET IDENTITY_INSERT [dbo].[Organ] OFF
SET IDENTITY_INSERT [dbo].[Patmaintains] ON 

INSERT [dbo].[Patmaintains] ([id], [PatientId], [natureofproblem], [bloodtestno], [xrayno], [ctscan], [prescription], [comments], [date], [Type]) VALUES (1, 3, N'sdgdsg', N'dsgsdg', N'szdfgsdf', N'gdfgdfg', N'fdsgsdfhg', N'sdghdsgsd', N'3/6/2018', 1)
INSERT [dbo].[Patmaintains] ([id], [PatientId], [natureofproblem], [bloodtestno], [xrayno], [ctscan], [prescription], [comments], [date], [Type]) VALUES (2, 1, N'dsg', N'sdg', N'dsgdsg', N'sdgds', N'gdsg', N'dsg', N'3/7/2018', 2)
INSERT [dbo].[Patmaintains] ([id], [PatientId], [natureofproblem], [bloodtestno], [xrayno], [ctscan], [prescription], [comments], [date], [Type]) VALUES (3, 2, N'kjhhg', N'gkjh', N'j', N'hkuhh', N'khhgg', N'lih', N'3/7/2018', 2)
SET IDENTITY_INSERT [dbo].[Patmaintains] OFF
SET IDENTITY_INSERT [dbo].[RoomDetails] ON 

INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (1, 1, N'A', 1, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (2, 2, N'A', 1, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (3, 3, N'A', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (4, 4, N'A', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (5, 5, N'A', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (6, 6, N'A', 1, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (7, 7, N'A', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (8, 8, N'A', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (9, 9, N'A', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (10, 1, N'B', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (11, 2, N'B', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (12, 3, N'B', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (13, 4, N'B', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (14, 5, N'B', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (15, 6, N'B', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (16, 7, N'B', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (17, 8, N'B', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (18, 9, N'B', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (19, 1, N'C', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (20, 2, N'C', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (21, 3, N'C', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (22, 4, N'C', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (23, 5, N'C', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (24, 6, N'C', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (25, 7, N'C', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (26, 8, N'C', 0, NULL)
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (27, 9, N'C', 0, NULL)
SET IDENTITY_INSERT [dbo].[RoomDetails] OFF
SET IDENTITY_INSERT [dbo].[Treatment] ON 

INSERT [dbo].[Treatment] ([Id], [PatientId], [Disease], [Treatement], [DoctorNote], [DateOfVisit]) VALUES (1, 1, N'Test', N'Testgy', N'Tesgt', N'3/13/2018')
INSERT [dbo].[Treatment] ([Id], [PatientId], [Disease], [Treatement], [DoctorNote], [DateOfVisit]) VALUES (2, 2, N'dsgdsg', N'dsgdsg', N'sdgsdgsd', N'3/7/2018')
INSERT [dbo].[Treatment] ([Id], [PatientId], [Disease], [Treatement], [DoctorNote], [DateOfVisit]) VALUES (3, 3, N'adsfasdg', N'asdgasg', N'asgas', N'3/13/2018')
SET IDENTITY_INSERT [dbo].[Treatment] OFF
SET IDENTITY_INSERT [dbo].[UserReg] ON 

INSERT [dbo].[UserReg] ([id], [name], [password], [natproblem], [dob], [mailid], [mobileno], [age]) VALUES (1, N'Keerthi', N'123', N'Feaver', N'2/17/2018', N'keerthi@gmail.com', N'9988774455', N'20')
INSERT [dbo].[UserReg] ([id], [name], [password], [natproblem], [dob], [mailid], [mobileno], [age]) VALUES (2, N'Ragu', N'Ragu', N'Fever', N'2/9/2010', N'ragu@gmail.com', N'995522525632', N'22')
INSERT [dbo].[UserReg] ([id], [name], [password], [natproblem], [dob], [mailid], [mobileno], [age]) VALUES (3, N'52525', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[UserReg] ([id], [name], [password], [natproblem], [dob], [mailid], [mobileno], [age]) VALUES (4, N'1', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[UserReg] ([id], [name], [password], [natproblem], [dob], [mailid], [mobileno], [age]) VALUES (5, N'a', N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[UserReg] OFF
ALTER TABLE [dbo].[Adddoctor] ADD  CONSTRAINT [df_Adddoctor_DATE]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER DATABASE [Advanced_Hospital] SET  READ_WRITE 
GO
