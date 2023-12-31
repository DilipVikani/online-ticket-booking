USE [master]
GO
/****** Object:  Database [ysddb]    Script Date: 09-04-2021 16:40:17 ******/
CREATE DATABASE [ysddb]
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[booking]    Script Date: 09-04-2021 16:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booking](
	[bookid] [int] IDENTITY(1,1) NOT NULL,
	[source] [nvarchar](max) NOT NULL,
	[destination] [nvarchar](max) NOT NULL,
	[journeydate] [nvarchar](max) NOT NULL,
	[seats] [nvarchar](max) NOT NULL,
	[total] [nvarchar](max) NOT NULL,
	[cardnm] [nvarchar](50) NOT NULL,
	[cardnum] [nvarchar](max) NOT NULL,
	[uid] [nvarchar](max) NOT NULL,
	[busid] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bookid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusRoute]    Script Date: 09-04-2021 16:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusRoute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BusTo] [varchar](50) NOT NULL,
	[BusFrom] [varchar](50) NOT NULL,
	[dep_time] [varchar](50) NOT NULL,
	[arr_time] [varchar](50) NOT NULL,
	[km] [varchar](50) NOT NULL,
	[rate] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contactus]    Script Date: 09-04-2021 16:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contactus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[mobile] [varchar](50) NOT NULL,
	[message] [varchar](300) NOT NULL,
	[noti] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flightbooking]    Script Date: 09-04-2021 16:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flightbooking](
	[bookid] [int] IDENTITY(1,1) NOT NULL,
	[source] [nvarchar](max) NOT NULL,
	[destination] [nvarchar](max) NOT NULL,
	[journeydate] [nvarchar](max) NOT NULL,
	[seats] [nvarchar](max) NOT NULL,
	[total] [nvarchar](max) NOT NULL,
	[cardnm] [nvarchar](50) NOT NULL,
	[cardnum] [nvarchar](max) NOT NULL,
	[uid] [nvarchar](max) NOT NULL,
	[flightid] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_flightbooking] PRIMARY KEY CLUSTERED 
(
	[bookid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlightRoute]    Script Date: 09-04-2021 16:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightRoute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FlightTo] [varchar](50) NOT NULL,
	[FlightFrom] [varchar](50) NOT NULL,
	[dep_time] [varchar](50) NOT NULL,
	[arr_time] [varchar](50) NOT NULL,
	[km] [varchar](50) NOT NULL,
	[rate] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FlightRoute] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotel]    Script Date: 09-04-2021 16:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[hotel_name] [varchar](50) NOT NULL,
	[state] [varchar](50) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[rate] [varchar](50) NOT NULL,
	[helpline_no] [varchar](50) NOT NULL,
	[image1] [varchar](50) NULL,
	[image2] [varchar](50) NULL,
	[image3] [varchar](50) NULL,
	[image4] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotelbooking]    Script Date: 09-04-2021 16:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotelbooking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[hotel_name] [varchar](50) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[rate] [varchar](50) NOT NULL,
	[cardnm] [varchar](50) NOT NULL,
	[cardnum] [varchar](50) NOT NULL,
	[uid] [varchar](50) NOT NULL,
	[chkin_date] [varchar](50) NOT NULL,
	[chkout_date] [varchar](50) NOT NULL,
	[hotel_id] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 09-04-2021 16:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](50) NOT NULL,
	[lname] [varchar](50) NOT NULL,
	[gender] [varchar](50) NOT NULL,
	[age] [varchar](50) NOT NULL,
	[dob] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[state] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[mobile] [varchar](50) NOT NULL,
	[aadhaar] [varchar](50) NOT NULL,
	[pass] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Id], [username], [password]) VALUES (1, N'siddhu', N'123')
INSERT [dbo].[Admin] ([Id], [username], [password]) VALUES (2, N'yash', N'123')
INSERT [dbo].[Admin] ([Id], [username], [password]) VALUES (3, N'dilip', N'123')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[booking] ON 

INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (1, N'rajkot', N'amreli', N'10-1-2020', N'4_5', N'1', N'yash', N'1246346464', N'1', N'1')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (2, N'1', N'1', N'3/26/2021 12:00:00 AM', N'2_4,3_4,4_4', N'441', N'yash', N'46546564645646', N'1', N'')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (3, N'1', N'1', N'3/24/2021 12:00:00 AM', N'4_3,5_3,6_3', N'441', N'yash', N'46546564645646', N'2', N'')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (4, N'1', N'1', N'3/24/2021 12:00:00 AM', N'5_2,7_3,8_4', N'441', N'yash', N'46546564645646', N'1', N'')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (5, N'1', N'1', N'3/24/2021 12:00:00 AM', N'5_2,7_3,8_4', N'441', N'yash', N'46546564645646', N'1', N'44')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (6, N'1', N'1', N'3/24/2021 12:00:00 AM', N'5_2,7_3,8_4', N'441', N'yash', N'46546564645646', N'1', N'44')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (7, N'1', N'1', N'4/9/2021 12:00:00 AM', N'4_4', N'147', N'yash', N'46546564645646', N'1', N'')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (8, N'1', N'1', N'3/19/2021 12:00:00 AM', N'4_3', N'147', N'tt', N'57654769578957', N'1', N'1')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (9, N'3', N'3', N'3/19/2021 12:00:00 AM', N'5_4', N'147', N'dilip', N'453435464654', N'1', N'3')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (10, N'3', N'3', N'3/19/2021 12:00:00 AM', N'5_4', N'147', N'dilip', N'453435464654', N'1', N'3')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (11, N'3', N'3', N'25-03-2021 00:00:00', N'4_3,5_3', N'294', N'yash', N'445646465465464', N'1', N'3')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (12, N'2', N'2', N'25-03-2021 00:00:00', N'3_3,4_3,5_3', N'441', N'yash', N'4544545654654444', N'1', N'2')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (13, N'Rajkot', N'Amreli', N'25-03-2021 00:00:00', N'3_3,4_3,7_3', N'441', N'ghhghgh', N'656566565464', N'1', N'1')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (14, N'Delhi', N'Mumbai', N'24-03-2021 00:00:00', N'1_3,2_3', N'294', N'ghhghgh', N'456645646464', N'1', N'2')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (15, N'Delhi', N'Mumbai', N'27-03-2021 00:00:00', N'3_3,4_3', N'2400', N'ghhghgh', N'8797886855', N'1', N'2')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (16, N'Delhi', N'Mumbai', N'24-03-2021 00:00:00', N'4_3,4_4', N'2400', N'yash', N'464646464646464', N'1', N'2')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (17, N'Rajkot', N'Amreli', N'26-03-2021 00:00:00', N'1_3,2_3', N'294', N'yash', N'4646445464646464', N'1', N'1')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (18, N'Rajkot', N'Amreli', N'26-03-2021 00:00:00', N'1_3,1_4', N'294', N'yash', N'46464565464564', N'1', N'1')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (19, N'Delhi', N'Mumbai', N'31-03-2021 00:00:00', N'8_1,9_2', N'2400', N'yash', N'1231456464', N'1', N'2')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (20, N'Babra', N'amreli', N'31-03-2021 00:00:00', N'6_1,6_2', N'108', N'yash', N'46466464', N'1', N'3')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (21, N'Rajkot', N'Amreli', N'23-04-2021 00:00:00', N'1_3,1_4', N'294', N'yash', N'46546464', N'1', N'1')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (22, N'Rajkot', N'Amreli', N'15-04-2021 00:00:00', N'1_3,1_4', N'294', N'yash', N'47697979797', N'1', N'1')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (23, N'Rajkot', N'Amreli', N'15-04-2021 00:00:00', N'3_2,4_2', N'294', N'yash', N'665479647787', N'2', N'1')
INSERT [dbo].[booking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [busid]) VALUES (24, N'Rajkot', N'Amreli', N'22-04-2021 00:00:00', N'1_3,1_4', N'294', N'hhh', N'4564564646464', N'1', N'1')
SET IDENTITY_INSERT [dbo].[booking] OFF
GO
SET IDENTITY_INSERT [dbo].[BusRoute] ON 

