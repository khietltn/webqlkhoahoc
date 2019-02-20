USE [master]
GO
/****** Object:  Database [QLKhoaHoc]    Script Date: 2/20/2019 9:25:25 PM ******/
CREATE DATABASE [QLKhoaHoc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLKhoaHoc', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\QLKhoaHoc.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLKhoaHoc_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\QLKhoaHoc_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLKhoaHoc] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLKhoaHoc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLKhoaHoc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLKhoaHoc] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLKhoaHoc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLKhoaHoc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLKhoaHoc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLKhoaHoc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLKhoaHoc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLKhoaHoc] SET  MULTI_USER 
GO
ALTER DATABASE [QLKhoaHoc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLKhoaHoc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLKhoaHoc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLKhoaHoc] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QLKhoaHoc]
GO
/****** Object:  Table [dbo].[BacDaoTao]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BacDaoTao](
	[MaBacDT] [int] IDENTITY(1,1) NOT NULL,
	[TenBacDT] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__BacDaoTao] PRIMARY KEY CLUSTERED 
(
	[MaBacDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BaiBao]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BaiBao](
	[MaBaiBao] [int] IDENTITY(1,1) NOT NULL,
	[MaISSN] [varchar](50) NULL,
	[TenBaiBao] [nvarchar](100) NOT NULL,
	[LaTrongNuoc] [bit] NULL,
	[CQXuatBan] [nvarchar](50) NULL,
	[MaLoaiTapChi] [int] NULL,
	[MaCapTapChi] [int] NULL,
	[NamDangBao] [date] NULL,
	[TapPhatHanh] [nvarchar](50) NULL,
	[SoPhatHanh] [nvarchar](50) NULL,
	[TrangBaiBao] [varchar](50) NULL,
	[LienKetWeb] [varchar](50) NULL,
	[LinkFileUpLoad] [varchar](50) NULL,
 CONSTRAINT [PK__BaiBao] PRIMARY KEY CLUSTERED 
(
	[MaBaiBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CapDeTai]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapDeTai](
	[MaCapDeTai] [int] IDENTITY(1,1) NOT NULL,
	[TenCapDeTai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__CapDeTai] PRIMARY KEY CLUSTERED 
(
	[MaCapDeTai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CapTapChi]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapTapChi](
	[MaCapTapChi] [int] IDENTITY(1,1) NOT NULL,
	[TenCapTapChi] [nvarchar](100) NOT NULL,
	[ChiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK__CapTapChi] PRIMARY KEY CLUSTERED 
(
	[MaCapTapChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChucNang]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucNang](
	[MaChucNang] [int] NOT NULL,
	[TenChucNang] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChucNang] PRIMARY KEY CLUSTERED 
(
	[MaChucNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChuyenMon]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenMon](
	[MaChuyenMon] [int] IDENTITY(1,1) NOT NULL,
	[TenChuyenMon] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__ChuyenMon] PRIMARY KEY CLUSTERED 
(
	[MaChuyenMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChuyenMonNKH]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenMonNKH](
	[MaNKH] [int] NOT NULL,
	[MaChuyenMon] [int] NOT NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK__ChuyenMonNKH] PRIMARY KEY CLUSTERED 
(
	[MaNKH] ASC,
	[MaChuyenMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChuyenNganh]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenNganh](
	[MaChuyenNganh] [int] IDENTITY(1,1) NOT NULL,
	[TenChuyenNganh] [nvarchar](50) NOT NULL,
	[MaNganhDaoTao] [int] NULL,
 CONSTRAINT [PK__ChuyenNganh] PRIMARY KEY CLUSTERED 
(
	[MaChuyenNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeTai]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeTai](
	[MaDeTai] [int] IDENTITY(1,1) NOT NULL,
	[MaDeTaiHoSo] [varchar](50) NULL,
	[TenDeTai] [nvarchar](100) NOT NULL,
	[MaLoaiDeTai] [int] NULL,
	[MaCapDeTai] [int] NULL,
	[MaDVChuTri] [int] NULL,
	[MaDonViQLThucHien] [int] NULL,
	[MaLinhVuc] [int] NULL,
	[MucTieuDeTai] [nvarchar](max) NULL,
	[NoiDungDeTai] [nvarchar](max) NULL,
	[KetQuaDeTai] [nvarchar](max) NULL,
	[NamBD] [date] NULL,
	[NamKT] [date] NULL,
	[MaXepLoai] [int] NULL,
	[MaTinhTrang] [int] NULL,
	[MaPhanLoaiSP] [int] NULL,
	[KinhPhi] [varchar](50) NULL,
	[LienKetWeb] [varchar](max) NULL,
	[LinkFileUpload] [varchar](max) NULL,
 CONSTRAINT [PK__DeTai] PRIMARY KEY CLUSTERED 
(
	[MaDeTai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonViChuTri]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonViChuTri](
	[MaDVChuTri] [int] IDENTITY(1,1) NOT NULL,
	[TenDVChuTri] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK__DonViChu] PRIMARY KEY CLUSTERED 
(
	[MaDVChuTri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonViQL]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonViQL](
	[MaDonVi] [int] IDENTITY(1,1) NOT NULL,
	[TenDonVI] [nvarchar](50) NOT NULL,
	[DiaChiCQ] [nvarchar](50) NULL,
	[DienThoaiCQ] [varchar](50) NULL,
	[EmailCQ] [varchar](50) NULL,
 CONSTRAINT [PK__DonViQL] PRIMARY KEY CLUSTERED 
(
	[MaDonVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DSBaiBaoDeTai]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSBaiBaoDeTai](
	[MaDeTai] [int] NOT NULL,
	[MaBaiBao] [int] NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDeTai] ASC,
	[MaBaiBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSNguoiThamGiaBaiBao]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSNguoiThamGiaBaiBao](
	[MaBaiBao] [int] NOT NULL,
	[MaNKH] [int] NOT NULL,
	[LaTacGiaChinh] [bit] NULL,
 CONSTRAINT [PK__DSNguoiT] PRIMARY KEY CLUSTERED 
(
	[MaBaiBao] ASC,
	[MaNKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSNguoiThamGiaDeTai]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSNguoiThamGiaDeTai](
	[MaDeTai] [int] NOT NULL,
	[MaNKH] [int] NOT NULL,
	[LaChuNhiem] [bit] NULL,
 CONSTRAINT [PK__DSNguoiTG] PRIMARY KEY CLUSTERED 
(
	[MaDeTai] ASC,
	[MaNKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSTacGia]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSTacGia](
	[MaSach] [int] NOT NULL,
	[MaNKH] [int] NOT NULL,
	[LaChuBien] [bit] NULL,
 CONSTRAINT [PK_DSTacGia] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[MaNKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HocHam]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocHam](
	[MaHocHam] [int] IDENTITY(1,1) NOT NULL,
	[TenVietTat] [nvarchar](10) NULL,
	[TenHocHam] [nvarchar](50) NULL,
 CONSTRAINT [PK__HocHam] PRIMARY KEY CLUSTERED 
(
	[MaHocHam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HocVi]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HocVi](
	[MaHocVi] [int] IDENTITY(1,1) NOT NULL,
	[TenVietTat] [varchar](10) NULL,
	[TenHocVi] [nvarchar](50) NULL,
 CONSTRAINT [PK__HocVi] PRIMARY KEY CLUSTERED 
(
	[MaHocVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KinhPhiDeTai]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KinhPhiDeTai](
	[MaPhi] [int] IDENTITY(1,1) NOT NULL,
	[MaDeTai] [int] NOT NULL,
	[LoaiKinhPhi] [nvarchar](50) NULL,
	[NamTiepNhan] [date] NULL,
	[SoTien] [int] NULL,
	[LoaiTien] [varchar](5) NULL,
 CONSTRAINT [PK_KinhPhiDeTai] PRIMARY KEY CLUSTERED 
(
	[MaPhi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinhVuc]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinhVuc](
	[MaLinhVuc] [int] IDENTITY(1,1) NOT NULL,
	[TenLinhVuc] [nvarchar](100) NULL,
	[MaNhomLinhVuc] [int] NULL,
 CONSTRAINT [PK__LinhVuc] PRIMARY KEY CLUSTERED 
(
	[MaLinhVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinhVucBaiBao]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinhVucBaiBao](
	[MaBaiBao] [int] NOT NULL,
	[MaLinhVuc] [int] NOT NULL,
 CONSTRAINT [PK__LinhVuc_BaiBao] PRIMARY KEY CLUSTERED 
(
	[MaBaiBao] ASC,
	[MaLinhVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinhVucNghienCuuNKH]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinhVucNghienCuuNKH](
	[MaNKH] [int] NOT NULL,
	[MaLinhVuc] [int] NOT NULL,
 CONSTRAINT [PK__LinhVuc_NKH] PRIMARY KEY CLUSTERED 
(
	[MaNKH] ASC,
	[MaLinhVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiHinhDeTai]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHinhDeTai](
	[MaLoaiDT] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiDT] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiHinhDeTai] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NgachVienChuc]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgachVienChuc](
	[MaNgach] [int] IDENTITY(1,1) NOT NULL,
	[TenNgach] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__NgachVienChuc] PRIMARY KEY CLUSTERED 
(
	[MaNgach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NganhDaoTao]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NganhDaoTao](
	[MaNganhDaoTao] [int] IDENTITY(1,1) NOT NULL,
	[TenNganhDaoTao] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__NganhDaoTao] PRIMARY KEY CLUSTERED 
(
	[MaNganhDaoTao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NgoaiNguNKH]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgoaiNguNKH](
	[MaNKH] [int] NOT NULL,
	[MaTrinhDoNN] [int] NOT NULL,
 CONSTRAINT [PK__NgoaiNguNKH] PRIMARY KEY CLUSTERED 
(
	[MaNKH] ASC,
	[MaTrinhDoNN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[Usernames] [varchar](12) NOT NULL,
	[Passwords] [varchar](max) NULL,
	[MaNKH] [int] NULL,
	[MaChucNang] [int] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[Usernames] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaKhoaHoc]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaKhoaHoc](
	[MaNKH] [int] IDENTITY(1,1) NOT NULL,
	[MaNKHHoSo] [varchar](100) NULL,
	[HoNKH] [nvarchar](50) NULL,
	[TenNKH] [nvarchar](50) NULL,
	[GioiTinhNKH] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChiLienHe] [nvarchar](max) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[EmailLienHe] [varchar](50) NULL,
	[MaHocHam] [int] NULL,
	[MaHocVi] [int] NULL,
	[MaCNDaoTao] [int] NULL,
	[MaDonViQL] [int] NULL,
	[AnhDaiDien] [varchar](max) NULL,
	[AnhCaNhan] [varbinary](max) NULL,
	[MaNgachVienChuc] [int] NULL,
 CONSTRAINT [PK__NKH] PRIMARY KEY CLUSTERED 
(
	[MaNKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[MaNXB] [int] IDENTITY(1,1) NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
	[DiaChiNXB] [nvarchar](100) NULL,
	[DienThoaiNXB] [varchar](50) NULL,
	[DiaChiWeb] [varchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhomLinhVuc]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomLinhVuc](
	[MaNhomLinhVuc] [int] IDENTITY(1,1) NOT NULL,
	[TenNhomLinhVuc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__NhomLinhVuc] PRIMARY KEY CLUSTERED 
(
	[MaNhomLinhVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanLoaiSach]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLoaiSach](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__PhanLoaiSach] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanLoaiSP]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLoaiSP](
	[MaPhanLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenPhanLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__PhanLoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaPhanLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanLoaiTapChi]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLoaiTapChi](
	[MaLoaiTapChi] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTapChi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__PhanLoaiTapChi] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTapChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuaTrinhCongTac]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuaTrinhCongTac](
	[MaCT] [int] IDENTITY(1,1) NOT NULL,
	[MaNKH] [int] NOT NULL,
	[ThoiGianBD] [datetime] NULL,
	[ThoiGIanKT] [datetime] NULL,
	[ChucDanhCT] [nvarchar](100) NULL,
	[MaDonViQL] [int] NULL,
	[ChucVuCT] [nvarchar](100) NULL,
 CONSTRAINT [PK_QuaTrinhCongTac] PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuaTrinhDaoTao]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuaTrinhDaoTao](
	[MaQT] [int] IDENTITY(1,1) NOT NULL,
	[MaNKH] [int] NOT NULL,
	[ThoiGianBD] [datetime] NULL,
	[ThoiGianKT] [datetime] NULL,
	[MaBacDT] [int] NULL,
	[CoSoDaoTao] [nvarchar](100) NULL,
	[MaNganh] [int] NULL,
	[NamTotNghiep] [datetime] NULL,
 CONSTRAINT [PK_QuaTrinhDaoTao] PRIMARY KEY CLUSTERED 
(
	[MaQT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SachGiaoTrinh]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SachGiaoTrinh](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[MaISBN] [varchar](100) NULL,
	[TenSach] [varchar](255) NOT NULL,
	[MaLoai] [int] NULL,
	[MaLinhVuc] [int] NULL,
	[MaNXB] [int] NULL,
	[NamXuatBan] [date] NULL,
 CONSTRAINT [PK__SachGiaoTrinh] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TinhTrangDeTai]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangDeTai](
	[MaTinhTrang] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhTrang] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__TinhTrangDeTai] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrinhDoNgoaiNgu]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDoNgoaiNgu](
	[MaTrinhDoNN] [int] IDENTITY(1,1) NOT NULL,
	[TenTrinhDo] [nvarchar](50) NOT NULL,
	[CapDo] [nvarchar](50) NULL,
 CONSTRAINT [PK__TrinhDoNNgu] PRIMARY KEY CLUSTERED 
(
	[MaTrinhDoNN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[XepLoai]    Script Date: 2/20/2019 9:25:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XepLoai](
	[MaXepLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenXepLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__XepLoai] PRIMARY KEY CLUSTERED 
(
	[MaXepLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BacDaoTao] ON 

INSERT [dbo].[BacDaoTao] ([MaBacDT], [TenBacDT]) VALUES (1, N'Phổ thông')
INSERT [dbo].[BacDaoTao] ([MaBacDT], [TenBacDT]) VALUES (2, N'Trung Cấp')
INSERT [dbo].[BacDaoTao] ([MaBacDT], [TenBacDT]) VALUES (3, N'Cao đẳng')
INSERT [dbo].[BacDaoTao] ([MaBacDT], [TenBacDT]) VALUES (4, N'Đại học')
INSERT [dbo].[BacDaoTao] ([MaBacDT], [TenBacDT]) VALUES (5, N'Thạc sĩ')
INSERT [dbo].[BacDaoTao] ([MaBacDT], [TenBacDT]) VALUES (6, N'Tiến sĩ')
INSERT [dbo].[BacDaoTao] ([MaBacDT], [TenBacDT]) VALUES (7, N'Sau Tiến sĩ')
INSERT [dbo].[BacDaoTao] ([MaBacDT], [TenBacDT]) VALUES (8, N'Khác')
SET IDENTITY_INSERT [dbo].[BacDaoTao] OFF
SET IDENTITY_INSERT [dbo].[BaiBao] ON 

INSERT [dbo].[BaiBao] ([MaBaiBao], [MaISSN], [TenBaiBao], [LaTrongNuoc], [CQXuatBan], [MaLoaiTapChi], [MaCapTapChi], [NamDangBao], [TapPhatHanh], [SoPhatHanh], [TrangBaiBao], [LienKetWeb], [LinkFileUpLoad]) VALUES (1, N'1', N'1', 1, N'1', 1, 1, CAST(0x0D3F0B00 AS Date), N'1', N'1', N'1', N'blablabla', NULL)
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaISSN], [TenBaiBao], [LaTrongNuoc], [CQXuatBan], [MaLoaiTapChi], [MaCapTapChi], [NamDangBao], [TapPhatHanh], [SoPhatHanh], [TrangBaiBao], [LienKetWeb], [LinkFileUpLoad]) VALUES (2, N'2', N'2', 0, N'2', 1, 1, CAST(0x433F0B00 AS Date), N'2', N'2', N'2', N'blablabla', N'New Text Document.txt')
SET IDENTITY_INSERT [dbo].[BaiBao] OFF
SET IDENTITY_INSERT [dbo].[CapDeTai] ON 

INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (1, N'Dự án cấp Nhà nước')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (2, N'Đề tài cấp Bộ')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (3, N'Đề tài cấp Tỉnh')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (4, N'Đề tài cấp Cơ sở')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (5, N'Dự án hợp tác quốc tế')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (6, N'Dự án SXTN cấp Nhà nước')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (7, N'Đề tài độc lập cấp Nhà nước')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (8, N'Đề tài thuộc chương trình TĐ cấp NN')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (9, N'Dự án thuộc chương trình TĐ cấp NN')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (10, N'Nghiên cứu cơ bản')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (11, N'Nhiệm vụ nghiên cứu theo NĐT')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (12, N'Giáo dục và Bảo vệ môi trường')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (13, N'Đề tài trọng điểm cấp Bộ')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (14, N'Dự án SXTN cấp Bộ')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (15, N'Đề tài cấp Đại học Huế')
SET IDENTITY_INSERT [dbo].[CapDeTai] OFF
SET IDENTITY_INSERT [dbo].[CapTapChi] ON 

INSERT [dbo].[CapTapChi] ([MaCapTapChi], [TenCapTapChi], [ChiChu]) VALUES (1, N'ISI', NULL)
INSERT [dbo].[CapTapChi] ([MaCapTapChi], [TenCapTapChi], [ChiChu]) VALUES (2, N'HĐCDGS', NULL)
INSERT [dbo].[CapTapChi] ([MaCapTapChi], [TenCapTapChi], [ChiChu]) VALUES (3, N'SCOPUS', NULL)
INSERT [dbo].[CapTapChi] ([MaCapTapChi], [TenCapTapChi], [ChiChu]) VALUES (4, N'Khác', NULL)
INSERT [dbo].[CapTapChi] ([MaCapTapChi], [TenCapTapChi], [ChiChu]) VALUES (5, N'ESCI', NULL)
SET IDENTITY_INSERT [dbo].[CapTapChi] OFF
INSERT [dbo].[ChucNang] ([MaChucNang], [TenChucNang], [GhiChu]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[ChucNang] ([MaChucNang], [TenChucNang], [GhiChu]) VALUES (2, N'User', NULL)
SET IDENTITY_INSERT [dbo].[ChuyenMon] ON 

INSERT [dbo].[ChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (1, N'Chuyên môn 1')
INSERT [dbo].[ChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (2, N'Chuyên môn 2')
INSERT [dbo].[ChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (3, N'Chuyên môn 3')
INSERT [dbo].[ChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (4, N'Chuyên môn 4')
INSERT [dbo].[ChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (5, N'Chuyên môn 5')
INSERT [dbo].[ChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (6, N'Chuyên môn 6')
INSERT [dbo].[ChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (7, N'Chuyên môn 7')
INSERT [dbo].[ChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (8, N'Chuyên môn 8')
SET IDENTITY_INSERT [dbo].[ChuyenMon] OFF
INSERT [dbo].[ChuyenMonNKH] ([MaNKH], [MaChuyenMon], [NgayCapNhat]) VALUES (1, 1, CAST(0x0000A85B00000000 AS DateTime))
INSERT [dbo].[ChuyenMonNKH] ([MaNKH], [MaChuyenMon], [NgayCapNhat]) VALUES (1, 2, CAST(0x0000A85B00000000 AS DateTime))
INSERT [dbo].[ChuyenMonNKH] ([MaNKH], [MaChuyenMon], [NgayCapNhat]) VALUES (2, 3, CAST(0x0000A85C00000000 AS DateTime))
INSERT [dbo].[ChuyenMonNKH] ([MaNKH], [MaChuyenMon], [NgayCapNhat]) VALUES (3, 2, CAST(0x0000A85F00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[ChuyenNganh] ON 

INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaNganhDaoTao]) VALUES (1, N'Hệ thống thông ti', 1)
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaNganhDaoTao]) VALUES (2, N'Khoa học máy tính', 1)
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaNganhDaoTao]) VALUES (3, N'Mạng máy tính', 1)
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaNganhDaoTao]) VALUES (4, N'Kiểm thử', 1)
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaNganhDaoTao]) VALUES (5, N'Phương pháp giảng dạy', 2)
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaNganhDaoTao]) VALUES (6, N'Toán ứng dụng', 2)
SET IDENTITY_INSERT [dbo].[ChuyenNganh] OFF
SET IDENTITY_INSERT [dbo].[DeTai] ON 

INSERT [dbo].[DeTai] ([MaDeTai], [MaDeTaiHoSo], [TenDeTai], [MaLoaiDeTai], [MaCapDeTai], [MaDVChuTri], [MaDonViQLThucHien], [MaLinhVuc], [MucTieuDeTai], [NoiDungDeTai], [KetQuaDeTai], [NamBD], [NamKT], [MaXepLoai], [MaTinhTrang], [MaPhanLoaiSP], [KinhPhi], [LienKetWeb], [LinkFileUpload]) VALUES (1, N'B2018-DHH-08-GENe', N'Nghiên cứu bảo tồn Quýt Hương Cần ở Thừa Thiên Huế', 1, 1, 1, 1, 1, N'Thu thập, lưu giữ, đánh giá ban đầu, đánh giá chi tiết, tư liệu hóa, chia sẻ nguồn gen.', N'Nghiên cứu gen giống Quýt lai ', N'Tạo bộ Gen mới tối ưu', CAST(0xD73D0B00 AS Date), CAST(0x233F0B00 AS Date), 1, 1, 1, NULL, N'http://csdlkhoahoc.hueuni.edu.vn/index.php/topic', NULL)
INSERT [dbo].[DeTai] ([MaDeTai], [MaDeTaiHoSo], [TenDeTai], [MaLoaiDeTai], [MaCapDeTai], [MaDVChuTri], [MaDonViQLThucHien], [MaLinhVuc], [MucTieuDeTai], [NoiDungDeTai], [KetQuaDeTai], [NamBD], [NamKT], [MaXepLoai], [MaTinhTrang], [MaPhanLoaiSP], [KinhPhi], [LienKetWeb], [LinkFileUpload]) VALUES (2, N'CT- 2018-DHH-03', N'Nghiên cứu chế tạo Kit phát hiện vi khuẩn Vibrio parahaemolyticus gây bệnh lở loét ở cá', 2, 2, 1, 3, 2, N'mục tiêu', N'nội dung đề tài', N'kết quả đè tài', CAST(0xA43C0B00 AS Date), CAST(0x043F0B00 AS Date), 3, 2, 2, NULL, N'https://vnexpress.net/', N'baocao1.pdf')
INSERT [dbo].[DeTai] ([MaDeTai], [MaDeTaiHoSo], [TenDeTai], [MaLoaiDeTai], [MaCapDeTai], [MaDVChuTri], [MaDonViQLThucHien], [MaLinhVuc], [MucTieuDeTai], [NoiDungDeTai], [KetQuaDeTai], [NamBD], [NamKT], [MaXepLoai], [MaTinhTrang], [MaPhanLoaiSP], [KinhPhi], [LienKetWeb], [LinkFileUpload]) VALUES (7, N'123', N'123', 1, 1, 1, 1, 1, N'123', N'123', N'123', CAST(0x423F0B00 AS Date), CAST(0x433F0B00 AS Date), 1, 1, 1, NULL, N'blablabla', N'New Text Document.txt')
INSERT [dbo].[DeTai] ([MaDeTai], [MaDeTaiHoSo], [TenDeTai], [MaLoaiDeTai], [MaCapDeTai], [MaDVChuTri], [MaDonViQLThucHien], [MaLinhVuc], [MucTieuDeTai], [NoiDungDeTai], [KetQuaDeTai], [NamBD], [NamKT], [MaXepLoai], [MaTinhTrang], [MaPhanLoaiSP], [KinhPhi], [LienKetWeb], [LinkFileUpload]) VALUES (8, N'123', N'123', 1, 1, 1, 1, 1, N'123', N'123', N'123', CAST(0x433F0B00 AS Date), CAST(0x443F0B00 AS Date), 1, 1, 1, NULL, N'blablabla', N'New Text Document.txt')
INSERT [dbo].[DeTai] ([MaDeTai], [MaDeTaiHoSo], [TenDeTai], [MaLoaiDeTai], [MaCapDeTai], [MaDVChuTri], [MaDonViQLThucHien], [MaLinhVuc], [MucTieuDeTai], [NoiDungDeTai], [KetQuaDeTai], [NamBD], [NamKT], [MaXepLoai], [MaTinhTrang], [MaPhanLoaiSP], [KinhPhi], [LienKetWeb], [LinkFileUpload]) VALUES (9, N'123', N'123', 1, 1, 1, 1, 1, N'123', N'123', N'123', CAST(0x423F0B00 AS Date), CAST(0x433F0B00 AS Date), 1, 1, 1, NULL, N'blablabla', N'New Text Document.txt')
INSERT [dbo].[DeTai] ([MaDeTai], [MaDeTaiHoSo], [TenDeTai], [MaLoaiDeTai], [MaCapDeTai], [MaDVChuTri], [MaDonViQLThucHien], [MaLinhVuc], [MucTieuDeTai], [NoiDungDeTai], [KetQuaDeTai], [NamBD], [NamKT], [MaXepLoai], [MaTinhTrang], [MaPhanLoaiSP], [KinhPhi], [LienKetWeb], [LinkFileUpload]) VALUES (10, N'456', N'456', 1, 1, 1, 1, 1, N'456', N'456', N'456', CAST(0x423F0B00 AS Date), CAST(0x433F0B00 AS Date), 1, 1, 1, NULL, N'blablabla', N'New Text Document.txt')
INSERT [dbo].[DeTai] ([MaDeTai], [MaDeTaiHoSo], [TenDeTai], [MaLoaiDeTai], [MaCapDeTai], [MaDVChuTri], [MaDonViQLThucHien], [MaLinhVuc], [MucTieuDeTai], [NoiDungDeTai], [KetQuaDeTai], [NamBD], [NamKT], [MaXepLoai], [MaTinhTrang], [MaPhanLoaiSP], [KinhPhi], [LienKetWeb], [LinkFileUpload]) VALUES (11, N'1', N'1', 2, 2, 2, 10, 16, N'1', N'1', N'1', CAST(0x263F0B00 AS Date), CAST(0x433F0B00 AS Date), 3, 2, 2, NULL, N'blablabla', N'New Text Document.txt')
SET IDENTITY_INSERT [dbo].[DeTai] OFF
SET IDENTITY_INSERT [dbo].[DonViChuTri] ON 

INSERT [dbo].[DonViChuTri] ([MaDVChuTri], [TenDVChuTri], [DiaChi]) VALUES (1, N'Đại học Sư Phạm Tp Hồ Chí Minh', N'Tp HCM')
INSERT [dbo].[DonViChuTri] ([MaDVChuTri], [TenDVChuTri], [DiaChi]) VALUES (2, N'Đại học Huế', N'Thừa Thiên Hứa')
SET IDENTITY_INSERT [dbo].[DonViChuTri] OFF
SET IDENTITY_INSERT [dbo].[DonViQL] ON 

INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (1, N'Khoa Công nghệ Thông tin', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (2, N'Khoa Địa lí', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (3, N'Khoa Giáo dục Chính trị', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (4, N'Khoa Giáo dục Đặc biệt', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (5, N'Khoa Giáo dục Mầm non', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (6, N'Khoa Giáo dục Quốc phòng', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (7, N'Khoa Giáo dục Thể chất', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (8, N'Khoa Hóa học', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (9, N'Khoa Khoa học Giáo dục', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (10, N'Khoa Lịch sử', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (11, N'Khoa Ngữ văn', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (12, N'Khoa Sinh học', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (13, N'Khoa Tâm Lý học', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (14, N'Khoa Tiếng Anh', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (15, N'Khoa Tiếng Hàn Quốc', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (16, N'Khoa Tiếng Nga', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (17, N'Khoa Tiếng Nhật', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (18, N'Khoa Tiếng Pháp', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (19, N'Khoa Tiếng Trung', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (20, N'Khoa Toán - Tin', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (21, N'Khoa Vật lí', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (22, N'Kí túc xá', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (23, N'Nhà xuất bản', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (24, N'Phòng Thanh tra Đào tạo', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (25, N'Phòng Công nghệ Thông tin', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (26, N'Phòng Công tác Chính trị & Học sinh Sinh viên', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (27, N'Phòng Đào tạo', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (28, N'Phòng Hợp tác Quốc tế', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (29, N'Phòng Khoa học Công nghệ-Môi Trường & TCKH', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (30, N'Phòng Kế hoạch - Tài chính', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (31, N'Pho`ng Qu?n tr? Thi?t b? - Y t?', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (32, N'Phòng Sau Đại học', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (33, N'Phòng Tổ chức - Hành chính', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (34, N'Thư viện', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (35, N'Tổ Giáo dục Nữ công', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (36, N'Trung tâm Ngoại ngữ', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (37, N'Trung tâm Tin học', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (38, N'Trường Trung học Thực hành', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (39, N'Viện Nghiên cứu Giáo dục', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DonViQL] OFF
INSERT [dbo].[DSBaiBaoDeTai] ([MaDeTai], [MaBaiBao], [GhiChu]) VALUES (1, 1, NULL)
INSERT [dbo].[DSBaiBaoDeTai] ([MaDeTai], [MaBaiBao], [GhiChu]) VALUES (1, 2, NULL)
INSERT [dbo].[DSBaiBaoDeTai] ([MaDeTai], [MaBaiBao], [GhiChu]) VALUES (2, 1, NULL)
INSERT [dbo].[DSBaiBaoDeTai] ([MaDeTai], [MaBaiBao], [GhiChu]) VALUES (2, 2, NULL)
INSERT [dbo].[DSNguoiThamGiaBaiBao] ([MaBaiBao], [MaNKH], [LaTacGiaChinh]) VALUES (1, 2, 0)
INSERT [dbo].[DSNguoiThamGiaBaiBao] ([MaBaiBao], [MaNKH], [LaTacGiaChinh]) VALUES (1, 3, 0)
INSERT [dbo].[DSNguoiThamGiaBaiBao] ([MaBaiBao], [MaNKH], [LaTacGiaChinh]) VALUES (2, 2, 0)
INSERT [dbo].[DSNguoiThamGiaBaiBao] ([MaBaiBao], [MaNKH], [LaTacGiaChinh]) VALUES (2, 3, 0)
INSERT [dbo].[DSNguoiThamGiaDeTai] ([MaDeTai], [MaNKH], [LaChuNhiem]) VALUES (1, 1, 1)
INSERT [dbo].[DSNguoiThamGiaDeTai] ([MaDeTai], [MaNKH], [LaChuNhiem]) VALUES (1, 3, 0)
INSERT [dbo].[DSNguoiThamGiaDeTai] ([MaDeTai], [MaNKH], [LaChuNhiem]) VALUES (2, 1, 0)
INSERT [dbo].[DSNguoiThamGiaDeTai] ([MaDeTai], [MaNKH], [LaChuNhiem]) VALUES (2, 2, 1)
INSERT [dbo].[DSNguoiThamGiaDeTai] ([MaDeTai], [MaNKH], [LaChuNhiem]) VALUES (2, 3, 0)
INSERT [dbo].[DSNguoiThamGiaDeTai] ([MaDeTai], [MaNKH], [LaChuNhiem]) VALUES (11, 2, 0)
INSERT [dbo].[DSNguoiThamGiaDeTai] ([MaDeTai], [MaNKH], [LaChuNhiem]) VALUES (11, 3, 0)
SET IDENTITY_INSERT [dbo].[HocHam] ON 

INSERT [dbo].[HocHam] ([MaHocHam], [TenVietTat], [TenHocHam]) VALUES (1, N'PGS', N'Phó giáo sư')
INSERT [dbo].[HocHam] ([MaHocHam], [TenVietTat], [TenHocHam]) VALUES (2, N'GS', N'Giáo sư')
INSERT [dbo].[HocHam] ([MaHocHam], [TenVietTat], [TenHocHam]) VALUES (3, N'GSDD', N'Giáo sư danh dự')
SET IDENTITY_INSERT [dbo].[HocHam] OFF
SET IDENTITY_INSERT [dbo].[HocVi] ON 

INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (1, N'PT', N'Phổ thông')
INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (2, N'TC', N'Trung Cấp')
INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (3, N'CD', N'Cao đẳng')
INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (4, N'DH', N'Đại học')
INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (5, N'ThS', N'Thạc sĩ')
INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (6, N'TS', N'Tiến sĩ')
INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (7, N'TSKH', N'Tiến sĩ khoa học')
INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (8, N'SauTS', N'Sau Tiến sĩ')
INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (9, N'Khac', N'Khác')
SET IDENTITY_INSERT [dbo].[HocVi] OFF
SET IDENTITY_INSERT [dbo].[KinhPhiDeTai] ON 

INSERT [dbo].[KinhPhiDeTai] ([MaPhi], [MaDeTai], [LoaiKinhPhi], [NamTiepNhan], [SoTien], [LoaiTien]) VALUES (3, 1, N'nha nuoc', CAST(0x0D3F0B00 AS Date), 123123, N'vnd')
INSERT [dbo].[KinhPhiDeTai] ([MaPhi], [MaDeTai], [LoaiKinhPhi], [NamTiepNhan], [SoTien], [LoaiTien]) VALUES (4, 7, N'nha nuoc', CAST(0x0D3F0B00 AS Date), 123123, N'vnd')
INSERT [dbo].[KinhPhiDeTai] ([MaPhi], [MaDeTai], [LoaiKinhPhi], [NamTiepNhan], [SoTien], [LoaiTien]) VALUES (5, 8, N'nha nuoc', CAST(0x0D3F0B00 AS Date), 123123, N'vnd')
INSERT [dbo].[KinhPhiDeTai] ([MaPhi], [MaDeTai], [LoaiKinhPhi], [NamTiepNhan], [SoTien], [LoaiTien]) VALUES (6, 9, N'nha nuoc', CAST(0x0D3F0B00 AS Date), 123123, N'vnd')
INSERT [dbo].[KinhPhiDeTai] ([MaPhi], [MaDeTai], [LoaiKinhPhi], [NamTiepNhan], [SoTien], [LoaiTien]) VALUES (7, 10, N'nha nuoc', CAST(0x0D3F0B00 AS Date), 123123, N'vnd')
INSERT [dbo].[KinhPhiDeTai] ([MaPhi], [MaDeTai], [LoaiKinhPhi], [NamTiepNhan], [SoTien], [LoaiTien]) VALUES (8, 1, N'tu nhan', CAST(0x0D3F0B00 AS Date), 4000, N'vnd')
INSERT [dbo].[KinhPhiDeTai] ([MaPhi], [MaDeTai], [LoaiKinhPhi], [NamTiepNhan], [SoTien], [LoaiTien]) VALUES (9, 11, N'nha nuoc', CAST(0x0D3F0B00 AS Date), 123123, N'vnd')
SET IDENTITY_INSERT [dbo].[KinhPhiDeTai] OFF
SET IDENTITY_INSERT [dbo].[LinhVuc] ON 

INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (1, N'TOÁN HỌC VÀ THỐNG KÊ', 1)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (2, N'KHOA HỌC MÁY TÍNH VÀ THÔNG TIN', 1)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (3, N'VẬT LÝ', 1)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (4, N'HOÁ HỌC', 1)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (5, N'CÁC KHOA HỌC TRÁI ĐẤT VÀ MÔI TRƯỜNG LIÊN QUAN', 1)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (6, N'SINH HỌC', 1)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (7, N'KHOA HỌC TỰ NHIÊN KHÁC', 1)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (8, N'TÂM LÝ HỌC', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (9, N'KINH TẾ VÀ KINH DOANH', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (10, N'KHOA HỌC GIÁO DỤC', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (11, N'XÃ HỘI HỌC', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (12, N'PHÁP LUẬT', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (13, N'KHOA HỌC CHÍNH TRỊ', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (14, N'ĐỊA LÝ KINH TẾ VÀ XÃ HỘI', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (15, N'THÔNG TIN ĐẠI CHÚNG VÀ TRUYỀN THÔNG', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (16, N'KHOA HỌC XÃ HỘI KHÁC', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (17, N'LỊCH SỬ VÀ KHẢO CỔ HỌC', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (18, N'NGÔN NGỮ HỌC VÀ VĂN HỌC', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (19, N'TRIẾT HỌC, ĐẠO ĐỨC HỌC VÀ TÔN GIÁO', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (20, N'NGHỆ THUẬT', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (21, N'KHOA HỌC NHÂN VĂN KHÁC', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (22, N'KỸ THUẬT DÂN DỤNG', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (23, N'KỸ THUẬT ĐIỆN, KỸ THUẬT ĐIỆN TỬ, KỸ THUẬT THÔNG TIN', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (24, N'KỸ THUẬT CƠ KHÍ, CHẾ TẠO MÁY', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (25, N'KỸ THUẬT HÓA HỌC', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (26, N'KỸ THUẬT VẬT LIỆU VÀ LUYỆN KIM', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (27, N'KỸ THUẬT Y HỌC', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (28, N'KỸ THUẬT MÔI TRƯỜNG', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (29, N'CÔNG NGHỆ SINH HỌC MÔI TRƯỜNG', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (30, N'CÔNG NGHỆ SINH HỌC CÔNG NGHIỆP', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (31, N'CÔNG NGHỆ NANO', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (32, N'KỸ THUẬT THỰC PHẨM VÀ ĐỒ UỐNG', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (33, N'KỸ THUẬT VÀ CÔNG NGHỆ KHÁC', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (34, N'TRỒNG TRỌT', 4)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (35, N'CHĂN NUÔI', 4)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (36, N'THÚ Y', 4)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (37, N'LÂM NGHIỆP', 4)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (38, N'THUỶ SẢN', 4)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (39, N'CÔNG NGHỆ SINH HỌC NÔNG NGHIỆP', 4)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (40, N'KHOA HỌC NÔNG NGHIỆP KHÁC', 4)
SET IDENTITY_INSERT [dbo].[LinhVuc] OFF
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 1)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 2)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 3)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 4)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 5)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 6)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 7)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 8)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 9)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 10)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 11)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 12)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 13)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 14)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 15)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 16)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 17)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 18)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 19)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 20)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 21)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 22)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 23)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 24)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 25)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 26)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 27)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 28)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 29)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 30)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 31)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 32)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 33)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 34)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 35)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 36)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 37)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 38)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 39)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 40)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (2, 1)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (2, 2)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (2, 4)
INSERT [dbo].[LinhVucNghienCuuNKH] ([MaNKH], [MaLinhVuc]) VALUES (1, 3)
INSERT [dbo].[LinhVucNghienCuuNKH] ([MaNKH], [MaLinhVuc]) VALUES (1, 8)
INSERT [dbo].[LinhVucNghienCuuNKH] ([MaNKH], [MaLinhVuc]) VALUES (1, 9)
INSERT [dbo].[LinhVucNghienCuuNKH] ([MaNKH], [MaLinhVuc]) VALUES (2, 10)
INSERT [dbo].[LinhVucNghienCuuNKH] ([MaNKH], [MaLinhVuc]) VALUES (2, 30)
INSERT [dbo].[LinhVucNghienCuuNKH] ([MaNKH], [MaLinhVuc]) VALUES (3, 2)
INSERT [dbo].[LinhVucNghienCuuNKH] ([MaNKH], [MaLinhVuc]) VALUES (3, 8)
SET IDENTITY_INSERT [dbo].[LoaiHinhDeTai] ON 

INSERT [dbo].[LoaiHinhDeTai] ([MaLoaiDT], [TenLoaiDT]) VALUES (1, N'Cơ bản')
INSERT [dbo].[LoaiHinhDeTai] ([MaLoaiDT], [TenLoaiDT]) VALUES (2, N'Ứng dụng')
SET IDENTITY_INSERT [dbo].[LoaiHinhDeTai] OFF
SET IDENTITY_INSERT [dbo].[NgachVienChuc] ON 

INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (1, N'Giảng viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (2, N'Giảng viên chính')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (3, N'Giảng viên cao cấp')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (4, N'Giáo viên trung học')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (5, N'Chuyên viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (6, N'Chuyên viên chính')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (7, N'Thư viện viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (8, N'Kỹ thuật viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (9, N'Kỹ thuật viên cao cấp')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (10, N'Nghiên cứu viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (11, N'Kế toán viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (12, N'Kỹ thuật viên chính')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (13, N'Nhân viên văn thư')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (14, N'Cán sự')
SET IDENTITY_INSERT [dbo].[NgachVienChuc] OFF
SET IDENTITY_INSERT [dbo].[NganhDaoTao] ON 

INSERT [dbo].[NganhDaoTao] ([MaNganhDaoTao], [TenNganhDaoTao]) VALUES (1, N'Công Nghệ Thông Tin')
INSERT [dbo].[NganhDaoTao] ([MaNganhDaoTao], [TenNganhDaoTao]) VALUES (2, N'Hóa')
INSERT [dbo].[NganhDaoTao] ([MaNganhDaoTao], [TenNganhDaoTao]) VALUES (3, N'Sinh')
INSERT [dbo].[NganhDaoTao] ([MaNganhDaoTao], [TenNganhDaoTao]) VALUES (4, N'Toán')
SET IDENTITY_INSERT [dbo].[NganhDaoTao] OFF
INSERT [dbo].[NgoaiNguNKH] ([MaNKH], [MaTrinhDoNN]) VALUES (1, 8)
INSERT [dbo].[NgoaiNguNKH] ([MaNKH], [MaTrinhDoNN]) VALUES (1, 10)
INSERT [dbo].[NgoaiNguNKH] ([MaNKH], [MaTrinhDoNN]) VALUES (2, 2)
INSERT [dbo].[NgoaiNguNKH] ([MaNKH], [MaTrinhDoNN]) VALUES (2, 7)
INSERT [dbo].[NgoaiNguNKH] ([MaNKH], [MaTrinhDoNN]) VALUES (3, 4)
INSERT [dbo].[NgoaiNguNKH] ([MaNKH], [MaTrinhDoNN]) VALUES (3, 9)
INSERT [dbo].[NgoaiNguNKH] ([MaNKH], [MaTrinhDoNN]) VALUES (3, 12)
INSERT [dbo].[NguoiDung] ([Usernames], [Passwords], [MaNKH], [MaChucNang]) VALUES (N'admin', N'e10adc3949ba59abbe56e057f20f883e', 1, 1)
INSERT [dbo].[NguoiDung] ([Usernames], [Passwords], [MaNKH], [MaChucNang]) VALUES (N'user1', N'e10adc3949ba59abbe56e057f20f883e', 2, 2)
INSERT [dbo].[NguoiDung] ([Usernames], [Passwords], [MaNKH], [MaChucNang]) VALUES (N'user2', N'e10adc3949ba59abbe56e057f20f883e', 3, 2)
SET IDENTITY_INSERT [dbo].[NhaKhoaHoc] ON 

INSERT [dbo].[NhaKhoaHoc] ([MaNKH], [MaNKHHoSo], [HoNKH], [TenNKH], [GioiTinhNKH], [NgaySinh], [DiaChiLienHe], [DienThoai], [EmailLienHe], [MaHocHam], [MaHocVi], [MaCNDaoTao], [MaDonViQL], [AnhDaiDien], [AnhCaNhan], [MaNgachVienChuc]) VALUES (1, N'400000.0067', N'Đặng Thị Thuận', N'An', N'Nữ', CAST(0x0000654C00000000 AS DateTime), N'10 B Kiệt 25 Hai Bà Trưng, Thành phố Huế, Thừa Thiên Huế , Thừa Thiên Huế .', N'0913465444', N'dangthithuanan@yahoo.com', 1, 2, 1, 1, N'image5.png', NULL, 1)
INSERT [dbo].[NhaKhoaHoc] ([MaNKH], [MaNKHHoSo], [HoNKH], [TenNKH], [GioiTinhNKH], [NgaySinh], [DiaChiLienHe], [DienThoai], [EmailLienHe], [MaHocHam], [MaHocVi], [MaCNDaoTao], [MaDonViQL], [AnhDaiDien], [AnhCaNhan], [MaNgachVienChuc]) VALUES (2, N'600000.0450', N'Phạm Thị Hải', N'Yến', N'Nữ', CAST(0x00007C2000000000 AS DateTime), N'56 Trần Nhật Duật, Thành phố Huế, Thừa Thiên Huế .', NULL, N'phamhaiyen9408@gmail.com', NULL, 1, 3, 1, N'image10.jpg', NULL, 3)
INSERT [dbo].[NhaKhoaHoc] ([MaNKH], [MaNKHHoSo], [HoNKH], [TenNKH], [GioiTinhNKH], [NgaySinh], [DiaChiLienHe], [DienThoai], [EmailLienHe], [MaHocHam], [MaHocVi], [MaCNDaoTao], [MaDonViQL], [AnhDaiDien], [AnhCaNhan], [MaNgachVienChuc]) VALUES (3, N'100723.0018', N'Kim Hoàng', N'Lộc', N'Nam', CAST(0x0000818E00000000 AS DateTime), NULL, N'0912023782; 023457899134', N'k@gmail.com; test@gmail.com', NULL, NULL, 4, 1, N'image23.png', NULL, 2)
SET IDENTITY_INSERT [dbo].[NhaKhoaHoc] OFF
SET IDENTITY_INSERT [dbo].[NhaXuatBan] ON 

INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChiNXB], [DienThoaiNXB], [DiaChiWeb]) VALUES (1, N'NXB ĐH Sư Phạm TpHCM', N'280 ADV P4 Q5', NULL, NULL)
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChiNXB], [DienThoaiNXB], [DiaChiWeb]) VALUES (2, N'NXB Kim Đồng', N'Cống Quỳnh, Q1', NULL, NULL)
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChiNXB], [DienThoaiNXB], [DiaChiWeb]) VALUES (3, N'NXB Hoa Học Trò', N'Phạm Ngũ Lão, Q1', NULL, NULL)
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChiNXB], [DienThoaiNXB], [DiaChiWeb]) VALUES (4, N'NXB Thanh Niên', N'Cách Mạng Tháng 8, Q3', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NhaXuatBan] OFF
SET IDENTITY_INSERT [dbo].[NhomLinhVuc] ON 

INSERT [dbo].[NhomLinhVuc] ([MaNhomLinhVuc], [TenNhomLinhVuc]) VALUES (1, N'KHOA HỌC TỰ NHIÊN')
INSERT [dbo].[NhomLinhVuc] ([MaNhomLinhVuc], [TenNhomLinhVuc]) VALUES (2, N'KHOA HỌC XÃ HỘI')
INSERT [dbo].[NhomLinhVuc] ([MaNhomLinhVuc], [TenNhomLinhVuc]) VALUES (3, N'KHOA HỌC NHÂN VĂN')
INSERT [dbo].[NhomLinhVuc] ([MaNhomLinhVuc], [TenNhomLinhVuc]) VALUES (4, N'KHOA HỌC KỸ THUẬT VÀ CÔNG NGHỆ')
INSERT [dbo].[NhomLinhVuc] ([MaNhomLinhVuc], [TenNhomLinhVuc]) VALUES (5, N'KHOA HỌC NÔNG NGHIỆP')
SET IDENTITY_INSERT [dbo].[NhomLinhVuc] OFF
SET IDENTITY_INSERT [dbo].[PhanLoaiSach] ON 

INSERT [dbo].[PhanLoaiSach] ([MaLoai], [TenLoai]) VALUES (1, N'Sách chuyên khảo')
INSERT [dbo].[PhanLoaiSach] ([MaLoai], [TenLoai]) VALUES (2, N'Giáo trình')
INSERT [dbo].[PhanLoaiSach] ([MaLoai], [TenLoai]) VALUES (3, N'Sách tham khảo')
INSERT [dbo].[PhanLoaiSach] ([MaLoai], [TenLoai]) VALUES (4, N'Loại khác')
SET IDENTITY_INSERT [dbo].[PhanLoaiSach] OFF
SET IDENTITY_INSERT [dbo].[PhanLoaiSP] ON 

INSERT [dbo].[PhanLoaiSP] ([MaPhanLoai], [TenPhanLoai]) VALUES (1, N'Mẫu')
INSERT [dbo].[PhanLoaiSP] ([MaPhanLoai], [TenPhanLoai]) VALUES (2, N'Chương trình máy tính')
INSERT [dbo].[PhanLoaiSP] ([MaPhanLoai], [TenPhanLoai]) VALUES (3, N'Phưng pháp')
SET IDENTITY_INSERT [dbo].[PhanLoaiSP] OFF
SET IDENTITY_INSERT [dbo].[PhanLoaiTapChi] ON 

INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (1, N'Tạp chí')
INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (2, N'Báo cáo khoa học')
INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (3, N'Thông báo khoa học')
INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (4, N'Tập san')
INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (5, N'Thông tin khoa học')
INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (6, N'Kỷ yếu Hội nghị/Hội thảo')
SET IDENTITY_INSERT [dbo].[PhanLoaiTapChi] OFF
SET IDENTITY_INSERT [dbo].[QuaTrinhCongTac] ON 

INSERT [dbo].[QuaTrinhCongTac] ([MaCT], [MaNKH], [ThoiGianBD], [ThoiGIanKT], [ChucDanhCT], [MaDonViQL], [ChucVuCT]) VALUES (1, 1, CAST(0x0000988A00000000 AS DateTime), CAST(0x00009A3500000000 AS DateTime), N'Tổ phó', 1, NULL)
INSERT [dbo].[QuaTrinhCongTac] ([MaCT], [MaNKH], [ThoiGianBD], [ThoiGIanKT], [ChucDanhCT], [MaDonViQL], [ChucVuCT]) VALUES (2, 1, CAST(0x00009A5200000000 AS DateTime), CAST(0x0000A9DD00000000 AS DateTime), N'Tổ trường', 1, NULL)
INSERT [dbo].[QuaTrinhCongTac] ([MaCT], [MaNKH], [ThoiGianBD], [ThoiGIanKT], [ChucDanhCT], [MaDonViQL], [ChucVuCT]) VALUES (3, 2, CAST(0x00009BBF00000000 AS DateTime), CAST(0x00009D2C00000000 AS DateTime), N'Bí thư', 1, NULL)
SET IDENTITY_INSERT [dbo].[QuaTrinhCongTac] OFF
SET IDENTITY_INSERT [dbo].[QuaTrinhDaoTao] ON 

INSERT [dbo].[QuaTrinhDaoTao] ([MaQT], [MaNKH], [ThoiGianBD], [ThoiGianKT], [MaBacDT], [CoSoDaoTao], [MaNganh], [NamTotNghiep]) VALUES (1, 1, CAST(0x0000813D00000000 AS DateTime), CAST(0x0000858500000000 AS DateTime), 1, NULL, 1, CAST(0x0000858500000000 AS DateTime))
INSERT [dbo].[QuaTrinhDaoTao] ([MaQT], [MaNKH], [ThoiGianBD], [ThoiGianKT], [MaBacDT], [CoSoDaoTao], [MaNganh], [NamTotNghiep]) VALUES (2, 1, CAST(0x000085C100000000 AS DateTime), CAST(0x0000887D00000000 AS DateTime), 2, NULL, 1, CAST(0x000088D800000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[QuaTrinhDaoTao] OFF
SET IDENTITY_INSERT [dbo].[TinhTrangDeTai] ON 

INSERT [dbo].[TinhTrangDeTai] ([MaTinhTrang], [TenTinhTrang]) VALUES (1, N'Đã hoàn thành')
INSERT [dbo].[TinhTrangDeTai] ([MaTinhTrang], [TenTinhTrang]) VALUES (2, N'Đang thực hiện')
SET IDENTITY_INSERT [dbo].[TinhTrangDeTai] OFF
SET IDENTITY_INSERT [dbo].[TrinhDoNgoaiNgu] ON 

INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (1, N'Anh Văn B1', N'Khung 6 bậc')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (2, N'Anh Văn B2', N'Khung 6 bậc')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (3, N'Anh Văn Toeic', N'Toeic')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (4, N'Anh Văn Giao tiếp cơ bản', N'Cơ bản')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (5, N'Tiếng Nhật N1', N'N1')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (6, N'Tiếng Nhật N2', N'N2')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (7, N'Tiếng Nhật N3', N'N3')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (8, N'Tiếng Nhật N4', N'N4')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (9, N'Tiếng Nhật N5', N'N5')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (10, N'Tiếng Pháp', NULL)
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (11, N'Tiếng Đức', NULL)
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (12, N'Tiếng Trung', NULL)
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (13, N'Tiếng Nga', NULL)
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (14, N'Tiếng Hàn', NULL)
SET IDENTITY_INSERT [dbo].[TrinhDoNgoaiNgu] OFF
SET IDENTITY_INSERT [dbo].[XepLoai] ON 

INSERT [dbo].[XepLoai] ([MaXepLoai], [TenXepLoai]) VALUES (1, N'Chưa xếp loại')
INSERT [dbo].[XepLoai] ([MaXepLoai], [TenXepLoai]) VALUES (2, N'Không đạt')
INSERT [dbo].[XepLoai] ([MaXepLoai], [TenXepLoai]) VALUES (3, N'Trung bình')
INSERT [dbo].[XepLoai] ([MaXepLoai], [TenXepLoai]) VALUES (4, N'Khá')
INSERT [dbo].[XepLoai] ([MaXepLoai], [TenXepLoai]) VALUES (5, N'Tốt')
SET IDENTITY_INSERT [dbo].[XepLoai] OFF
ALTER TABLE [dbo].[BaiBao]  WITH CHECK ADD  CONSTRAINT [FK_BaiBao_CapTapChi] FOREIGN KEY([MaCapTapChi])
REFERENCES [dbo].[CapTapChi] ([MaCapTapChi])
GO
ALTER TABLE [dbo].[BaiBao] CHECK CONSTRAINT [FK_BaiBao_CapTapChi]
GO
ALTER TABLE [dbo].[BaiBao]  WITH CHECK ADD  CONSTRAINT [FK_BaiBao_PhanLoaiTapChi] FOREIGN KEY([MaLoaiTapChi])
REFERENCES [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi])
GO
ALTER TABLE [dbo].[BaiBao] CHECK CONSTRAINT [FK_BaiBao_PhanLoaiTapChi]
GO
ALTER TABLE [dbo].[ChuyenMonNKH]  WITH CHECK ADD  CONSTRAINT [ChuyenMonNKH_fk0] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[ChuyenMonNKH] CHECK CONSTRAINT [ChuyenMonNKH_fk0]
GO
ALTER TABLE [dbo].[ChuyenMonNKH]  WITH CHECK ADD  CONSTRAINT [ChuyenMonNKH_fk1] FOREIGN KEY([MaChuyenMon])
REFERENCES [dbo].[ChuyenMon] ([MaChuyenMon])
GO
ALTER TABLE [dbo].[ChuyenMonNKH] CHECK CONSTRAINT [ChuyenMonNKH_fk1]
GO
ALTER TABLE [dbo].[ChuyenNganh]  WITH CHECK ADD  CONSTRAINT [ChuyenNganh_fk0] FOREIGN KEY([MaNganhDaoTao])
REFERENCES [dbo].[NganhDaoTao] ([MaNganhDaoTao])
GO
ALTER TABLE [dbo].[ChuyenNganh] CHECK CONSTRAINT [ChuyenNganh_fk0]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk0] FOREIGN KEY([MaLoaiDeTai])
REFERENCES [dbo].[LoaiHinhDeTai] ([MaLoaiDT])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [DeTai_fk0]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk1] FOREIGN KEY([MaCapDeTai])
REFERENCES [dbo].[CapDeTai] ([MaCapDeTai])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [DeTai_fk1]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk2] FOREIGN KEY([MaDVChuTri])
REFERENCES [dbo].[DonViChuTri] ([MaDVChuTri])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [DeTai_fk2]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk3] FOREIGN KEY([MaDonViQLThucHien])
REFERENCES [dbo].[DonViQL] ([MaDonVi])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [DeTai_fk3]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk4] FOREIGN KEY([MaLinhVuc])
REFERENCES [dbo].[LinhVuc] ([MaLinhVuc])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [DeTai_fk4]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk5] FOREIGN KEY([MaXepLoai])
REFERENCES [dbo].[XepLoai] ([MaXepLoai])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [DeTai_fk5]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk6] FOREIGN KEY([MaTinhTrang])
REFERENCES [dbo].[TinhTrangDeTai] ([MaTinhTrang])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [DeTai_fk6]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk7] FOREIGN KEY([MaPhanLoaiSP])
REFERENCES [dbo].[PhanLoaiSP] ([MaPhanLoai])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [DeTai_fk7]
GO
ALTER TABLE [dbo].[DSBaiBaoDeTai]  WITH CHECK ADD  CONSTRAINT [DSBaiBaoDeTai_fk0] FOREIGN KEY([MaDeTai])
REFERENCES [dbo].[DeTai] ([MaDeTai])
GO
ALTER TABLE [dbo].[DSBaiBaoDeTai] CHECK CONSTRAINT [DSBaiBaoDeTai_fk0]
GO
ALTER TABLE [dbo].[DSBaiBaoDeTai]  WITH CHECK ADD  CONSTRAINT [DSBaiBaoDeTai_fk1] FOREIGN KEY([MaBaiBao])
REFERENCES [dbo].[BaiBao] ([MaBaiBao])
GO
ALTER TABLE [dbo].[DSBaiBaoDeTai] CHECK CONSTRAINT [DSBaiBaoDeTai_fk1]
GO
ALTER TABLE [dbo].[DSNguoiThamGiaBaiBao]  WITH CHECK ADD  CONSTRAINT [DSNguoiThamGiaBaiBao_fk0] FOREIGN KEY([MaBaiBao])
REFERENCES [dbo].[BaiBao] ([MaBaiBao])
GO
ALTER TABLE [dbo].[DSNguoiThamGiaBaiBao] CHECK CONSTRAINT [DSNguoiThamGiaBaiBao_fk0]
GO
ALTER TABLE [dbo].[DSNguoiThamGiaBaiBao]  WITH CHECK ADD  CONSTRAINT [DSNguoiThamGiaBaiBao_fk1] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[DSNguoiThamGiaBaiBao] CHECK CONSTRAINT [DSNguoiThamGiaBaiBao_fk1]
GO
ALTER TABLE [dbo].[DSNguoiThamGiaDeTai]  WITH CHECK ADD  CONSTRAINT [DSNguoiThamGiaDeTai_fk0] FOREIGN KEY([MaDeTai])
REFERENCES [dbo].[DeTai] ([MaDeTai])
GO
ALTER TABLE [dbo].[DSNguoiThamGiaDeTai] CHECK CONSTRAINT [DSNguoiThamGiaDeTai_fk0]
GO
ALTER TABLE [dbo].[DSNguoiThamGiaDeTai]  WITH CHECK ADD  CONSTRAINT [DSNguoiThamGiaDeTai_fk1] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[DSNguoiThamGiaDeTai] CHECK CONSTRAINT [DSNguoiThamGiaDeTai_fk1]
GO
ALTER TABLE [dbo].[DSTacGia]  WITH CHECK ADD  CONSTRAINT [FK_DSTacGia_NhaKhoaHoc] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[DSTacGia] CHECK CONSTRAINT [FK_DSTacGia_NhaKhoaHoc]
GO
ALTER TABLE [dbo].[DSTacGia]  WITH CHECK ADD  CONSTRAINT [FK_DSTacGia_SachGiaoTrinh] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SachGiaoTrinh] ([MaSach])
GO
ALTER TABLE [dbo].[DSTacGia] CHECK CONSTRAINT [FK_DSTacGia_SachGiaoTrinh]
GO
ALTER TABLE [dbo].[KinhPhiDeTai]  WITH CHECK ADD  CONSTRAINT [FK_KinhPhiDeTai_DeTai] FOREIGN KEY([MaDeTai])
REFERENCES [dbo].[DeTai] ([MaDeTai])
GO
ALTER TABLE [dbo].[KinhPhiDeTai] CHECK CONSTRAINT [FK_KinhPhiDeTai_DeTai]
GO
ALTER TABLE [dbo].[LinhVuc]  WITH CHECK ADD  CONSTRAINT [LinhVuc_fk0] FOREIGN KEY([MaNhomLinhVuc])
REFERENCES [dbo].[NhomLinhVuc] ([MaNhomLinhVuc])
GO
ALTER TABLE [dbo].[LinhVuc] CHECK CONSTRAINT [LinhVuc_fk0]
GO
ALTER TABLE [dbo].[LinhVucBaiBao]  WITH CHECK ADD  CONSTRAINT [LinhVucBaiBao_fk0] FOREIGN KEY([MaBaiBao])
REFERENCES [dbo].[BaiBao] ([MaBaiBao])
GO
ALTER TABLE [dbo].[LinhVucBaiBao] CHECK CONSTRAINT [LinhVucBaiBao_fk0]
GO
ALTER TABLE [dbo].[LinhVucBaiBao]  WITH CHECK ADD  CONSTRAINT [LinhVucBaiBao_fk1] FOREIGN KEY([MaLinhVuc])
REFERENCES [dbo].[LinhVuc] ([MaLinhVuc])
GO
ALTER TABLE [dbo].[LinhVucBaiBao] CHECK CONSTRAINT [LinhVucBaiBao_fk1]
GO
ALTER TABLE [dbo].[LinhVucNghienCuuNKH]  WITH CHECK ADD  CONSTRAINT [LinhVucNghienCuuNKH_fk0] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[LinhVucNghienCuuNKH] CHECK CONSTRAINT [LinhVucNghienCuuNKH_fk0]
GO
ALTER TABLE [dbo].[LinhVucNghienCuuNKH]  WITH CHECK ADD  CONSTRAINT [LinhVucNghienCuuNKH_fk1] FOREIGN KEY([MaLinhVuc])
REFERENCES [dbo].[LinhVuc] ([MaLinhVuc])
GO
ALTER TABLE [dbo].[LinhVucNghienCuuNKH] CHECK CONSTRAINT [LinhVucNghienCuuNKH_fk1]
GO
ALTER TABLE [dbo].[NgoaiNguNKH]  WITH CHECK ADD  CONSTRAINT [NgoaiNguNKH_fk0] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[NgoaiNguNKH] CHECK CONSTRAINT [NgoaiNguNKH_fk0]
GO
ALTER TABLE [dbo].[NgoaiNguNKH]  WITH CHECK ADD  CONSTRAINT [NgoaiNguNKH_fk1] FOREIGN KEY([MaTrinhDoNN])
REFERENCES [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN])
GO
ALTER TABLE [dbo].[NgoaiNguNKH] CHECK CONSTRAINT [NgoaiNguNKH_fk1]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_ChucNang] FOREIGN KEY([MaChucNang])
REFERENCES [dbo].[ChucNang] ([MaChucNang])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_ChucNang]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_NKH] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_NKH]
GO
ALTER TABLE [dbo].[NhaKhoaHoc]  WITH CHECK ADD  CONSTRAINT [NhaKhoaHoc_fk0] FOREIGN KEY([MaHocHam])
REFERENCES [dbo].[HocHam] ([MaHocHam])
GO
ALTER TABLE [dbo].[NhaKhoaHoc] CHECK CONSTRAINT [NhaKhoaHoc_fk0]
GO
ALTER TABLE [dbo].[NhaKhoaHoc]  WITH CHECK ADD  CONSTRAINT [NhaKhoaHoc_fk1] FOREIGN KEY([MaHocVi])
REFERENCES [dbo].[HocVi] ([MaHocVi])
GO
ALTER TABLE [dbo].[NhaKhoaHoc] CHECK CONSTRAINT [NhaKhoaHoc_fk1]
GO
ALTER TABLE [dbo].[NhaKhoaHoc]  WITH CHECK ADD  CONSTRAINT [NhaKhoaHoc_fk2] FOREIGN KEY([MaCNDaoTao])
REFERENCES [dbo].[ChuyenNganh] ([MaChuyenNganh])
GO
ALTER TABLE [dbo].[NhaKhoaHoc] CHECK CONSTRAINT [NhaKhoaHoc_fk2]
GO
ALTER TABLE [dbo].[NhaKhoaHoc]  WITH CHECK ADD  CONSTRAINT [NhaKhoaHoc_fk3] FOREIGN KEY([MaDonViQL])
REFERENCES [dbo].[DonViQL] ([MaDonVi])
GO
ALTER TABLE [dbo].[NhaKhoaHoc] CHECK CONSTRAINT [NhaKhoaHoc_fk3]
GO
ALTER TABLE [dbo].[NhaKhoaHoc]  WITH CHECK ADD  CONSTRAINT [NhaKhoaHoc_fk4] FOREIGN KEY([MaNgachVienChuc])
REFERENCES [dbo].[NgachVienChuc] ([MaNgach])
GO
ALTER TABLE [dbo].[NhaKhoaHoc] CHECK CONSTRAINT [NhaKhoaHoc_fk4]
GO
ALTER TABLE [dbo].[QuaTrinhCongTac]  WITH CHECK ADD  CONSTRAINT [QuaTrinhCongTac_fk0] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[QuaTrinhCongTac] CHECK CONSTRAINT [QuaTrinhCongTac_fk0]
GO
ALTER TABLE [dbo].[QuaTrinhCongTac]  WITH CHECK ADD  CONSTRAINT [QuaTrinhCongTac_fk1] FOREIGN KEY([MaDonViQL])
REFERENCES [dbo].[DonViQL] ([MaDonVi])
GO
ALTER TABLE [dbo].[QuaTrinhCongTac] CHECK CONSTRAINT [QuaTrinhCongTac_fk1]
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [QuaTrinhDaoTao_fk0] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [QuaTrinhDaoTao_fk0]
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [QuaTrinhDaoTao_fk1] FOREIGN KEY([MaBacDT])
REFERENCES [dbo].[BacDaoTao] ([MaBacDT])
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [QuaTrinhDaoTao_fk1]
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [QuaTrinhDaoTao_fk2] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[NganhDaoTao] ([MaNganhDaoTao])
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [QuaTrinhDaoTao_fk2]
GO
ALTER TABLE [dbo].[SachGiaoTrinh]  WITH CHECK ADD  CONSTRAINT [FK_SachGiaoTrinh_NhaXuatBan] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NhaXuatBan] ([MaNXB])
GO
ALTER TABLE [dbo].[SachGiaoTrinh] CHECK CONSTRAINT [FK_SachGiaoTrinh_NhaXuatBan]
GO
ALTER TABLE [dbo].[SachGiaoTrinh]  WITH CHECK ADD  CONSTRAINT [SachGiaoTrinh_fk0] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[PhanLoaiSach] ([MaLoai])
GO
ALTER TABLE [dbo].[SachGiaoTrinh] CHECK CONSTRAINT [SachGiaoTrinh_fk0]
GO
ALTER TABLE [dbo].[SachGiaoTrinh]  WITH CHECK ADD  CONSTRAINT [SachGiaoTrinh_fk1] FOREIGN KEY([MaLinhVuc])
REFERENCES [dbo].[LinhVuc] ([MaLinhVuc])
GO
ALTER TABLE [dbo].[SachGiaoTrinh] CHECK CONSTRAINT [SachGiaoTrinh_fk1]
GO
USE [master]
GO
ALTER DATABASE [QLKhoaHoc] SET  READ_WRITE 
GO
