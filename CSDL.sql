USE [FIT]
GO
/****** Object:  Table [dbo].[CommandInFunctions]    Script Date: 7/30/2020 12:11:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommandInFunctions](
	[CommandId] [nvarchar](128) NOT NULL,
	[FunctionId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_CommandInFunctions] PRIMARY KEY CLUSTERED 
(
	[CommandId] ASC,
	[FunctionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Commands]    Script Date: 7/30/2020 12:11:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commands](
	[CommandId] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Commands] PRIMARY KEY CLUSTERED 
(
	[CommandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 7/30/2020 12:11:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentId] [nvarchar](128) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[PostId] [nvarchar](128) NULL,
	[ReplyId] [nvarchar](128) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[Email] [nvarchar](100) NULL,
	[UserName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footers]    Script Date: 7/30/2020 12:11:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Footers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Functions]    Script Date: 7/30/2020 12:11:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Functions](
	[FunctionId] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Url] [nvarchar](200) NULL,
	[SortOrder] [int] NULL,
	[ParentId] [varchar](128) NULL,
	[Icons] [varchar](50) NULL,
 CONSTRAINT [PK_Funtions] PRIMARY KEY CLUSTERED 
(
	[FunctionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupUsers]    Script Date: 7/30/2020 12:11:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupUsers](
	[GroupId] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_GroupUsers] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 7/30/2020 12:11:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[MenuId] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[URL] [varchar](256) NULL,
	[DisplayOrder] [int] NULL,
	[Status] [bit] NULL,
	[ParentId] [varchar](128) NULL,
	[Content] [nvarchar](max) NULL,
	[PostId] [nvarchar](128) NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 7/30/2020 12:11:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[FunctionId] [nvarchar](128) NOT NULL,
	[GroupId] [nvarchar](128) NOT NULL,
	[CommandId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC,
	[CommandId] ASC,
	[FunctionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCategorys]    Script Date: 7/30/2020 12:11:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCategorys](
	[CategoryId] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Alias] [varchar](50) NULL,
	[ParentId] [varchar](128) NULL,
	[DisplayOrder] [int] NULL,
 CONSTRAINT [PK_PostCategorys] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 7/30/2020 12:11:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[PostId] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Alias] [varchar](256) NULL,
	[CategoryId] [nvarchar](128) NULL,
	[Description] [nvarchar](256) NULL,
	[Content] [nvarchar](max) NULL,
	[HomeFlag] [bit] NULL,
	[ViewCount] [int] NULL,
	[LikeCount] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[Img] [nvarchar](256) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slides]    Script Date: 7/30/2020 12:11:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slides](
	[SlideId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Img] [nvarchar](256) NULL,
	[Url] [nvarchar](256) NULL,
	[DisplayOrder] [int] NULL,
	[Status] [bit] NULL,
	[ImgType] [int] NULL,
 CONSTRAINT [PK_Slides] PRIMARY KEY CLUSTERED 
(
	[SlideId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 7/30/2020 12:11:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[TecherId] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[Position] [nvarchar](50) NULL,
	[WorkPlace] [nchar](10) NULL,
	[WebSite] [nvarchar](80) NULL,
	[Content] [nvarchar](max) NULL,
	[Img] [nvarchar](256) NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[TecherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/30/2020 12:11:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](256) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](max) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Dob] [datetime] NULL,
	[GroupId] [nvarchar](128) NULL,
	[Img] [nvarchar](250) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'0E076731-78A3-428D-A7D9-15CD572CF679', N'05153AFE-F703-4219-8958-57249AB2DC87')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'0E076731-78A3-428D-A7D9-15CD572CF679', N'1CAFE889-5E72-4152-9E02-F286E597C1CF')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'0E076731-78A3-428D-A7D9-15CD572CF679', N'26F3A458-AFDE-47FE-979D-283B7466D081')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'0E076731-78A3-428D-A7D9-15CD572CF679', N'3B5802F1-9949-4BB6-8784-873CC3236D05')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'0E076731-78A3-428D-A7D9-15CD572CF679', N'57E9997E-E6CD-4ABC-B4DE-6E6E46DADA96')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'0E076731-78A3-428D-A7D9-15CD572CF679', N'61045A36-C1C4-4820-882D-694997671AC0')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'0E076731-78A3-428D-A7D9-15CD572CF679', N'A152DE91-7900-4D90-863A-10C9F8F5FA5C')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'0E076731-78A3-428D-A7D9-15CD572CF679', N'B5517DF2-507C-40BC-90E6-9DBFBE306241')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'0E076731-78A3-428D-A7D9-15CD572CF679', N'BE7F3363-7D22-4ACC-9BA9-BAD69AF59F72')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'0E076731-78A3-428D-A7D9-15CD572CF679', N'C55153C3-BA71-4BC7-BD12-3828032213C9')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'0E076731-78A3-428D-A7D9-15CD572CF679', N'CD795200-F325-4CF5-970C-71222F272C4B')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'0E076731-78A3-428D-A7D9-15CD572CF679', N'E747DAB7-A571-437A-9282-6B8528D8DE7E')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'0E076731-78A3-428D-A7D9-15CD572CF679', N'F673C5A6-1202-4479-9209-24C4018BB1E3')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'0E076731-78A3-428D-A7D9-15CD572CF679', N'FE8DFA56-9A71-4F4F-BF53-0FC714D8636E')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C', N'05153AFE-F703-4219-8958-57249AB2DC87')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C', N'1CAFE889-5E72-4152-9E02-F286E597C1CF')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C', N'26F3A458-AFDE-47FE-979D-283B7466D081')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C', N'3B5802F1-9949-4BB6-8784-873CC3236D05')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C', N'57E9997E-E6CD-4ABC-B4DE-6E6E46DADA96')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C', N'61045A36-C1C4-4820-882D-694997671AC0')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C', N'A152DE91-7900-4D90-863A-10C9F8F5FA5C')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C', N'B5517DF2-507C-40BC-90E6-9DBFBE306241')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C', N'BE7F3363-7D22-4ACC-9BA9-BAD69AF59F72')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C', N'C55153C3-BA71-4BC7-BD12-3828032213C9')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C', N'CD795200-F325-4CF5-970C-71222F272C4B')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C', N'D1E4D548-D6C1-40F1-86C1-095DAFE81DA4')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C', N'E747DAB7-A571-437A-9282-6B8528D8DE7E')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C', N'F673C5A6-1202-4479-9209-24C4018BB1E3')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C', N'FE8DFA56-9A71-4F4F-BF53-0FC714D8636E')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CA1602B3-8683-4EE5-9009-6ECF2B91D652', N'05153AFE-F703-4219-8958-57249AB2DC87')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CA1602B3-8683-4EE5-9009-6ECF2B91D652', N'1CAFE889-5E72-4152-9E02-F286E597C1CF')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CA1602B3-8683-4EE5-9009-6ECF2B91D652', N'26F3A458-AFDE-47FE-979D-283B7466D081')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CA1602B3-8683-4EE5-9009-6ECF2B91D652', N'3B5802F1-9949-4BB6-8784-873CC3236D05')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CA1602B3-8683-4EE5-9009-6ECF2B91D652', N'57E9997E-E6CD-4ABC-B4DE-6E6E46DADA96')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CA1602B3-8683-4EE5-9009-6ECF2B91D652', N'61045A36-C1C4-4820-882D-694997671AC0')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CA1602B3-8683-4EE5-9009-6ECF2B91D652', N'A152DE91-7900-4D90-863A-10C9F8F5FA5C')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CA1602B3-8683-4EE5-9009-6ECF2B91D652', N'B5517DF2-507C-40BC-90E6-9DBFBE306241')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CA1602B3-8683-4EE5-9009-6ECF2B91D652', N'BE7F3363-7D22-4ACC-9BA9-BAD69AF59F72')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CA1602B3-8683-4EE5-9009-6ECF2B91D652', N'C55153C3-BA71-4BC7-BD12-3828032213C9')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CA1602B3-8683-4EE5-9009-6ECF2B91D652', N'CD795200-F325-4CF5-970C-71222F272C4B')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CA1602B3-8683-4EE5-9009-6ECF2B91D652', N'E747DAB7-A571-437A-9282-6B8528D8DE7E')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CA1602B3-8683-4EE5-9009-6ECF2B91D652', N'F673C5A6-1202-4479-9209-24C4018BB1E3')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CA1602B3-8683-4EE5-9009-6ECF2B91D652', N'FE8DFA56-9A71-4F4F-BF53-0FC714D8636E')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CCE8BA93-F514-42EA-A5A5-BFD980979F97', N'05153AFE-F703-4219-8958-57249AB2DC87')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CCE8BA93-F514-42EA-A5A5-BFD980979F97', N'1CAFE889-5E72-4152-9E02-F286E597C1CF')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CCE8BA93-F514-42EA-A5A5-BFD980979F97', N'26F3A458-AFDE-47FE-979D-283B7466D081')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CCE8BA93-F514-42EA-A5A5-BFD980979F97', N'3B5802F1-9949-4BB6-8784-873CC3236D05')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CCE8BA93-F514-42EA-A5A5-BFD980979F97', N'57E9997E-E6CD-4ABC-B4DE-6E6E46DADA96')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CCE8BA93-F514-42EA-A5A5-BFD980979F97', N'61045A36-C1C4-4820-882D-694997671AC0')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CCE8BA93-F514-42EA-A5A5-BFD980979F97', N'A152DE91-7900-4D90-863A-10C9F8F5FA5C')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CCE8BA93-F514-42EA-A5A5-BFD980979F97', N'B5517DF2-507C-40BC-90E6-9DBFBE306241')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CCE8BA93-F514-42EA-A5A5-BFD980979F97', N'BE7F3363-7D22-4ACC-9BA9-BAD69AF59F72')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CCE8BA93-F514-42EA-A5A5-BFD980979F97', N'C55153C3-BA71-4BC7-BD12-3828032213C9')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CCE8BA93-F514-42EA-A5A5-BFD980979F97', N'CD795200-F325-4CF5-970C-71222F272C4B')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CCE8BA93-F514-42EA-A5A5-BFD980979F97', N'E747DAB7-A571-437A-9282-6B8528D8DE7E')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CCE8BA93-F514-42EA-A5A5-BFD980979F97', N'F673C5A6-1202-4479-9209-24C4018BB1E3')
INSERT [dbo].[CommandInFunctions] ([CommandId], [FunctionId]) VALUES (N'CCE8BA93-F514-42EA-A5A5-BFD980979F97', N'FE8DFA56-9A71-4F4F-BF53-0FC714D8636E')
INSERT [dbo].[Commands] ([CommandId], [Name]) VALUES (N'0E076731-78A3-428D-A7D9-15CD572CF679', N'Sửa')
INSERT [dbo].[Commands] ([CommandId], [Name]) VALUES (N'3735ED27-604A-4BE8-940D-F585CC4A6FD9', N'Xuất Excel')
INSERT [dbo].[Commands] ([CommandId], [Name]) VALUES (N'4EC58958-FA47-4A81-8A3F-7A8563E85885', N'Nạp Excel')
INSERT [dbo].[Commands] ([CommandId], [Name]) VALUES (N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C', N'Xem')
INSERT [dbo].[Commands] ([CommandId], [Name]) VALUES (N'CA1602B3-8683-4EE5-9009-6ECF2B91D652', N'Thêm')
INSERT [dbo].[Commands] ([CommandId], [Name]) VALUES (N'CCE8BA93-F514-42EA-A5A5-BFD980979F97', N'Xoá')
INSERT [dbo].[Commands] ([CommandId], [Name]) VALUES (N'F12DA304-52CB-44E5-B587-440B11BABDEA', N'Duyệt')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'05153AFE-F703-4219-8958-57249AB2DC87', N'QUẢN LÝ NỘI DUNG', N'', 2, NULL, N'icon-newspaper')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'1CAFE889-5E72-4152-9E02-F286E597C1CF', N'BÀI VIẾT', N'posts', 0, N'05153AFE-F703-4219-8958-57249AB2DC87', N'icon-magazine')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'26F3A458-AFDE-47FE-979D-283B7466D081', N'QUYỀN HẠN', N'permissions', 0, N'CD795200-F325-4CF5-970C-71222F272C4B', N'icon-user-check')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'281A89AA-7A5E-4D33-B357-2681ED5D7624', N'FOOTER', N'footers', 0, N'3B5802F1-9949-4BB6-8784-873CC3236D05', N'icon-info22')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'2A4E015C-C716-4D8A-B4E1-F4B7ABBFD0FA', N'MENU', N'menus', 0, N'3B5802F1-9949-4BB6-8784-873CC3236D05', N'icon-grid5')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'3B5802F1-9949-4BB6-8784-873CC3236D05', N'CHỨC NĂNG KHÁC', N'', 4, NULL, N'icon-more')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'57E9997E-E6CD-4ABC-B4DE-6E6E46DADA96', N'BÌNH LUẬN (tháng)', N'statistic_comments', 0, N'FE8DFA56-9A71-4F4F-BF53-0FC714D8636E', N'icon-bubble-dots3')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'61045A36-C1C4-4820-882D-694997671AC0', N'GIẢNG VIÊN', N'teachers', 0, N'3B5802F1-9949-4BB6-8784-873CC3236D05', N'icon-user-tie')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'82A7B384-FDDC-4760-99D9-D0FCD1737A15', N'SLIDE ẢNH', N'slides', 0, N'3B5802F1-9949-4BB6-8784-873CC3236D05', N'icon-stack-picture')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'A152DE91-7900-4D90-863A-10C9F8F5FA5C', N'DANH MỤC', N'post_categories', 0, N'05153AFE-F703-4219-8958-57249AB2DC87', N'icon-stack3')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'B5517DF2-507C-40BC-90E6-9DBFBE306241', N'NHÓM QUYỀN', N'group_users', 0, N'CD795200-F325-4CF5-970C-71222F272C4B', N'icon-users4')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'BE7F3363-7D22-4ACC-9BA9-BAD69AF59F72', N'BÌNH LUẬN', N'comments', 0, N'05153AFE-F703-4219-8958-57249AB2DC87', N'icon-bubble-dots3')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'C55153C3-BA71-4BC7-BD12-3828032213C9', N'BÀI ĐĂNG (tháng)', N'statistic_posts', 0, N'FE8DFA56-9A71-4F4F-BF53-0FC714D8636E', N'icon-magazine')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'CD795200-F325-4CF5-970C-71222F272C4B', N'QUẢN LÝ HỆ THỐNG', N'', 1, NULL, N'icon-cog2')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'D1E4D548-D6C1-40F1-86C1-095DAFE81DA4', N'THAO TÁC', N'commands', 0, N'CD795200-F325-4CF5-970C-71222F272C4B', N'icon-mouse')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'E747DAB7-A571-437A-9282-6B8528D8DE7E', N'NGƯỜI DÙNG', N'users', 0, N'CD795200-F325-4CF5-970C-71222F272C4B', N'icon-user')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'F673C5A6-1202-4479-9209-24C4018BB1E3', N'CHỨC NĂNG', N'functions', 0, N'CD795200-F325-4CF5-970C-71222F272C4B', N'icon-cursor')
INSERT [dbo].[Functions] ([FunctionId], [Name], [Url], [SortOrder], [ParentId], [Icons]) VALUES (N'FE8DFA56-9A71-4F4F-BF53-0FC714D8636E', N'THỐNG KÊ', N'', 3, NULL, N'icon-stats-growth')
INSERT [dbo].[GroupUsers] ([GroupId], [Name]) VALUES (N'Admin', N'Admin')
INSERT [dbo].[GroupUsers] ([GroupId], [Name]) VALUES (N'Editor', N'Editor')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'05153AFE-F703-4219-8958-57249AB2DC87', N'Admin', N'0E076731-78A3-428D-A7D9-15CD572CF679')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'1CAFE889-5E72-4152-9E02-F286E597C1CF', N'Admin', N'0E076731-78A3-428D-A7D9-15CD572CF679')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'26F3A458-AFDE-47FE-979D-283B7466D081', N'Admin', N'0E076731-78A3-428D-A7D9-15CD572CF679')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'3B5802F1-9949-4BB6-8784-873CC3236D05', N'Admin', N'0E076731-78A3-428D-A7D9-15CD572CF679')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'57E9997E-E6CD-4ABC-B4DE-6E6E46DADA96', N'Admin', N'0E076731-78A3-428D-A7D9-15CD572CF679')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'61045A36-C1C4-4820-882D-694997671AC0', N'Admin', N'0E076731-78A3-428D-A7D9-15CD572CF679')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'A152DE91-7900-4D90-863A-10C9F8F5FA5C', N'Admin', N'0E076731-78A3-428D-A7D9-15CD572CF679')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'B5517DF2-507C-40BC-90E6-9DBFBE306241', N'Admin', N'0E076731-78A3-428D-A7D9-15CD572CF679')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'BE7F3363-7D22-4ACC-9BA9-BAD69AF59F72', N'Admin', N'0E076731-78A3-428D-A7D9-15CD572CF679')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'C55153C3-BA71-4BC7-BD12-3828032213C9', N'Admin', N'0E076731-78A3-428D-A7D9-15CD572CF679')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'CD795200-F325-4CF5-970C-71222F272C4B', N'Admin', N'0E076731-78A3-428D-A7D9-15CD572CF679')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'E747DAB7-A571-437A-9282-6B8528D8DE7E', N'Admin', N'0E076731-78A3-428D-A7D9-15CD572CF679')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'F673C5A6-1202-4479-9209-24C4018BB1E3', N'Admin', N'0E076731-78A3-428D-A7D9-15CD572CF679')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'FE8DFA56-9A71-4F4F-BF53-0FC714D8636E', N'Admin', N'0E076731-78A3-428D-A7D9-15CD572CF679')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'05153AFE-F703-4219-8958-57249AB2DC87', N'Admin', N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'1CAFE889-5E72-4152-9E02-F286E597C1CF', N'Admin', N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'26F3A458-AFDE-47FE-979D-283B7466D081', N'Admin', N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'3B5802F1-9949-4BB6-8784-873CC3236D05', N'Admin', N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'57E9997E-E6CD-4ABC-B4DE-6E6E46DADA96', N'Admin', N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'61045A36-C1C4-4820-882D-694997671AC0', N'Admin', N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'A152DE91-7900-4D90-863A-10C9F8F5FA5C', N'Admin', N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'B5517DF2-507C-40BC-90E6-9DBFBE306241', N'Admin', N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'BE7F3363-7D22-4ACC-9BA9-BAD69AF59F72', N'Admin', N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'C55153C3-BA71-4BC7-BD12-3828032213C9', N'Admin', N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'CD795200-F325-4CF5-970C-71222F272C4B', N'Admin', N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'D1E4D548-D6C1-40F1-86C1-095DAFE81DA4', N'Admin', N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'E747DAB7-A571-437A-9282-6B8528D8DE7E', N'Admin', N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'F673C5A6-1202-4479-9209-24C4018BB1E3', N'Admin', N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'FE8DFA56-9A71-4F4F-BF53-0FC714D8636E', N'Admin', N'9A26C109-CBD0-41CB-BD7D-31C34DE9E64C')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'05153AFE-F703-4219-8958-57249AB2DC87', N'Admin', N'CA1602B3-8683-4EE5-9009-6ECF2B91D652')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'1CAFE889-5E72-4152-9E02-F286E597C1CF', N'Admin', N'CA1602B3-8683-4EE5-9009-6ECF2B91D652')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'26F3A458-AFDE-47FE-979D-283B7466D081', N'Admin', N'CA1602B3-8683-4EE5-9009-6ECF2B91D652')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'3B5802F1-9949-4BB6-8784-873CC3236D05', N'Admin', N'CA1602B3-8683-4EE5-9009-6ECF2B91D652')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'57E9997E-E6CD-4ABC-B4DE-6E6E46DADA96', N'Admin', N'CA1602B3-8683-4EE5-9009-6ECF2B91D652')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'61045A36-C1C4-4820-882D-694997671AC0', N'Admin', N'CA1602B3-8683-4EE5-9009-6ECF2B91D652')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'A152DE91-7900-4D90-863A-10C9F8F5FA5C', N'Admin', N'CA1602B3-8683-4EE5-9009-6ECF2B91D652')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'B5517DF2-507C-40BC-90E6-9DBFBE306241', N'Admin', N'CA1602B3-8683-4EE5-9009-6ECF2B91D652')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'BE7F3363-7D22-4ACC-9BA9-BAD69AF59F72', N'Admin', N'CA1602B3-8683-4EE5-9009-6ECF2B91D652')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'C55153C3-BA71-4BC7-BD12-3828032213C9', N'Admin', N'CA1602B3-8683-4EE5-9009-6ECF2B91D652')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'CD795200-F325-4CF5-970C-71222F272C4B', N'Admin', N'CA1602B3-8683-4EE5-9009-6ECF2B91D652')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'E747DAB7-A571-437A-9282-6B8528D8DE7E', N'Admin', N'CA1602B3-8683-4EE5-9009-6ECF2B91D652')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'F673C5A6-1202-4479-9209-24C4018BB1E3', N'Admin', N'CA1602B3-8683-4EE5-9009-6ECF2B91D652')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'FE8DFA56-9A71-4F4F-BF53-0FC714D8636E', N'Admin', N'CA1602B3-8683-4EE5-9009-6ECF2B91D652')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'05153AFE-F703-4219-8958-57249AB2DC87', N'Admin', N'CCE8BA93-F514-42EA-A5A5-BFD980979F97')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'1CAFE889-5E72-4152-9E02-F286E597C1CF', N'Admin', N'CCE8BA93-F514-42EA-A5A5-BFD980979F97')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'26F3A458-AFDE-47FE-979D-283B7466D081', N'Admin', N'CCE8BA93-F514-42EA-A5A5-BFD980979F97')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'3B5802F1-9949-4BB6-8784-873CC3236D05', N'Admin', N'CCE8BA93-F514-42EA-A5A5-BFD980979F97')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'57E9997E-E6CD-4ABC-B4DE-6E6E46DADA96', N'Admin', N'CCE8BA93-F514-42EA-A5A5-BFD980979F97')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'61045A36-C1C4-4820-882D-694997671AC0', N'Admin', N'CCE8BA93-F514-42EA-A5A5-BFD980979F97')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'A152DE91-7900-4D90-863A-10C9F8F5FA5C', N'Admin', N'CCE8BA93-F514-42EA-A5A5-BFD980979F97')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'B5517DF2-507C-40BC-90E6-9DBFBE306241', N'Admin', N'CCE8BA93-F514-42EA-A5A5-BFD980979F97')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'BE7F3363-7D22-4ACC-9BA9-BAD69AF59F72', N'Admin', N'CCE8BA93-F514-42EA-A5A5-BFD980979F97')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'C55153C3-BA71-4BC7-BD12-3828032213C9', N'Admin', N'CCE8BA93-F514-42EA-A5A5-BFD980979F97')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'CD795200-F325-4CF5-970C-71222F272C4B', N'Admin', N'CCE8BA93-F514-42EA-A5A5-BFD980979F97')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'E747DAB7-A571-437A-9282-6B8528D8DE7E', N'Admin', N'CCE8BA93-F514-42EA-A5A5-BFD980979F97')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'F673C5A6-1202-4479-9209-24C4018BB1E3', N'Admin', N'CCE8BA93-F514-42EA-A5A5-BFD980979F97')
INSERT [dbo].[Permissions] ([FunctionId], [GroupId], [CommandId]) VALUES (N'FE8DFA56-9A71-4F4F-BF53-0FC714D8636E', N'Admin', N'CCE8BA93-F514-42EA-A5A5-BFD980979F97')
INSERT [dbo].[Users] ([UserId], [Name], [Email], [PhoneNumber], [Address], [UserName], [Password], [FirstName], [LastName], [Dob], [GroupId], [Img]) VALUES (N'331831D6-6948-42D0-80FA-DC7E375A9D47', N'Vũ Chung Dũng', N'vuchungdung@gmail.com', N'0987654321', N'Yên Mỹ', N'admin', N'admin@123', N'Dũng', N'Vũ', CAST(N'2000-02-20T00:00:00.000' AS DateTime), N'Admin', NULL)
SET ANSI_PADDING ON
GO
/****** Object:  Index [constraint_unique_2]    Script Date: 7/30/2020 12:11:23 PM ******/
ALTER TABLE [dbo].[Menus] ADD  CONSTRAINT [constraint_unique_2] UNIQUE NONCLUSTERED 
(
	[Name] ASC,
	[DisplayOrder] ASC,
	[URL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [unique_displayOrder]    Script Date: 7/30/2020 12:11:23 PM ******/
ALTER TABLE [dbo].[PostCategorys] ADD  CONSTRAINT [unique_displayOrder] UNIQUE NONCLUSTERED 
(
	[DisplayOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_name]    Script Date: 7/30/2020 12:11:23 PM ******/
ALTER TABLE [dbo].[PostCategorys] ADD  CONSTRAINT [unique_name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CommandInFunctions]  WITH CHECK ADD  CONSTRAINT [FK_CommandInFunctions_Commands] FOREIGN KEY([CommandId])
REFERENCES [dbo].[Commands] ([CommandId])
GO
ALTER TABLE [dbo].[CommandInFunctions] CHECK CONSTRAINT [FK_CommandInFunctions_Commands]
GO
ALTER TABLE [dbo].[CommandInFunctions]  WITH CHECK ADD  CONSTRAINT [FK_CommandInFunctions_Functions] FOREIGN KEY([FunctionId])
REFERENCES [dbo].[Functions] ([FunctionId])
GO
ALTER TABLE [dbo].[CommandInFunctions] CHECK CONSTRAINT [FK_CommandInFunctions_Functions]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Posts] FOREIGN KEY([PostId])
REFERENCES [dbo].[Posts] ([PostId])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Posts]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Commands] FOREIGN KEY([CommandId])
REFERENCES [dbo].[Commands] ([CommandId])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_Commands]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Functions] FOREIGN KEY([FunctionId])
REFERENCES [dbo].[Functions] ([FunctionId])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_Functions]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_GroupUsers] FOREIGN KEY([GroupId])
REFERENCES [dbo].[GroupUsers] ([GroupId])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_GroupUsers]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_PostCategorys] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[PostCategorys] ([CategoryId])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_PostCategorys]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_GroupUsers] FOREIGN KEY([GroupId])
REFERENCES [dbo].[GroupUsers] ([GroupId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_GroupUsers]
GO