INSERT [dbo].[BusRoute] ([Id], [BusTo], [BusFrom], [dep_time], [arr_time], [km], [rate]) VALUES (1, N'Amreli', N'Rajkot', N'9:00', N'13:10', N'120', N'147')
INSERT [dbo].[BusRoute] ([Id], [BusTo], [BusFrom], [dep_time], [arr_time], [km], [rate]) VALUES (2, N'Mumbai', N'Delhi', N'9:00', N'21:00', N'750', N'1200')
INSERT [dbo].[BusRoute] ([Id], [BusTo], [BusFrom], [dep_time], [arr_time], [km], [rate]) VALUES (3, N'amreli', N'Babra', N'14:00', N'15:05', N'40', N'54')
SET IDENTITY_INSERT [dbo].[BusRoute] OFF
GO
SET IDENTITY_INSERT [dbo].[contactus] ON 

INSERT [dbo].[contactus] ([Id], [name], [email], [mobile], [message], [noti]) VALUES (1, N'YASH', N'YASH@GMAIL.COM', N'5446479798', N'GGSQKGSGQIGSGQ', N'Read')
SET IDENTITY_INSERT [dbo].[contactus] OFF
GO
SET IDENTITY_INSERT [dbo].[flightbooking] ON 

INSERT [dbo].[flightbooking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [flightid]) VALUES (1, N'Delhi', N'Rajkot', N'24-03-2021 00:00:00', N'2_3,2_4', N'6000', N'yash', N'654646464645646', N'1', N'1')
INSERT [dbo].[flightbooking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [flightid]) VALUES (2, N'Delhi', N'Rajkot', N'24-03-2021 00:00:00', N'2_3,2_4', N'6000', N'yash', N'654646464645646', N'1', N'1')
INSERT [dbo].[flightbooking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [flightid]) VALUES (3, N'Delhi', N'Rajkot', N'27-03-2021 00:00:00', N'3_3,4_3', N'6000', N'yash', N'45646465464', N'2', N'1')
INSERT [dbo].[flightbooking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [flightid]) VALUES (4, N'Delhi', N'Rajkot', N'27-03-2021 00:00:00', N'3_3,4_3', N'6000', N'yash', N'46465465465456', N'2', N'1')
INSERT [dbo].[flightbooking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [flightid]) VALUES (5, N'Delhi', N'Rajkot', N'27-03-2021 00:00:00', N'3_3,4_3', N'6000', N'yash', N'5464666666666666', N'2', N'1')
INSERT [dbo].[flightbooking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [flightid]) VALUES (6, N'Delhi', N'Rajkot', N'26-03-2021 00:00:00', N'3_3,4_3', N'6000', N'yash', N'4646456464', N'2', N'1')
INSERT [dbo].[flightbooking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [flightid]) VALUES (7, N'Delhi', N'Rajkot', N'31-03-2021 00:00:00', N'1_1,2_1', N'6000', N'yash', N'546464654654', N'4', N'1')
INSERT [dbo].[flightbooking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [flightid]) VALUES (8, N'Delhi', N'Rajkot', N'01-04-2021 00:00:00', N'10_3,10_4', N'6000', N'yash', N'5464565465', N'4', N'1')
INSERT [dbo].[flightbooking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [flightid]) VALUES (9, N'Delhi', N'Rajkot', N'30-03-2021 00:00:00', N'9_1,9_2', N'6000', N'ghhghgh', N'56464654654', N'2', N'1')
INSERT [dbo].[flightbooking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [flightid]) VALUES (10, N'Delhi', N'Rajkot', N'16-04-2021 00:00:00', N'1_1,2_1', N'6000', N'ghhghgh', N'7989789797', N'1', N'1')
INSERT [dbo].[flightbooking] ([bookid], [source], [destination], [journeydate], [seats], [total], [cardnm], [cardnum], [uid], [flightid]) VALUES (11, N'Delhi', N'Rajkot', N'21-04-2021 00:00:00', N'1_1,2_1', N'6000', N'ggg', N'4878778987987', N'2', N'1')
SET IDENTITY_INSERT [dbo].[flightbooking] OFF
GO
SET IDENTITY_INSERT [dbo].[FlightRoute] ON 

