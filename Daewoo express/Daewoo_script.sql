USE [Daewoo]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 08/01/2015 22:27:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cities](
	[City] [int] IDENTITY(0,1) NOT NULL,
	[Name] [varchar](max) NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[City] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON
INSERT [dbo].[Cities] ([City], [Name]) VALUES (0, N'Karachi')
INSERT [dbo].[Cities] ([City], [Name]) VALUES (1, N'Peshawar')
INSERT [dbo].[Cities] ([City], [Name]) VALUES (2, N'Faislabad')
INSERT [dbo].[Cities] ([City], [Name]) VALUES (3, N'Hyderabad')
INSERT [dbo].[Cities] ([City], [Name]) VALUES (4, N'Sialkot')
INSERT [dbo].[Cities] ([City], [Name]) VALUES (5, N'Sukkur')
INSERT [dbo].[Cities] ([City], [Name]) VALUES (6, N'Lahore')
INSERT [dbo].[Cities] ([City], [Name]) VALUES (7, N'Rawalpindi')
INSERT [dbo].[Cities] ([City], [Name]) VALUES (8, N'Multan')
INSERT [dbo].[Cities] ([City], [Name]) VALUES (9, N'Bhawalpur')
INSERT [dbo].[Cities] ([City], [Name]) VALUES (10, N'Abbottabad')
INSERT [dbo].[Cities] ([City], [Name]) VALUES (11, N'Khanewal')
INSERT [dbo].[Cities] ([City], [Name]) VALUES (12, N'Mardan')
INSERT [dbo].[Cities] ([City], [Name]) VALUES (13, N'Gujranwala')
SET IDENTITY_INSERT [dbo].[Cities] OFF
/****** Object:  Table [dbo].[Routes]    Script Date: 08/01/2015 22:27:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Routes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[source] [nvarchar](50) NULL,
	[Destination] [nvarchar](50) NULL,
	[Route] [nvarchar](max) NULL,
	[Time] [nchar](10) NULL,
	[Ticket] [nchar](10) NULL,
	[No_of_cities] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Routes] ON
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (1, N'Karachi', N'Peshawar', N'-->Karachi-->Peshawar-Auto', N'26.31     ', N'4350      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (2, N'Karachi', N'Faislabad', N'-->Karachi-->Faislabad-Auto', N'20.41     ', N'3530      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (3, N'Karachi', N'Hyderabad', N'-->Karachi-->Hyderabad-Time', N'2         ', N'350       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (4, N'Karachi', N'Sialkot', N'-->Karachi-->Lahore-->Sialkot-Auto', N'24.21     ', N'3400      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (5, N'Karachi', N'Sukkur', N'-->Karachi-->Sukkur-Time', N'7.35      ', N'1480      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (6, N'Karachi', N'Lahore', N'-->Karachi-->Lahore-Ticket', N'21.5      ', N'3000      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (7, N'Karachi', N'Rawalpindi', N'-->Karachi-->Rawalpindi-Auto', N'24        ', N'4300      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (8, N'Karachi', N'Multan', N'-->Karachi-->Multan-Time', N'16        ', N'2800      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (9, N'Karachi', N'Bhawalpur', N'-->Karachi-->Faislabad-->Bhawalpur-Auto', N'26.56     ', N'5120      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (10, N'Karachi', N'Abbottabad', N'-->Karachi-->Peshawar-->Abbottabad-Auto', N'29.46     ', N'4890      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (11, N'Karachi', N'Khanewal', N'-->Karachi-->Lahore-->Khanewal-Ticket', N'26.15     ', N'3870      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (12, N'Karachi', N'Mardan', N'-->Karachi-->Lahore-->Mardan-Ticket', N'28.15     ', N'3980      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (13, N'Karachi', N'Gujranwala', N'-->Karachi-->Lahore-->Gujranwala-Ticket', N'23.35     ', N'3200      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (14, N'Peshawar', N'Karachi', N'-->Peshawar-->Karachi-Auto', N'26.31     ', N'4350      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (15, N'Peshawar', N'Faislabad', N'-->Peshawar-->Faislabad-Time', N'5.21      ', N'1350      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (16, N'Peshawar', N'Hyderabad', N'-->Peshawar-->Hyderabad-Time', N'24        ', N'4280      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (17, N'Peshawar', N'Sialkot', N'-->Peshawar-->Sialkot-Time', N'7.31      ', N'1290      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (18, N'Peshawar', N'Sukkur', N'-->Peshawar-->Sukkur-Time', N'18.45     ', N'3300      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (19, N'Peshawar', N'Lahore', N'-->Peshawar-->Lahore-Time', N'6.31      ', N'1000      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (20, N'Peshawar', N'Rawalpindi', N'-->Peshawar-->Rawalpindi-Time', N'2.31      ', N'380       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (21, N'Peshawar', N'Multan', N'-->Peshawar-->Multan-Auto', N'10.45     ', N'1690      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (22, N'Peshawar', N'Bhawalpur', N'-->Peshawar-->Bhawalpur-Ticket', N'11.55     ', N'2370      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (23, N'Peshawar', N'Abbottabad', N'-->Peshawar-->Abbottabad-Time', N'3.15      ', N'540       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (24, N'Peshawar', N'Khanewal', N'-->Peshawar-->Lahore-->Khanewal-Ticket', N'10.56     ', N'1870      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (25, N'Peshawar', N'Mardan', N'-->Peshawar-->Rawalpindi-->Mardan-Time', N'4.2       ', N'850       ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (26, N'Peshawar', N'Gujranwala', N'-->Peshawar-->Lahore-->Gujranwala-Time', N'8.16      ', N'1200      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (27, N'Faislabad', N'Karachi', N'-->Faislabad-->Karachi-Auto', N'20.41     ', N'3530      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (28, N'Faislabad', N'Peshawar', N'-->Faislabad-->Peshawar-Time', N'5.21      ', N'1350      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (29, N'Faislabad', N'Hyderabad', N'-->Faislabad-->Lahore-->Hyderabad-Time', N'20.46     ', N'3350      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (30, N'Faislabad', N'Sialkot', N'-->Faislabad-->Lahore-->Sialkot-Time', N'4.46      ', N'800       ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (31, N'Faislabad', N'Sukkur', N'-->Faislabad-->Lahore-->Sukkur-Time', N'15.1      ', N'3740      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (32, N'Faislabad', N'Lahore', N'-->Faislabad-->Lahore-Time', N'2.15      ', N'400       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (33, N'Faislabad', N'Rawalpindi', N'-->Faislabad-->Rawalpindi-Time', N'3.31      ', N'700       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (34, N'Faislabad', N'Multan', N'-->Faislabad-->Multan-Time', N'4.15      ', N'590       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (35, N'Faislabad', N'Bhawalpur', N'-->Faislabad-->Bhawalpur-Time', N'6.15      ', N'1590      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (36, N'Faislabad', N'Abbottabad', N'-->Faislabad-->Peshawar-->Abbottabad-Time', N'8.36      ', N'1890      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (37, N'Faislabad', N'Khanewal', N'-->Faislabad-->Lahore-->Khanewal-Time', N'6.4       ', N'1270      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (38, N'Faislabad', N'Mardan', N'-->Faislabad-->Mardan-Auto', N'7.31      ', N'1340      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (39, N'Faislabad', N'Gujranwala', N'-->Faislabad-->Lahore-->Gujranwala-Time', N'3.6       ', N'600       ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (40, N'Hyderabad', N'Karachi', N'-->Hyderabad-->Karachi-Ticket', N'2         ', N'350       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (41, N'Hyderabad', N'Peshawar', N'-->Hyderabad-->Peshawar-Time', N'24        ', N'4280      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (42, N'Hyderabad', N'Faislabad', N'-->Hyderabad-->Lahore-->Faislabad-Time', N'20.46     ', N'3350      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (43, N'Hyderabad', N'Sialkot', N'-->Hyderabad-->Lahore-->Sialkot-Time', N'21.2      ', N'3350      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (44, N'Hyderabad', N'Sukkur', N'-->Hyderabad-->Karachi-->Sukkur-Time', N'9.35      ', N'1830      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (45, N'Hyderabad', N'Lahore', N'-->Hyderabad-->Lahore-Time', N'18.31     ', N'2950      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (46, N'Hyderabad', N'Rawalpindi', N'-->Hyderabad-->Lahore-->Rawalpindi-Time', N'23.2      ', N'4110      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (47, N'Hyderabad', N'Multan', N'-->Hyderabad-->Karachi-->Multan-Time', N'18        ', N'3150      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (48, N'Hyderabad', N'Bhawalpur', N'-->Hyderabad-->Peshawar-->Bhawalpur-Auto', N'35.55     ', N'6650      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (49, N'Hyderabad', N'Abbottabad', N'-->Hyderabad-->Peshawar-->Abbottabad-Time', N'27.15     ', N'4820      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (50, N'Hyderabad', N'Khanewal', N'-->Hyderabad-->Lahore-->Khanewal-Time', N'22.56     ', N'3820      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (51, N'Hyderabad', N'Mardan', N'-->Hyderabad-->Lahore-->Mardan-Ticket', N'24.56     ', N'3930      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (52, N'Hyderabad', N'Gujranwala', N'-->Hyderabad-->Lahore-->Gujranwala-Time', N'20.16     ', N'3150      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (53, N'Sialkot', N'Karachi', N'-->Sialkot-->Multan-->Karachi-Auto', N'23.41     ', N'4220      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (54, N'Sialkot', N'Peshawar', N'-->Sialkot-->Peshawar-Time', N'7.31      ', N'1290      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (55, N'Sialkot', N'Faislabad', N'-->Sialkot-->Lahore-->Faislabad-Time', N'4.46      ', N'800       ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (56, N'Sialkot', N'Hyderabad', N'-->Sialkot-->Lahore-->Hyderabad-Time', N'21.2      ', N'3350      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (57, N'Sialkot', N'Sukkur', N'-->Sialkot-->Lahore-->Sukkur-Time', N'15.26     ', N'3740      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (58, N'Sialkot', N'Lahore', N'-->Sialkot-->Lahore-Time', N'2.31      ', N'400       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (59, N'Sialkot', N'Rawalpindi', N'-->Sialkot-->Lahore-->Rawalpindi-Time', N'7.2       ', N'1560      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (60, N'Sialkot', N'Multan', N'-->Sialkot-->Multan-Time', N'7.41      ', N'1420      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (61, N'Sialkot', N'Bhawalpur', N'-->Sialkot-->Lahore-->Faislabad-->Bhawalpur-Time', N'11.1      ', N'2390      ', 2)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (62, N'Sialkot', N'Abbottabad', N'-->Sialkot-->Peshawar-->Abbottabad-Time', N'10.46     ', N'1830      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (63, N'Sialkot', N'Khanewal', N'-->Sialkot-->Lahore-->Khanewal-Time', N'6.56      ', N'1270      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (64, N'Sialkot', N'Mardan', N'-->Sialkot-->Lahore-->Mardan-Auto', N'8.56      ', N'1380      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (65, N'Sialkot', N'Gujranwala', N'-->Sialkot-->Gujranwala-Time', N'1.31      ', N'170       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (66, N'Sukkur', N'Karachi', N'-->Sukkur-->Karachi-Ticket', N'7.35      ', N'1480      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (67, N'Sukkur', N'Peshawar', N'-->Sukkur-->Peshawar-Time', N'18.45     ', N'3300      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (68, N'Sukkur', N'Faislabad', N'-->Sukkur-->Lahore-->Faislabad-Time', N'15.1      ', N'3740      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (69, N'Sukkur', N'Hyderabad', N'-->Sukkur-->Karachi-->Hyderabad-Time', N'9.35      ', N'1830      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (70, N'Sukkur', N'Sialkot', N'-->Sukkur-->Lahore-->Sialkot-Time', N'15.26     ', N'3740      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (71, N'Sukkur', N'Lahore', N'-->Sukkur-->Lahore-Time', N'12.55     ', N'3340      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (72, N'Sukkur', N'Rawalpindi', N'-->Sukkur-->Lahore-->Rawalpindi-Time', N'17.26     ', N'4500      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (73, N'Sukkur', N'Multan', N'-->Sukkur-->Lahore-->Multan-Time', N'18.1      ', N'4190      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (74, N'Sukkur', N'Bhawalpur', N'-->Sukkur-->Peshawar-->Bhawalpur-Auto', N'30.4      ', N'5670      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (75, N'Sukkur', N'Abbottabad', N'-->Sukkur-->Peshawar-->Abbottabad-Time', N'21.6      ', N'3840      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (76, N'Sukkur', N'Khanewal', N'-->Sukkur-->Lahore-->Khanewal-Time', N'17.2      ', N'4210      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (77, N'Sukkur', N'Mardan', N'-->Sukkur-->Lahore-->Mardan-Auto', N'19.2      ', N'4320      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (78, N'Sukkur', N'Gujranwala', N'-->Sukkur-->Lahore-->Gujranwala-Time', N'14.4      ', N'3540      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (79, N'Lahore', N'Karachi', N'-->Lahore-->Karachi-Ticket', N'21.5      ', N'3000      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (80, N'Lahore', N'Peshawar', N'-->Lahore-->Peshawar-Time', N'6.31      ', N'1000      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (81, N'Lahore', N'Faislabad', N'-->Lahore-->Faislabad-Time', N'2.15      ', N'400       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (82, N'Lahore', N'Hyderabad', N'-->Lahore-->Hyderabad-Time', N'18.31     ', N'2950      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (83, N'Lahore', N'Sialkot', N'-->Lahore-->Sialkot-Time', N'2.31      ', N'400       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (84, N'Lahore', N'Sukkur', N'-->Lahore-->Sukkur-Time', N'12.55     ', N'3340      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (85, N'Lahore', N'Rawalpindi', N'-->Lahore-->Rawalpindi-Time', N'4.31      ', N'1160      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (86, N'Lahore', N'Multan', N'-->Lahore-->Multan-Time', N'5.15      ', N'850       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (87, N'Lahore', N'Bhawalpur', N'-->Lahore-->Faislabad-->Bhawalpur-Time', N'8.3       ', N'1990      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (88, N'Lahore', N'Abbottabad', N'-->Lahore-->Peshawar-->Abbottabad-Time', N'9.46      ', N'1540      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (89, N'Lahore', N'Khanewal', N'-->Lahore-->Khanewal-Time', N'4.25      ', N'870       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (90, N'Lahore', N'Mardan', N'-->Lahore-->Mardan-Ticket', N'6.25      ', N'980       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (91, N'Lahore', N'Gujranwala', N'-->Lahore-->Gujranwala-Time', N'1.45      ', N'200       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (92, N'Rawalpindi', N'Karachi', N'-->Rawalpindi-->Karachi-Auto', N'24        ', N'4300      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (93, N'Rawalpindi', N'Peshawar', N'-->Rawalpindi-->Peshawar-Time', N'2.31      ', N'380       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (94, N'Rawalpindi', N'Faislabad', N'-->Rawalpindi-->Faislabad-Time', N'3.31      ', N'700       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (95, N'Rawalpindi', N'Hyderabad', N'-->Rawalpindi-->Lahore-->Hyderabad-Time', N'23.2      ', N'4110      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (96, N'Rawalpindi', N'Sialkot', N'-->Rawalpindi-->Lahore-->Sialkot-Time', N'7.2       ', N'1560      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (97, N'Rawalpindi', N'Sukkur', N'-->Rawalpindi-->Lahore-->Sukkur-Time', N'17.26     ', N'4500      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (98, N'Rawalpindi', N'Lahore', N'-->Rawalpindi-->Lahore-Time', N'4.31      ', N'1160      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (99, N'Rawalpindi', N'Multan', N'-->Rawalpindi-->Multan-Auto', N'8         ', N'1400      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (100, N'Rawalpindi', N'Bhawalpur', N'-->Rawalpindi-->Faislabad-->Bhawalpur-Time', N'9.46      ', N'2290      ', 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (101, N'Rawalpindi', N'Abbottabad', N'-->Rawalpindi-->Peshawar-->Abbottabad-Time', N'5.46      ', N'920       ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (102, N'Rawalpindi', N'Khanewal', N'-->Rawalpindi-->Khanewal-Time', N'7.31      ', N'4900      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (103, N'Rawalpindi', N'Mardan', N'-->Rawalpindi-->Mardan-Time', N'1.31      ', N'470       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (104, N'Rawalpindi', N'Gujranwala', N'-->Rawalpindi-->Lahore-->Gujranwala-Time', N'6.16      ', N'1360      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (105, N'Multan', N'Karachi', N'-->Multan-->Karachi-Time', N'16        ', N'1400      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (106, N'Multan', N'Peshawar', N'-->Multan-->Peshawar-Auto', N'10.45     ', N'1690      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (107, N'Multan', N'Faislabad', N'-->Multan-->Faislabad-Time', N'4.15      ', N'590       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (108, N'Multan', N'Hyderabad', N'-->Multan-->Karachi-->Hyderabad-Time', N'18        ', N'3150      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (109, N'Multan', N'Sialkot', N'-->Multan-->Sialkot-Time', N'7.41      ', N'1420      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (110, N'Multan', N'Sukkur', N'-->Multan-->Lahore-->Sukkur-Time', N'18.1      ', N'4190      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (111, N'Multan', N'Lahore', N'-->Multan-->Lahore-Time', N'5.15      ', N'850       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (112, N'Multan', N'Rawalpindi', N'-->Multan-->Rawalpindi-Auto', N'8         ', N'1400      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (113, N'Multan', N'Bhawalpur', N'-->Multan-->Faislabad-->Bhawalpur-Time', N'10.3      ', N'2180      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (114, N'Multan', N'Abbottabad', N'-->Multan-->Peshawar-->Abbottabad-Auto', N'13.6      ', N'2230      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (115, N'Multan', N'Khanewal', N'-->Multan-->Lahore-->Khanewal-Time', N'9.4       ', N'1720      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (116, N'Multan', N'Mardan', N'-->Multan-->Rawalpindi-->Mardan-Auto', N'9.31      ', N'1870      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (117, N'Multan', N'Gujranwala', N'-->Multan-->Lahore-->Gujranwala-Time', N'6.6       ', N'1050      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (118, N'Bhawalpur', N'Karachi', N'-->Bhawalpur-->Faislabad-->Karachi-Auto', N'26.56     ', N'5120      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (119, N'Bhawalpur', N'Peshawar', N'-->Bhawalpur-->Peshawar-Ticket', N'11.55     ', N'2370      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (120, N'Bhawalpur', N'Faislabad', N'-->Bhawalpur-->Faislabad-Time', N'6.15      ', N'1590      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (121, N'Bhawalpur', N'Hyderabad', N'-->Bhawalpur-->Faislabad-->Lahore-->Hyderabad-Time', N'27.1      ', N'4940      ', 2)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (122, N'Bhawalpur', N'Sialkot', N'-->Bhawalpur-->Faislabad-->Lahore-->Sialkot-Time', N'11.1      ', N'2390      ', 2)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (123, N'Bhawalpur', N'Sukkur', N'-->Bhawalpur-->Faislabad-->Lahore-->Sukkur-Time', N'21.25     ', N'5330      ', 2)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (124, N'Bhawalpur', N'Lahore', N'-->Bhawalpur-->Faislabad-->Lahore-Time', N'8.3       ', N'1990      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (125, N'Bhawalpur', N'Rawalpindi', N'-->Bhawalpur-->Faislabad-->Rawalpindi-Time', N'9.46      ', N'2290      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (126, N'Bhawalpur', N'Multan', N'-->Bhawalpur-->Faislabad-->Multan-Time', N'10.3      ', N'2180      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (127, N'Bhawalpur', N'Abbottabad', N'-->Bhawalpur-->Peshawar-->Abbottabad-Ticket', N'15.1      ', N'2910      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (128, N'Bhawalpur', N'Khanewal', N'-->Bhawalpur-->Faislabad-->Lahore-->Khanewal-Time', N'12.55     ', N'2860      ', 2)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (129, N'Bhawalpur', N'Mardan', N'-->Bhawalpur-->Faislabad-->Mardan-Auto', N'13.46     ', N'2930      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (130, N'Bhawalpur', N'Gujranwala', N'-->Bhawalpur-->Faislabad-->Lahore-->Gujranwala-Time', N'10.15     ', N'2190      ', 2)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (131, N'Abbottabad', N'Karachi', N'-->Abbottabad-->Peshawar-->Karachi-Auto', N'29.46     ', N'4890      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (132, N'Abbottabad', N'Peshawar', N'-->Abbottabad-->Peshawar-Time', N'3.15      ', N'540       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (133, N'Abbottabad', N'Faislabad', N'-->Abbottabad-->Peshawar-->Faislabad-Time', N'8.36      ', N'1890      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (134, N'Abbottabad', N'Hyderabad', N'-->Abbottabad-->Peshawar-->Hyderabad-Time', N'27.15     ', N'4820      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (135, N'Abbottabad', N'Sialkot', N'-->Abbottabad-->Peshawar-->Sialkot-Time', N'10.46     ', N'1830      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (136, N'Abbottabad', N'Sukkur', N'-->Abbottabad-->Peshawar-->Sukkur-Time', N'21.6      ', N'3840      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (137, N'Abbottabad', N'Lahore', N'-->Abbottabad-->Peshawar-->Lahore-Time', N'9.46      ', N'1540      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (138, N'Abbottabad', N'Rawalpindi', N'-->Abbottabad-->Peshawar-->Rawalpindi-Time', N'5.46      ', N'920       ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (139, N'Abbottabad', N'Multan', N'-->Abbottabad-->Peshawar-->Multan-Auto', N'13.6      ', N'2230      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (140, N'Abbottabad', N'Bhawalpur', N'-->Abbottabad-->Peshawar-->Bhawalpur-Ticket', N'15.1      ', N'2910      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (141, N'Abbottabad', N'Khanewal', N'-->Abbottabad-->Peshawar-->Lahore-->Khanewal-Ticket', N'14.11     ', N'2410      ', 2)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (142, N'Abbottabad', N'Mardan', N'-->Abbottabad-->Peshawar-->Rawalpindi-->Mardan-Time', N'7.17      ', N'1390      ', 2)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (143, N'Abbottabad', N'Gujranwala', N'-->Abbottabad-->Peshawar-->Lahore-->Gujranwala-Time', N'11.31     ', N'1740      ', 2)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (144, N'Khanewal', N'Karachi', N'-->Khanewal-->Lahore-->Karachi-Ticket', N'26.15     ', N'3870      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (145, N'Khanewal', N'Peshawar', N'-->Khanewal-->Lahore-->Peshawar-Ticket', N'10.56     ', N'1870      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (146, N'Khanewal', N'Faislabad', N'-->Khanewal-->Lahore-->Faislabad-Time', N'6.4       ', N'1270      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (147, N'Khanewal', N'Hyderabad', N'-->Khanewal-->Lahore-->Hyderabad-Time', N'22.56     ', N'3820      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (148, N'Khanewal', N'Sialkot', N'-->Khanewal-->Lahore-->Sialkot-Time', N'6.56      ', N'1270      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (149, N'Khanewal', N'Sukkur', N'-->Khanewal-->Lahore-->Sukkur-Time', N'17.2      ', N'4210      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (150, N'Khanewal', N'Lahore', N'-->Khanewal-->Lahore-Time', N'4.25      ', N'870       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (151, N'Khanewal', N'Rawalpindi', N'-->Khanewal-->Rawalpindi-Time', N'7.31      ', N'4900      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (152, N'Khanewal', N'Multan', N'-->Khanewal-->Lahore-->Multan-Time', N'9.4       ', N'1720      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (153, N'Khanewal', N'Bhawalpur', N'-->Khanewal-->Lahore-->Faislabad-->Bhawalpur-Time', N'12.55     ', N'2860      ', 2)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (154, N'Khanewal', N'Abbottabad', N'-->Khanewal-->Lahore-->Peshawar-->Abbottabad-Ticket', N'14.11     ', N'2410      ', 2)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (155, N'Khanewal', N'Mardan', N'-->Khanewal-->Lahore-->Mardan-Ticket', N'10.5      ', N'1850      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (156, N'Khanewal', N'Gujranwala', N'-->Khanewal-->Lahore-->Gujranwala-Time', N'6.1       ', N'1070      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (157, N'Mardan', N'Karachi', N'-->Mardan-->Rawalpindi-->Karachi-Time', N'25.31     ', N'5370      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (158, N'Mardan', N'Peshawar', N'-->Mardan-->Rawalpindi-->Peshawar-Time', N'4.2       ', N'850       ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (159, N'Mardan', N'Faislabad', N'-->Mardan-->Faislabad-Auto', N'7.31      ', N'1340      ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (160, N'Mardan', N'Hyderabad', N'-->Mardan-->Lahore-->Hyderabad-Ticket', N'24.56     ', N'3930      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (161, N'Mardan', N'Sialkot', N'-->Mardan-->Lahore-->Sialkot-Auto', N'8.56      ', N'1380      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (162, N'Mardan', N'Sukkur', N'-->Mardan-->Lahore-->Sukkur-Auto', N'19.2      ', N'4320      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (163, N'Mardan', N'Lahore', N'-->Mardan-->Lahore-Ticket', N'6.25      ', N'980       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (164, N'Mardan', N'Rawalpindi', N'-->Mardan-->Rawalpindi-Time', N'1.31      ', N'470       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (165, N'Mardan', N'Multan', N'-->Mardan-->Rawalpindi-->Multan-Time', N'9.31      ', N'1870      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (166, N'Mardan', N'Bhawalpur', N'-->Mardan-->Faislabad-->Bhawalpur-Auto', N'13.46     ', N'2930      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (167, N'Mardan', N'Abbottabad', N'-->Mardan-->Rawalpindi-->Peshawar-->Abbottabad-Time', N'7.35      ', N'1390      ', 2)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (168, N'Mardan', N'Khanewal', N'-->Mardan-->Lahore-->Khanewal-Ticket', N'10.5      ', N'1850      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (169, N'Mardan', N'Gujranwala', N'-->Mardan-->Lahore-->Gujranwala-Ticket', N'8.1       ', N'1180      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (170, N'Gujranwala', N'Karachi', N'-->Gujranwala-->Lahore-->Karachi-Ticket', N'23.35     ', N'3200      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (171, N'Gujranwala', N'Peshawar', N'-->Gujranwala-->Lahore-->Peshawar-Time', N'8.16      ', N'1200      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (172, N'Gujranwala', N'Faislabad', N'-->Gujranwala-->Lahore-->Faislabad-Time', N'3.6       ', N'600       ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (173, N'Gujranwala', N'Hyderabad', N'-->Gujranwala-->Lahore-->Hyderabad-Time', N'20.16     ', N'3150      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (174, N'Gujranwala', N'Sialkot', N'-->Gujranwala-->Sialkot-Time', N'1.31      ', N'170       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (175, N'Gujranwala', N'Sukkur', N'-->Gujranwala-->Lahore-->Sukkur-Time', N'14.4      ', N'3540      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (176, N'Gujranwala', N'Lahore', N'-->Gujranwala-->Lahore-Time', N'1.45      ', N'200       ', 0)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (177, N'Gujranwala', N'Rawalpindi', N'-->Gujranwala-->Lahore-->Rawalpindi-Time', N'6.16      ', N'1360      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (178, N'Gujranwala', N'Multan', N'-->Gujranwala-->Lahore-->Multan-Time', N'6.6       ', N'1050      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (179, N'Gujranwala', N'Bhawalpur', N'-->Gujranwala-->Lahore-->Faislabad-->Bhawalpur-Time', N'10.15     ', N'2190      ', 2)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (180, N'Gujranwala', N'Abbottabad', N'-->Gujranwala-->Lahore-->Peshawar-->Abbottabad-Time', N'11.31     ', N'1740      ', 2)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (181, N'Gujranwala', N'Khanewal', N'-->Gujranwala-->Lahore-->Khanewal-Time', N'6.1       ', N'1070      ', 1)
INSERT [dbo].[Routes] ([Id], [source], [Destination], [Route], [Time], [Ticket], [No_of_cities]) VALUES (182, N'Gujranwala', N'Mardan', N'-->Gujranwala-->Lahore-->Mardan-Ticket', N'8.1       ', N'1180      ', 1)
SET IDENTITY_INSERT [dbo].[Routes] OFF
/****** Object:  StoredProcedure [dbo].[SP_Routes]    Script Date: 08/01/2015 22:27:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Routes]
	@source varchar (max) = null, 
	@Destination varchar (max) = null,
	@Route varchar (max) = null,
	@Time float = null,
	@Ticket int = null,
	@No_of_cities int = null,
@Mode varchar (50)
As

IF (@Mode='Insert')
Begin
Insert into Routes
(

Source ,
Destination ,
Route,
Time,
Ticket,
No_of_cities
 )
Values
(

@Source ,
@Destination ,
@Route,
@Time,
@Ticket,
@No_of_cities
 )
End
if(@Mode='Trunc')
begin 
truncate table routes
end
GO
/****** Object:  Table [dbo].[Time1]    Script Date: 08/01/2015 22:27:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time1](
	[Source_Desitnation_ID] [int] IDENTITY(1,1) NOT NULL,
	[Source] [int] NULL,
	[Destination] [int] NULL,
	[Time1] [float] NULL,
 CONSTRAINT [PK_Time1] PRIMARY KEY CLUSTERED 
(
	[Source_Desitnation_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Time1] ON
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (1, 6, 8, 5.15)
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (2, 6, 5, 12.55)
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (3, 6, 11, 4.25)
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (4, 6, 7, 4.31)
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (5, 6, 12, 6.25)
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (6, 6, 1, 6.31)
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (7, 6, 13, 1.45)
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (8, 6, 3, 18.31)
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (9, 2, 6, 2.15)
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (10, 2, 8, 4.15)
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (11, 2, 9, 6.15)
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (12, 2, 0, 20.41)
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (13, 2, 7, 3.31)
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (14, 2, 1, 5.21)
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (15, 4, 6, 2.31)
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (16, 4, 1, 7.31)
INSERT [dbo].[Time1] ([Source_Desitnation_ID], [Source], [Destination], [Time1]) VALUES (17, 4, 13, 1.15)
SET IDENTITY_INSERT [dbo].[Time1] OFF
/****** Object:  Table [dbo].[Time]    Script Date: 08/01/2015 22:27:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time](
	[Source_Desitnation_ID] [int] IDENTITY(1,1) NOT NULL,
	[Source] [int] NULL,
	[Destination] [int] NULL,
	[Time] [float] NULL,
 CONSTRAINT [PK_Time] PRIMARY KEY CLUSTERED 
(
	[Source_Desitnation_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Time] ON
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (1, 0, 6, 21.5)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (2, 0, 1, 26.31)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (3, 0, 8, 16)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (4, 0, 5, 7.35)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (5, 0, 3, 2)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (6, 0, 7, 24)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (7, 1, 8, 10.45)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (8, 1, 5, 18.45)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (9, 1, 9, 11.55)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (10, 1, 3, 24)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (11, 1, 2, 5.21)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (12, 1, 10, 3.15)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (13, 6, 8, 5.15)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (14, 6, 5, 12.55)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (15, 6, 11, 4.25)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (16, 6, 7, 4.31)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (17, 6, 12, 6.25)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (18, 6, 0, 21.5)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (19, 6, 1, 6.31)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (20, 6, 13, 1.45)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (21, 6, 3, 18.31)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (22, 2, 6, 2.15)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (23, 2, 8, 4.15)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (24, 2, 9, 6.15)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (25, 2, 0, 20.41)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (26, 2, 7, 3.31)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (27, 2, 1, 5.21)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (28, 2, 12, 7.31)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (29, 4, 6, 2.31)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (30, 4, 8, 7.41)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (31, 4, 1, 7.31)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (32, 4, 13, 1.31)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (33, 7, 11, 7.31)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (34, 7, 8, 8)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (35, 7, 12, 1.31)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (36, 7, 1, 2.31)
INSERT [dbo].[Time] ([Source_Desitnation_ID], [Source], [Destination], [Time]) VALUES (37, 7, 2, 3.31)
SET IDENTITY_INSERT [dbo].[Time] OFF
/****** Object:  Table [dbo].[Ticket]    Script Date: 08/01/2015 22:27:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[Source_Desitnation_ID] [int] IDENTITY(1,1) NOT NULL,
	[Source] [int] NULL,
	[Destination] [int] NULL,
	[Ticket] [int] NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[Source_Desitnation_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ticket] ON
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (1, 0, 6, 3000)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (2, 0, 1, 4350)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (3, 0, 8, 2800)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (4, 0, 5, 1480)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (5, 0, 3, 350)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (6, 0, 7, 4300)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (7, 1, 8, 1690)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (8, 1, 5, 3330)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (9, 1, 9, 2370)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (10, 1, 3, 4230)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (11, 1, 2, 1350)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (12, 1, 10, 540)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (13, 6, 8, 850)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (14, 6, 5, 2340)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (15, 6, 11, 870)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (16, 6, 7, 1160)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (17, 6, 12, 980)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (18, 6, 0, 3000)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (19, 6, 1, 1000)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (20, 6, 13, 200)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (21, 6, 3, 2960)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (22, 2, 6, 400)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (23, 2, 8, 590)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (24, 2, 9, 1590)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (25, 2, 0, 3530)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (26, 2, 7, 700)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (27, 2, 1, 1350)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (28, 2, 12, 1340)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (29, 4, 6, 400)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (30, 4, 8, 1420)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (31, 4, 1, 1290)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (32, 4, 13, 170)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (33, 7, 11, 4900)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (34, 7, 8, 1400)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (35, 7, 12, 470)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (36, 7, 1, 380)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (37, 7, 2, 700)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (38, 3, 0, 350)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (39, 3, 1, 4280)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (40, 3, 6, 2950)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (41, 5, 0, 1480)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (42, 5, 1, 3300)
INSERT [dbo].[Ticket] ([Source_Desitnation_ID], [Source], [Destination], [Ticket]) VALUES (43, 5, 6, 3340)
SET IDENTITY_INSERT [dbo].[Ticket] OFF
/****** Object:  StoredProcedure [dbo].[SP_Time]    Script Date: 08/01/2015 22:27:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Time]


@Source_Desitnation_ID int = null,
@Source int = null,
@Destination int = null,
@Time float = null,


@Mode varchar (50)
As

 IF (@Mode='Insert')
Begin
If Not Exists (Select Source_Desitnation_ID From Time )
Set @Source_Desitnation_ID = 1
Else
Set @Source_Desitnation_ID = (Select MAX (Source_Desitnation_ID +1)From Time )
Insert into Time
(

Source ,
Destination ,
Time 

 )
Values
(

@Source ,
@Destination ,
@Time 
 )
End

 IF (@Mode='Update')
Begin
Update Time Set


Source = @Source,
Destination = @Destination,
Time = @Time

Where Source_Desitnation_ID = @Source_Desitnation_ID
End
IF (@Mode='Time')
begin
select * from Time
end
IF (@Mode='count')
Begin
SELECT COUNT(Time) from Time
End


 IF (@Mode='ViewById')
Begin
Select 

Source_Desitnation_ID,
Source,
Destination,
Time

From Time

Where Source_Desitnation_ID = @Source_Desitnation_ID
End

IF (@Mode='GetId')
Begin
SELECT Max (Source_Desitnation_ID) From Time
End

IF (@Mode='PaneGrid')
BEGIN
SELECT Source_Desitnation_ID From Time
End
GO
/****** Object:  StoredProcedure [dbo].[SP_Ticket]    Script Date: 08/01/2015 22:27:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Ticket]


@Source_Desitnation_ID int = null,
@Source int = null,
@Destination int = null,
@Ticket int = null,

@Mode varchar (50)
As

IF (@Mode='count')
Begin
SELECT COUNT(Ticket) from Ticket
End


IF (@Mode='Ticket')
begin
select * from Ticket
end

 IF (@Mode='Insert')
Begin
If Not Exists (Select Source_Desitnation_ID From Ticket )
Set @Source_Desitnation_ID = 1
Else
Set @Source_Desitnation_ID = (Select MAX (Source_Desitnation_ID +1)From Ticket )
Insert into Ticket
(

Source ,
Destination ,
Ticket
 )
Values
(

@Source ,
@Destination ,
@Ticket
 )
End

 IF (@Mode='Update')
Begin
Update Ticket Set


Source = @Source,
Destination = @Destination,
Ticket = @Ticket

Where Source_Desitnation_ID = @Source_Desitnation_ID
End

 IF (@Mode='ViewById')
Begin
Select 

Source_Desitnation_ID,
Source,
Destination,
Ticket

From Ticket

Where Source_Desitnation_ID = @Source_Desitnation_ID
End

IF (@Mode='GetId')
Begin
SELECT Max (Source_Desitnation_ID) From Ticket
End

IF (@Mode='PaneGrid')
BEGIN
SELECT Source_Desitnation_ID From Ticket
End
GO
/****** Object:  StoredProcedure [dbo].[SP_Cities]    Script Date: 08/01/2015 22:27:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Cities]


@City int = null,
@Name varchar (max) = null,
@Source int = null,
@Destination int = null,
@Mode varchar (50)
As


 IF (@Mode='count')
Begin
SELECT COUNT(city) from Cities
End
 IF (@Mode='cities')
Begin
SELECT  * FROM [Daewoo].[dbo].[Cities]
End

 IF (@Mode='Source_Data')
Begin
SELECT  * FROM [Daewoo].[dbo].[Cities]
End



 IF (@Mode='Destination_Data')
Begin
SELECT     Cities.Name, Cities.City
FROM Cities
except
SELECT     Cities.Name, Cities.City
FROM      Cities,Time 
WHERE Cities.City=Time.Destination and (Time.Source=@Source)
End


-- IF (@Mode='Destination_Data')
--Begin
--SELECT     Cities.Name, Cities.City
--FROM Cities
--except
--SELECT     Cities.Name, Cities.City
--FROM      Cities,Ticket 
--WHERE Cities.City=ticket.Destination and (Ticket.Source=@Source)
--End


 IF (@Mode='Insert')
Begin
If Not Exists (Select City From Cities )
Set @City = 1
Else
Set @City = (Select MAX (City +1)From Cities )
Insert into Cities
(
City ,
Name
 )
Values
(
@City ,
@Name
 )
End

 IF (@Mode='Update')
Begin
Update Cities Set


Name = @Name

Where City = @City
End

 IF (@Mode='ViewById')
Begin
Select 

City,
Name

From Cities

Where City = @City
End

IF (@Mode='GetId')
Begin
SELECT Max (City) From Cities
End

IF (@Mode='PaneGrid')
BEGIN
SELECT City From Cities
End
GO
/****** Object:  StoredProcedure [dbo].[Daewoo]    Script Date: 08/01/2015 22:27:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Daewoo]

@Mode varchar (50)
as

IF (@Mode='Ticket')
begin
select * from Ticket
end
GO
/****** Object:  ForeignKey [FK_Time1_Cities]    Script Date: 08/01/2015 22:27:37 ******/
ALTER TABLE [dbo].[Time1]  WITH CHECK ADD  CONSTRAINT [FK_Time1_Cities] FOREIGN KEY([Source])
REFERENCES [dbo].[Cities] ([City])
GO
ALTER TABLE [dbo].[Time1] CHECK CONSTRAINT [FK_Time1_Cities]
GO
/****** Object:  ForeignKey [FK_Time1_Cities1]    Script Date: 08/01/2015 22:27:37 ******/
ALTER TABLE [dbo].[Time1]  WITH CHECK ADD  CONSTRAINT [FK_Time1_Cities1] FOREIGN KEY([Destination])
REFERENCES [dbo].[Cities] ([City])
GO
ALTER TABLE [dbo].[Time1] CHECK CONSTRAINT [FK_Time1_Cities1]
GO
/****** Object:  ForeignKey [FK_Time_Cities]    Script Date: 08/01/2015 22:27:37 ******/
ALTER TABLE [dbo].[Time]  WITH CHECK ADD  CONSTRAINT [FK_Time_Cities] FOREIGN KEY([Source])
REFERENCES [dbo].[Cities] ([City])
GO
ALTER TABLE [dbo].[Time] CHECK CONSTRAINT [FK_Time_Cities]
GO
/****** Object:  ForeignKey [FK_Time_Cities1]    Script Date: 08/01/2015 22:27:37 ******/
ALTER TABLE [dbo].[Time]  WITH CHECK ADD  CONSTRAINT [FK_Time_Cities1] FOREIGN KEY([Destination])
REFERENCES [dbo].[Cities] ([City])
GO
ALTER TABLE [dbo].[Time] CHECK CONSTRAINT [FK_Time_Cities1]
GO
/****** Object:  ForeignKey [FK_Ticket_Cities]    Script Date: 08/01/2015 22:27:37 ******/
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Cities] FOREIGN KEY([Source])
REFERENCES [dbo].[Cities] ([City])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Cities]
GO
/****** Object:  ForeignKey [FK_Ticket_Cities1]    Script Date: 08/01/2015 22:27:37 ******/
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Cities1] FOREIGN KEY([Destination])
REFERENCES [dbo].[Cities] ([City])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Cities1]
GO
