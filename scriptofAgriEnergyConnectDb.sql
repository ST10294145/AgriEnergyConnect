USE [master]
GO
/****** Object:  Database [AgriEnergyConnectDb]    Script Date: 6/24/2025 10:54:56 PM ******/
CREATE DATABASE [AgriEnergyConnectDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AgriEnergyConnectDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AgriEnergyConnectDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AgriEnergyConnectDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AgriEnergyConnectDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AgriEnergyConnectDb] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AgriEnergyConnectDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AgriEnergyConnectDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET  MULTI_USER 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AgriEnergyConnectDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AgriEnergyConnectDb] SET QUERY_STORE = ON
GO
ALTER DATABASE [AgriEnergyConnectDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AgriEnergyConnectDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/24/2025 10:54:57 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/24/2025 10:54:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/24/2025 10:54:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/24/2025 10:54:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/24/2025 10:54:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/24/2025 10:54:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/24/2025 10:54:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Province] [nvarchar](100) NULL,
	[Department] [nvarchar](100) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/24/2025 10:54:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmerProfiles]    Script Date: 6/24/2025 10:54:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmerProfiles](
	[FarmerId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Location] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_FarmerProfiles] PRIMARY KEY CLUSTERED 
(
	[FarmerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/24/2025 10:54:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[ProductionDate] [datetime2](7) NOT NULL,
	[FarmerId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250619115345_AddFarmerProfile', N'8.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250619140744_FarmerUpdate', N'8.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250621132238_AddFarmerIdToProduct', N'8.0.15')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'42088865-4462-411d-b3e5-d848cc3e72ab', N'Employee', N'EMPLOYEE', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5b89d566-5d82-401a-86ed-e8bc5a6f107c', N'Farmer', N'FARMER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0d2b4a19-39ab-4932-a3ca-c548d8f02db3', N'42088865-4462-411d-b3e5-d848cc3e72ab')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'90ae908b-a012-4286-8851-c22d6b1bdfe1', N'42088865-4462-411d-b3e5-d848cc3e72ab')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9b0475ac-9843-4e67-8df9-375ee838a34d', N'42088865-4462-411d-b3e5-d848cc3e72ab')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd99e442d-f965-4499-854d-b8654ec4b5b3', N'42088865-4462-411d-b3e5-d848cc3e72ab')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0105fe3b-c7d3-4525-98b2-94f0c709a78d', N'5b89d566-5d82-401a-86ed-e8bc5a6f107c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'242b3aca-a710-4bf1-9412-f6d4e3771624', N'5b89d566-5d82-401a-86ed-e8bc5a6f107c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3d72c2ee-5d65-4363-892b-d7f04bdc5da8', N'5b89d566-5d82-401a-86ed-e8bc5a6f107c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'45ce86d4-efdc-4456-842d-22bcabf04b08', N'5b89d566-5d82-401a-86ed-e8bc5a6f107c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9cb792b3-fbc2-4b4b-8b35-17a20ebc263c', N'5b89d566-5d82-401a-86ed-e8bc5a6f107c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ae80aa26-5afa-41dc-9b76-6dec8e370e94', N'5b89d566-5d82-401a-86ed-e8bc5a6f107c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c264cfc2-fea8-437f-8823-b89016d1e30a', N'5b89d566-5d82-401a-86ed-e8bc5a6f107c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e6fdb6cf-0ada-4103-894e-cf3082052459', N'5b89d566-5d82-401a-86ed-e8bc5a6f107c')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Province], [Department], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0105fe3b-c7d3-4525-98b2-94f0c709a78d', N'Barn01', NULL, NULL, N'Barn01@gmail.com', N'BARN01@GMAIL.COM', N'Barn01@gmail.com', N'BARN01@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEFvgMsc1Nd9vIjWTwFYRzsam39htK2ZAEw3Ku9bHh1Qn5hY9ZkQPicXniWammIYA2w==', N'BIZO6ZOB4FVQK6MVTKX24KCCPIF7MO2D', N'dac46e08-8924-4ad0-9c0a-175cd36a6fb5', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Province], [Department], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0d2b4a19-39ab-4932-a3ca-c548d8f02db3', N'Batman', N'Gauteng ', N'Grass', N'employee2@gmail.com', N'EMPLOYEE2@GMAIL.COM', N'employee2@gmail.com', N'EMPLOYEE2@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEAngTI3L9ICXlBqmX2YX6Ik7IUUVUFZ6wW6K0tGnsLgv8U0LaTWYyDc+cNnfeHuMkQ==', N'R3LWE5IQ5LGZBKYQHPVDUV2JYKL5I7KH', N'fa95b3f2-239d-48d6-9b8b-a8f1396e8ffc', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Province], [Department], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'242b3aca-a710-4bf1-9412-f6d4e3771624', N'Farmer4', NULL, NULL, N'farmer4@gmail.com', N'FARMER4@GMAIL.COM', N'farmer4@gmail.com', N'FARMER4@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEBQwlkePEp+v+gUHXNAXfE+duqx1d/0pdR9ofllCjVH+r93U2CtdmmtC0O/EuP474A==', N'NQOZEQTPTMJO3JJP7DSGU5O7KTHJ2GVY', N'28c409fc-f321-43c1-9081-447881e26270', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Province], [Department], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3d72c2ee-5d65-4363-892b-d7f04bdc5da8', N'Farmer1', NULL, NULL, N'farmer2@gmail.com', N'FARMER2@GMAIL.COM', N'farmer2@gmail.com', N'FARMER2@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMRCRFBCyZrnb6Iiy5t15tyxA+BREon0m9LA/LGuoolE1kxvyadpho9+t8BMj4/RbQ==', N'COWRAVFOQPLL5OTHRPHV3I3IK2EXY6K4', N'e8f0f8f2-75c3-453e-91de-cd99aa20b061', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Province], [Department], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'45ce86d4-efdc-4456-842d-22bcabf04b08', N'Farmer1', NULL, NULL, N'farmer1@gmail.com', N'FARMER1@GMAIL.COM', N'farmer1@gmail.com', N'FARMER1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEDe4GrbT7hjLqMThKwdk3th8m9lvBeYJzB0KswdMbZCj4VhPT2vxnAfHzLFZlwUMsA==', N'F3NLUXVHT5DOU4JCWAFISM2SKA2OUJMN', N'f92abe24-2240-4dd7-8d4c-8f26109c4983', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Province], [Department], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'90ae908b-a012-4286-8851-c22d6b1bdfe1', N'Employ', N'Gauteng ', N'Grass', N'employee90@gmail.com', N'EMPLOYEE90@GMAIL.COM', N'employee90@gmail.com', N'EMPLOYEE90@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEEldmPVL6hjkTWYh4fvySgnplXO2K6LyqqVD+hgrS1vuT/ggacm7IEoWEVF6fscMxQ==', N'GRR6GLLETSRGE234KNUF32JCSUR7PCLM', N'81f2b573-4bde-4cbc-aa00-d57ae9345d03', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Province], [Department], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9b0475ac-9843-4e67-8df9-375ee838a34d', N'Batman', N'Gauteng ', N'Grass', N'Bat01@gmail.com', N'BAT01@GMAIL.COM', N'Bat01@gmail.com', N'BAT01@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEBEFeUAKc/vVUlRec0Gid1uBfR+rkSY2PggODvwzCIjcBh5pIU/hpXGWmfObksSVaA==', N'5GO672K36VP3J342YIQIZF732IMC245C', N'a5ccacbb-a85e-4869-a40e-72bf1c6843de', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Province], [Department], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9cb792b3-fbc2-4b4b-8b35-17a20ebc263c', N'MR Barn', NULL, NULL, N'MrBarn@gmail.com', N'MRBARN@GMAIL.COM', N'MrBarn@gmail.com', N'MRBARN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAENDYYlDP59aC3Atv7lLPdiCrmHBxBb5sb+bL+DMPHc8/HUXIIrPF91djjqcVD0TaUw==', N'72QGZYQBQ7VMCVUTT5TPIKCD66EZR7WF', N'a0613cd0-62d7-433b-bfe6-fd86cff6fbb3', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Province], [Department], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ae80aa26-5afa-41dc-9b76-6dec8e370e94', N'Farmer3', NULL, NULL, N'farmer3@gmail.com', N'FARMER3@GMAIL.COM', N'farmer3@gmail.com', N'FARMER3@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEFy72cnXHQyY0U4EmpBZK1jKMC/XjDRref0AYRg78HO1+/DEXwoNBG5LtV5w5MhdDw==', N'SYEVITHMTZAGGJW4L2BQQSMVW6H6BBCU', N'61068d20-2a5a-46d8-8adf-a90731699b99', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Province], [Department], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c264cfc2-fea8-437f-8823-b89016d1e30a', N'Dinay', NULL, NULL, N'dinay@gmail.com', N'DINAY@GMAIL.COM', N'dinay@gmail.com', N'DINAY@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEIsAKVDOXspgOfO5qiUKhB6YlvEsFAgTBjuj9qgsmr3kL9MfnyvjOVByycIP4T/5gg==', N'2XPCADI7CUA2DSQD2ZJQJ57VJVJFO4XD', N'2fb0e270-790a-4d64-bd55-49ed9899e6c7', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Province], [Department], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd99e442d-f965-4499-854d-b8654ec4b5b3', N'Employee1', N'Gauteng ', N'Grass', N'employee1@gmail.com', N'EMPLOYEE1@GMAIL.COM', N'employee1@gmail.com', N'EMPLOYEE1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEN/RLx05+ahu4AKgh1WITgaerGXgp+lFF/pUy9wsZNty1r0rVHY4q5v5igpAwKDFUQ==', N'2Q3QWICI6GRV5Z2FVNURU6645QVU7VNG', N'84105c92-a88e-4a8c-a32c-0c930b57005c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Province], [Department], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e6fdb6cf-0ada-4103-894e-cf3082052459', N'Farmer Bob', NULL, NULL, N'Bob@gmail.com', N'BOB@GMAIL.COM', N'Bob@gmail.com', N'BOB@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJaNdzAZGzlDkVFnu7jjLxJI+9pmeEo0rkl4izD1lKekFO0yfUeIkS9svl6noxzCjQ==', N'H5IHT5NDMY7MCDNXGPEZQQPCUXU3MVXU', N'3689a714-a981-4394-aa37-e8bc44bceb46', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[FarmerProfiles] ON 