INSERT [dbo].[FlightRoute] ([Id], [FlightTo], [FlightFrom], [dep_time], [arr_time], [km], [rate]) VALUES (1, N'Rajkot', N'Delhi', N'5:00', N'8:00', N'850', N'3000')
SET IDENTITY_INSERT [dbo].[FlightRoute] OFF
GO
SET IDENTITY_INSERT [dbo].[hotel] ON 

INSERT [dbo].[hotel] ([Id], [hotel_name], [state], [city], [address], [rate], [helpline_no], [image1], [image2], [image3], [image4]) VALUES (1, N'Taj', N'Maharashtra', N'Mumbai', N'Central Mumbai', N'10000', N'4656776767', NULL, NULL, NULL, NULL)
INSERT [dbo].[hotel] ([Id], [hotel_name], [state], [city], [address], [rate], [helpline_no], [image1], [image2], [image3], [image4]) VALUES (2, N'Darshan', N'Gujarat', N'Amreli', N'Near Bus stand', N'800', N'22354152', N'Darshan01.jpg', N'Darshan02.jpg', N'Darshan03.png', N'Darshan04.jpg')
INSERT [dbo].[hotel] ([Id], [hotel_name], [state], [city], [address], [rate], [helpline_no], [image1], [image2], [image3], [image4]) VALUES (1002, N'Sayaji', N'Gujarat', N'Rajkot', N'Near Airport', N'2600', N'54643524644', N'Sayaji01.jpg', N'Sayaji02.jpg', N'Sayaji03.jpg', N'Sayaji04.jpg')
SET IDENTITY_INSERT [dbo].[hotel] OFF
GO
SET IDENTITY_INSERT [dbo].[hotelbooking] ON 

INSERT [dbo].[hotelbooking] ([Id], [hotel_name], [city], [rate], [cardnm], [cardnum], [uid], [chkin_date], [chkout_date], [hotel_id]) VALUES (1, N'Sayaji', N'Rajkot', N'2600', N'ghhghgh', N'456463464', N'1', N'16-04-2021', N'17-04-2021', N'1002')
INSERT [dbo].[hotelbooking] ([Id], [hotel_name], [city], [rate], [cardnm], [cardnum], [uid], [chkin_date], [chkout_date], [hotel_id]) VALUES (2, N'Sayaji', N'Rajkot', N'2600', N'yash', N'796748888888888888', N'2', N'30-04-2021', N'01-05-2021', N'1002')
INSERT [dbo].[hotelbooking] ([Id], [hotel_name], [city], [rate], [cardnm], [cardnum], [uid], [chkin_date], [chkout_date], [hotel_id]) VALUES (3, N'Darshan', N'Amreli', N'800', N'yash', N'78978979797', N'2', N'29-04-2021', N'30-04-2021', N'2')
SET IDENTITY_INSERT [dbo].[hotelbooking] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([Id], [fname], [lname], [gender], [age], [dob], [address], [city], [state], [email], [mobile], [aadhaar], [pass]) VALUES (1, N'siddhu', N'rasadiya', N'male', N'20', N'11/01/2000', N'galkotdi', N'babra', N'gujrat', N'siddhu@gmail.com', N'9595959525', N'54654646546', N'123')
INSERT [dbo].[users] ([Id], [fname], [lname], [gender], [age], [dob], [address], [city], [state], [email], [mobile], [aadhaar], [pass]) VALUES (2, N'yash', N'thakar', N'Male', N'20', N'09/11/1999', N'amreli', N'amreli', N'gujrat', N'yash@gmail.com', N'6353217432', N'987598759875', N'123')
INSERT [dbo].[users] ([Id], [fname], [lname], [gender], [age], [dob], [address], [city], [state], [email], [mobile], [aadhaar], [pass]) VALUES (4, N'dilip', N'vikani', N'Male', N'20', N'20/05/2001', N'kathma', N'amreli', N'gujarat', N'dilip@gmail.com', N'4654678875', N'789787778787', N'123')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
USE [master]
GO
ALTER DATABASE [ysddb] SET  READ_WRITE 
GO
