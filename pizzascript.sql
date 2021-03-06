USE [master]
GO
/****** Object:  Database [Pizza]    Script Date: 2/22/2016 3:05:31 PM ******/
CREATE DATABASE [Pizza]

USE [Pizza]
GO
/****** Object:  Table [dbo].[CustomerOrder]    Script Date: 2/22/2016 3:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerOrder](
	[OrderKey] [nvarchar](50) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[OrderTime] [time](7) NOT NULL,
	[CustomerPhoneKey] [numeric](10, 0) NOT NULL,
	[EmployeeKey] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CustomerOrder] PRIMARY KEY CLUSTERED 
(
	[OrderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2/22/2016 3:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerPhoneKey] [numeric](10, 0) NOT NULL,
	[CustomerLastName] [nvarchar](50) NULL,
	[CustomerFirstName] [nvarchar](50) NOT NULL,
	[CustomerAddress1] [nvarchar](250) NOT NULL,
	[CustomerAddress2] [nvarchar](250) NULL,
	[CustomerCity] [nvarchar](50) NULL,
	[CustomerState] [nvarchar](50) NULL,
	[CustomerZip] [numeric](5, 0) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerPhoneKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2/22/2016 3:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeKey] [nvarchar](50) NOT NULL,
	[EmployeeLastName] [nvarchar](50) NOT NULL,
	[EmployeeFirstName] [nvarchar](50) NOT NULL,
	[EmployeeHireDate] [date] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 2/22/2016 3:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailKey] [nvarchar](50) NOT NULL,
	[OrderKey] [nvarchar](50) NOT NULL,
	[ProductKey] [nvarchar](50) NOT NULL,
	[OrderDetailQuantity] [numeric](10, 0) NOT NULL,
	[OrderDetailPriceChanged] [decimal](6, 2) NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetailKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/22/2016 3:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductKey] [nvarchar](50) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductUniteSize] [nvarchar](50) NOT NULL,
	[ProductUnitePrice] [decimal](6, 2) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CustomerOrder] ([OrderKey], [OrderDate], [OrderTime], [CustomerPhoneKey], [EmployeeKey]) VALUES (N'1000', CAST(N'2014-10-08' AS Date), CAST(N'14:15:00' AS Time), CAST(2065552963 AS Numeric(10, 0)), N'cmanning')
INSERT [dbo].[CustomerOrder] ([OrderKey], [OrderDate], [OrderTime], [CustomerPhoneKey], [EmployeeKey]) VALUES (N'1001', CAST(N'2014-10-08' AS Date), CAST(N'14:25:00' AS Time), CAST(2065556623 AS Numeric(10, 0)), N'cmanning')
INSERT [dbo].[CustomerOrder] ([OrderKey], [OrderDate], [OrderTime], [CustomerPhoneKey], [EmployeeKey]) VALUES (N'1002', CAST(N'2014-10-08' AS Date), CAST(N'14:30:00' AS Time), CAST(2065552963 AS Numeric(10, 0)), N'cmanning')
INSERT [dbo].[CustomerOrder] ([OrderKey], [OrderDate], [OrderTime], [CustomerPhoneKey], [EmployeeKey]) VALUES (N'1003', CAST(N'2014-10-08' AS Date), CAST(N'15:15:00' AS Time), CAST(2065552123 AS Numeric(10, 0)), N'

skristoph')
INSERT [dbo].[CustomerOrder] ([OrderKey], [OrderDate], [OrderTime], [CustomerPhoneKey], [EmployeeKey]) VALUES (N'1004', CAST(N'2014-10-10' AS Date), CAST(N'11:15:00' AS Time), CAST(2065552217 AS Numeric(10, 0)), N'btaylor

')
INSERT [dbo].[CustomerOrder] ([OrderKey], [OrderDate], [OrderTime], [CustomerPhoneKey], [EmployeeKey]) VALUES (N'1005', CAST(N'2014-10-10' AS Date), CAST(N'12:02:00' AS Time), CAST(2065556623 AS Numeric(10, 0)), N'btaylor

')
INSERT [dbo].[Customers] ([CustomerPhoneKey], [CustomerLastName], [CustomerFirstName], [CustomerAddress1], [CustomerAddress2], [CustomerCity], [CustomerState], [CustomerZip]) VALUES (CAST(2065552123 AS Numeric(10, 0)), N'Lamont', N'L', N'161 South Western Ave', NULL, NULL, NULL, CAST(98001 AS Numeric(5, 0)))
INSERT [dbo].[Customers] ([CustomerPhoneKey], [CustomerLastName], [CustomerFirstName], [CustomerAddress1], [CustomerAddress2], [CustomerCity], [CustomerState], [CustomerZip]) VALUES (CAST(2065552217 AS Numeric(10, 0)), N'Wong', N'W', N'2832', N'2832 Washington Ave', N'Seattle', N'WA', CAST(98002 AS Numeric(5, 0)))
INSERT [dbo].[Customers] ([CustomerPhoneKey], [CustomerLastName], [CustomerFirstName], [CustomerAddress1], [CustomerAddress2], [CustomerCity], [CustomerState], [CustomerZip]) VALUES (CAST(2065552963 AS Numeric(10, 0)), N'Johnston', N'Ston', N'1215 Aerrace Avenue', N'Apt. 304', N'SEATTLE', N'WA', CAST(98002 AS Numeric(5, 0)))
INSERT [dbo].[Customers] ([CustomerPhoneKey], [CustomerLastName], [CustomerFirstName], [CustomerAddress1], [CustomerAddress2], [CustomerCity], [CustomerState], [CustomerZip]) VALUES (CAST(2065553213 AS Numeric(10, 0)), N'Anderson', N'A', N'apt10', N'222 Southern Street ', NULL, NULL, CAST(98001 AS Numeric(5, 0)))
INSERT [dbo].[Customers] ([CustomerPhoneKey], [CustomerLastName], [CustomerFirstName], [CustomerAddress1], [CustomerAddress2], [CustomerCity], [CustomerState], [CustomerZip]) VALUES (CAST(2065553252 AS Numeric(10, 0)), N'Lewis', N'L', N'520', N'520 East Lake Way', N'SEATTLE', N'WA', CAST(98002 AS Numeric(5, 0)))
INSERT [dbo].[Customers] ([CustomerPhoneKey], [CustomerLastName], [CustomerFirstName], [CustomerAddress1], [CustomerAddress2], [CustomerCity], [CustomerState], [CustomerZip]) VALUES (CAST(2065556623 AS Numeric(10, 0)), N'Jimenez', N'J', N'Apt 13 B', N'1200 Norton Way', NULL, NULL, CAST(98003 AS Numeric(5, 0)))
INSERT [dbo].[Employee] ([EmployeeKey], [EmployeeLastName], [EmployeeFirstName], [EmployeeHireDate]) VALUES (N'

skristoph', N'Kristopherson', N'Stephen', CAST(N'2014-06-02' AS Date))
INSERT [dbo].[Employee] ([EmployeeKey], [EmployeeLastName], [EmployeeFirstName], [EmployeeHireDate]) VALUES (N'btaylor

', N'Taylor

', N'

Bob

', CAST(N'2010-04-16' AS Date))
INSERT [dbo].[Employee] ([EmployeeKey], [EmployeeLastName], [EmployeeFirstName], [EmployeeHireDate]) VALUES (N'cmanning', N'Manning', N'Carol', CAST(N'2012-03-12' AS Date))
INSERT [dbo].[OrderDetail] ([OrderDetailKey], [OrderKey], [ProductKey], [OrderDetailQuantity], [OrderDetailPriceChanged]) VALUES (N'1', N'1000', N'soda', CAST(2 AS Numeric(10, 0)), CAST(7.25 AS Decimal(6, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailKey], [OrderKey], [ProductKey], [OrderDetailQuantity], [OrderDetailPriceChanged]) VALUES (N'2', N'1000', N'brdstks', CAST(1 AS Numeric(10, 0)), CAST(2.50 AS Decimal(6, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailKey], [OrderKey], [ProductKey], [OrderDetailQuantity], [OrderDetailPriceChanged]) VALUES (N'3', N'1000', N'specialM', CAST(1 AS Numeric(10, 0)), CAST(7.35 AS Decimal(6, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailKey], [OrderKey], [ProductKey], [OrderDetailQuantity], [OrderDetailPriceChanged]) VALUES (N'4', N'1001', N'specialL', CAST(1 AS Numeric(10, 0)), CAST(15.00 AS Decimal(6, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailKey], [OrderKey], [ProductKey], [OrderDetailQuantity], [OrderDetailPriceChanged]) VALUES (N'5', N'1002', N'soda', CAST(2 AS Numeric(10, 0)), CAST(7.25 AS Decimal(6, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailKey], [OrderKey], [ProductKey], [OrderDetailQuantity], [OrderDetailPriceChanged]) VALUES (N'6', N'1002', N'basicM', CAST(3 AS Numeric(10, 0)), CAST(20.00 AS Decimal(6, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailKey], [OrderKey], [ProductKey], [OrderDetailQuantity], [OrderDetailPriceChanged]) VALUES (N'7', N'1003', N'basicM', CAST(1 AS Numeric(10, 0)), CAST(7.35 AS Decimal(6, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailKey], [OrderKey], [ProductKey], [OrderDetailQuantity], [OrderDetailPriceChanged]) VALUES (N'8', N'1003', N'top', CAST(4 AS Numeric(10, 0)), CAST(4.00 AS Decimal(6, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailKey], [OrderKey], [ProductKey], [OrderDetailQuantity], [OrderDetailPriceChanged]) VALUES (N'9', N'1004', N'basicL', CAST(1 AS Numeric(10, 0)), CAST(13.50 AS Decimal(6, 2)))
INSERT [dbo].[Product] ([ProductKey], [ProductName], [ProductUniteSize], [ProductUnitePrice]) VALUES (N'basicL', N'Basic Pizza Large', N'18 inch', CAST(13.50 AS Decimal(6, 2)))
INSERT [dbo].[Product] ([ProductKey], [ProductName], [ProductUniteSize], [ProductUnitePrice]) VALUES (N'basicM', N'Basic Pizza Medium', N'12 inch', CAST(7.35 AS Decimal(6, 2)))
INSERT [dbo].[Product] ([ProductKey], [ProductName], [ProductUniteSize], [ProductUnitePrice]) VALUES (N'basics', N'Basic Pizza Small', N'8 inch', CAST(5.35 AS Decimal(6, 2)))
INSERT [dbo].[Product] ([ProductKey], [ProductName], [ProductUniteSize], [ProductUnitePrice]) VALUES (N'brdstks', N'Breadsticks', N'per 8 pack', CAST(2.50 AS Decimal(6, 2)))
INSERT [dbo].[Product] ([ProductKey], [ProductName], [ProductUniteSize], [ProductUnitePrice]) VALUES (N'soda', N'Soda bottle', N'per 2 liter bottle', CAST(3.75 AS Decimal(6, 2)))
INSERT [dbo].[Product] ([ProductKey], [ProductName], [ProductUniteSize], [ProductUnitePrice]) VALUES (N'SpecialL', N'Specialty Large', N'18 inch', CAST(15.00 AS Decimal(6, 2)))
INSERT [dbo].[Product] ([ProductKey], [ProductName], [ProductUniteSize], [ProductUnitePrice]) VALUES (N'specialM', N'Specialty Medium', N'12 inch', CAST(9.25 AS Decimal(6, 2)))
INSERT [dbo].[Product] ([ProductKey], [ProductName], [ProductUniteSize], [ProductUnitePrice]) VALUES (N'specialS', N'Specialty Small', N'8 inch', CAST(6.35 AS Decimal(6, 2)))
INSERT [dbo].[Product] ([ProductKey], [ProductName], [ProductUniteSize], [ProductUnitePrice]) VALUES (N'top', N'Additional topping', N'1 cup', CAST(1.00 AS Decimal(6, 2)))
/****** Object:  Index [IX_CustomerOrder]    Script Date: 2/22/2016 3:05:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerOrder] ON [dbo].[CustomerOrder]
(
	[OrderDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomerOrder]  WITH CHECK ADD  CONSTRAINT [FK_CustomerOrder_Customers1] FOREIGN KEY([CustomerPhoneKey])
REFERENCES [dbo].[Customers] ([CustomerPhoneKey])
GO
ALTER TABLE [dbo].[CustomerOrder] CHECK CONSTRAINT [FK_CustomerOrder_Customers1]
GO
ALTER TABLE [dbo].[CustomerOrder]  WITH CHECK ADD  CONSTRAINT [FK_CustomerOrder_Employee1] FOREIGN KEY([EmployeeKey])
REFERENCES [dbo].[Employee] ([EmployeeKey])
GO
ALTER TABLE [dbo].[CustomerOrder] CHECK CONSTRAINT [FK_CustomerOrder_Employee1]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_CustomerOrder] FOREIGN KEY([OrderKey])
REFERENCES [dbo].[CustomerOrder] ([OrderKey])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_CustomerOrder]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product1] FOREIGN KEY([ProductKey])
REFERENCES [dbo].[Product] ([ProductKey])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product1]
GO
USE [master]
GO
ALTER DATABASE [Pizza] SET  READ_WRITE 
GO