INSERT [dbo].[FarmerProfiles] ([FarmerId], [UserId], [Name], [Location]) VALUES (5, N'c264cfc2-fea8-437f-8823-b89016d1e30a', N'Dinay', N'Grass')
INSERT [dbo].[FarmerProfiles] ([FarmerId], [UserId], [Name], [Location]) VALUES (6, N'9cb792b3-fbc2-4b4b-8b35-17a20ebc263c', N'MR Barn', N'Crops')
INSERT [dbo].[FarmerProfiles] ([FarmerId], [UserId], [Name], [Location]) VALUES (7, N'e6fdb6cf-0ada-4103-894e-cf3082052459', N'Farmer Bob', N'Crops')
INSERT [dbo].[FarmerProfiles] ([FarmerId], [UserId], [Name], [Location]) VALUES (8, N'0105fe3b-c7d3-4525-98b2-94f0c709a78d', N'Barn01', N'Crops')
SET IDENTITY_INSERT [dbo].[FarmerProfiles] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Name], [Category], [ProductionDate], [FarmerId]) VALUES (1, N'Hoe', N'Farming Tool', CAST(N'2025-03-03T00:00:00.0000000' AS DateTime2), N'45ce86d4-efdc-4456-842d-22bcabf04b08')
INSERT [dbo].[Products] ([ProductId], [Name], [Category], [ProductionDate], [FarmerId]) VALUES (2, N'Water Jug', N'Farming Tool', CAST(N'2025-03-04T00:00:00.0000000' AS DateTime2), N'9cb792b3-fbc2-4b4b-8b35-17a20ebc263c')
INSERT [dbo].[Products] ([ProductId], [Name], [Category], [ProductionDate], [FarmerId]) VALUES (3, N'Hoe', N'Farming Tool', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), N'9cb792b3-fbc2-4b4b-8b35-17a20ebc263c')
INSERT [dbo].[Products] ([ProductId], [Name], [Category], [ProductionDate], [FarmerId]) VALUES (4, N'Apple Seeds', N'Food', CAST(N'2025-11-03T00:00:00.0000000' AS DateTime2), N'0105fe3b-c7d3-4525-98b2-94f0c709a78d')
INSERT [dbo].[Products] ([ProductId], [Name], [Category], [ProductionDate], [FarmerId]) VALUES (5, N'Flower Seeds', N'Plants', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), N'0105fe3b-c7d3-4525-98b2-94f0c709a78d')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 6/24/2025 10:54:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/24/2025 10:54:57 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 6/24/2025 10:54:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 6/24/2025 10:54:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 6/24/2025 10:54:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 6/24/2025 10:54:57 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/24/2025 10:54:57 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FarmerProfiles_UserId]    Script Date: 6/24/2025 10:54:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_FarmerProfiles_UserId] ON [dbo].[FarmerProfiles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Products_FarmerId]    Script Date: 6/24/2025 10:54:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_FarmerId] ON [dbo].[Products]
(
	[FarmerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (N'') FOR [FarmerId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[FarmerProfiles]  WITH CHECK ADD  CONSTRAINT [FK_FarmerProfiles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FarmerProfiles] CHECK CONSTRAINT [FK_FarmerProfiles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_AspNetUsers_FarmerId] FOREIGN KEY([FarmerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_AspNetUsers_FarmerId]
GO
USE [master]
GO
ALTER DATABASE [AgriEnergyConnectDb] SET  READ_WRITE 
GO
