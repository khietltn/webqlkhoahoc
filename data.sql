USE [master]
GO
/****** Object:  Database [QLKhoaHoc]    Script Date: 2/20/2019 8:38:03 PM ******/
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
/****** Object:  Table [dbo].[BacDaoTao]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[BaiBao]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[CapDeTai]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[CapTapChi]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[ChucNang]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[ChuyenMon]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[ChuyenMonNKH]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[ChuyenNganh]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[DeTai]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[DonViChuTri]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[DonViQL]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[DSBaiBaoDeTai]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[DSNguoiThamGiaBaiBao]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[DSNguoiThamGiaDeTai]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[DSTacGia]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[HocHam]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[HocVi]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[KinhPhiDeTai]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[LinhVuc]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[LinhVucBaiBao]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[LinhVucNghienCuuNKH]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[LoaiHinhDeTai]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[NgachVienChuc]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[NganhDaoTao]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[NgoaiNguNKH]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[NhaKhoaHoc]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[NhomLinhVuc]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[PhanLoaiSach]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[PhanLoaiSP]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[PhanLoaiTapChi]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[QuaTrinhCongTac]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[QuaTrinhDaoTao]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[SachGiaoTrinh]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[TinhTrangDeTai]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[TrinhDoNgoaiNgu]    Script Date: 2/20/2019 8:38:04 PM ******/
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
/****** Object:  Table [dbo].[XepLoai]    Script Date: 2/20/2019 8:38:04 PM ******/
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
