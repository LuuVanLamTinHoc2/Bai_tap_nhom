USE [master]
GO
/****** Object:  Database [QLThuVien]    Script Date: 12/01/2015 22:12:16 ******/
CREATE DATABASE [QLThuVien] ON  PRIMARY 
( NAME = N'QLThuVien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QLThuVien.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLThuVien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QLThuVien_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLThuVien] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLThuVien] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLThuVien] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLThuVien] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLThuVien] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLThuVien] SET ARITHABORT OFF
GO
ALTER DATABASE [QLThuVien] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QLThuVien] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLThuVien] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QLThuVien] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLThuVien] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLThuVien] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLThuVien] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLThuVien] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLThuVien] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLThuVien] SET  DISABLE_BROKER
GO
ALTER DATABASE [QLThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLThuVien] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLThuVien] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLThuVien] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLThuVien] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLThuVien] SET  READ_WRITE
GO
ALTER DATABASE [QLThuVien] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QLThuVien] SET  MULTI_USER
GO
ALTER DATABASE [QLThuVien] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QLThuVien] SET DB_CHAINING OFF
GO
USE [QLThuVien]
GO
/****** Object:  User [congbeo94]    Script Date: 12/01/2015 22:12:16 ******/
CREATE USER [congbeo94] FOR LOGIN [congbeo94] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[ThongTinMuon]    Script Date: 12/01/2015 22:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinMuon](
	[MaSach] [nchar](50) NULL,
	[MaDocGia] [nchar](10) NULL,
	[Ngaymuon] [datetime] NULL,
	[Ngaytra] [datetime] NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[ThongTinMuon] ([MaSach], [MaDocGia], [Ngaymuon], [Ngaytra], [SoLuong]) VALUES (N'TA                                                ', N'TA        ', CAST(0x0000A5610164221E AS DateTime), NULL, NULL)
INSERT [dbo].[ThongTinMuon] ([MaSach], [MaDocGia], [Ngaymuon], [Ngaytra], [SoLuong]) VALUES (N'TA                                                ', N'TA        ', CAST(0x0000A56101642776 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[Sach]    Script Date: 12/01/2015 22:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [nchar](50) NOT NULL,
	[TenSach] [nvarchar](50) NULL,
	[TacGia] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [SoLuong], [TrangThai]) VALUES (N'TA                                                ', N'Tieng Anh', N'Nguyen Duc Dam', 5, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [SoLuong], [TrangThai]) VALUES (N'TACC3                                             ', N'tieng anh cao cap', N'nguyen viet anh', 10, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [SoLuong], [TrangThai]) VALUES (N'TN                                                ', N'Tieng Nga', N'Tran Van An', 10, NULL)
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/01/2015 22:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[username] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
	[Hoten] [nvarchar](50) NULL,
	[CMND] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[NhanVien] ([username], [pass], [Hoten], [CMND]) VALUES (N'cong', N'123', NULL, NULL)
/****** Object:  Table [dbo].[DocGia]    Script Date: 12/01/2015 22:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[MaDocGia] [nchar](10) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayHetHan] [datetime] NULL,
	[DonVi] [nvarchar](50) NULL,
 CONSTRAINT [PK_DocGia] PRIMARY KEY CLUSTERED 
(
	[MaDocGia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DocGia] ([MaDocGia], [Ten], [NgayBatDau], [NgayHetHan], [DonVi]) VALUES (N'NCC4      ', N'nguyen chi cong', CAST(0x0000A5610161C100 AS DateTime), CAST(0x0000A5610161C0FB AS DateTime), N'Đơn vị')
/****** Object:  UserDefinedFunction [dbo].[Add_IDDG]    Script Date: 12/01/2015 22:12:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Add_IDDG](@tl nvarchar(50))
returns nchar(50)
as
begin
	 declare @n int
	 declare @matl varchar(10)
	 set @matl=''
	 declare @tentl nvarchar(50)
	 set @tentl=@tl
	 set @n=LEN(@tl)
	 while(CHARINDEX(' ',@tentl)>0)
	 begin		
		set @matl=@matl+upper(convert(varchar(10),left(@tentl,1)))
		set @tentl=RIGHT(@tentl,@n-CHARINDEX(' ',@tentl))
		set @n=LEN(@tentl)
	 end	 
	 set @matl=@matl+upper(convert(varchar(10),left(@tentl,1)))
	 set @tentl=RIGHT(@tentl,@n-CHARINDEX(' ',@tentl))
	
	declare @sl int
	set @sl=(select COUNT(MaSach) from Sach)
	set @matl=@matl+CONVERT(char(27),@sl+1)
	return @matl
end
GO
/****** Object:  UserDefinedFunction [dbo].[Add_ID]    Script Date: 12/01/2015 22:12:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Add_ID](@tl nvarchar(50))
returns nchar(50)
as
begin
	 declare @n int
	 declare @matl varchar(10)
	 set @matl=''
	 declare @tentl nvarchar(50)
	 set @tentl=@tl
	 set @n=LEN(@tl)
	 while(CHARINDEX(' ',@tentl)>0)
	 begin		
		set @matl=@matl+upper(convert(varchar(10),left(@tentl,1)))
		set @tentl=RIGHT(@tentl,@n-CHARINDEX(' ',@tentl))
		set @n=LEN(@tentl)
	 end	 
	 set @matl=@matl+upper(convert(varchar(10),left(@tentl,1)))
	 set @tentl=RIGHT(@tentl,@n-CHARINDEX(' ',@tentl))
	
	declare @sl int
	set @sl=(select COUNT(MaSach) from Sach)
	set @matl=@matl+CONVERT(char(27),@sl+1)
	return @matl
end
GO
/****** Object:  StoredProcedure [dbo].[Add_Docgia]    Script Date: 12/01/2015 22:12:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Add_Docgia]( @ten nvarchar(50), @tgbd datetime, @tgkt datetime, @dv nvarchar(50))
as
begin
		declare @id nchar(10)
		 set @id = dbo.[Add_IDDG](@ten)
		insert into DocGia(MaDocGia,Ten,NgayBatDau,NgayHetHan,DonVi)
		values (@id,@ten,@tgbd,@tgkt,@dv)
end
---
GO
/****** Object:  StoredProcedure [dbo].[Add_Book]    Script Date: 12/01/2015 22:12:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Add_Book](@ten nvarchar(50), @tacgia nvarchar(50), @sl int)
as
begin
		declare @masach nchar(50) 
		set @masach=dbo.[Add_ID](@ten)
		insert into SACH(MaSach,TenSach,TacGia,SoLuong)
		values (@masach,@ten,@tacgia,@sl)
end
GO
